unit untCompra;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, untCadPrincipal, Vcl.Buttons, Vcl.Grids,
  Vcl.DBGrids, Vcl.Mask, Vcl.StdCtrls, Vcl.DBCtrls, Data.DB;

type
  TfrmCompra = class(TfrmCadPrincipal)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label3: TLabel;
    btnLocalizarCli: TSpeedButton;
    Label6: TLabel;
    Label12: TLabel;
    edtIdCompra: TEdit;
    dblForn: TDBLookupComboBox;
    edtRepresentante: TEdit;
    edtCnpj: TMaskEdit;
    GroupBox2: TGroupBox;
    btnAdicionar: TSpeedButton;
    btnRemover: TSpeedButton;
    Label7: TLabel;
    Label8: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    edtPesquisarProd: TSpeedButton;
    Label2: TLabel;
    Label13: TLabel;
    DBGrid1: TDBGrid;
    edtTotal: TEdit;
    dblProduto: TDBLookupComboBox;
    edtQtdade: TEdit;
    edtPreco: TEdit;
    edtDataCompra: TMaskEdit;
    edtCodBarra: TMaskEdit;
    dsFornecedor: TDataSource;
    dsItemCompra: TDataSource;
    Label5: TLabel;
    rdbVista: TRadioButton;
    Label15: TLabel;
    rdbParcelado: TRadioButton;
    Label14: TLabel;
    cboFormPag: TComboBox;
    edtDesconto: TEdit;
    Label18: TLabel;
    dsProduto: TDataSource;
    Label4: TLabel;
    cboSituacao: TComboBox;
    procedure FormShow(Sender: TObject);
    procedure dblProdutoClick(Sender: TObject);
    procedure edtPrecoKeyPress(Sender: TObject; var Key: Char);
    procedure btnLocalizarCliClick(Sender: TObject);
    procedure edtPesquisarProdClick(Sender: TObject);
    procedure dblFornClick(Sender: TObject);
    procedure btnAdicionarClick(Sender: TObject);
    procedure btnConfirmClick(Sender: TObject);
    procedure btnRemoverClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure edtCnpjExit(Sender: TObject);
    procedure edtCodBarraExit(Sender: TObject);
  private
  procedure calculaTotal;
    { Private declarations }
  public
    op:byte;
    { Public declarations }
  end;

var
  frmCompra: TfrmCompra;

implementation

{$R *.dfm}

uses untListagemFornecedor, untDm, untListagemProduto, untListagemCompra,
  untCondPagamento;

procedure TfrmCompra.btnAdicionarClick(Sender: TObject);
begin
  inherited;
  if dm.cdsItemCompra.Locate('descricao', dblProduto.Text,[]) then
    begin
    MessageDlg('PRODUTO já inserido! Favor incluir outro ou deletar o item inserido!', mtError,[mbOk],0);
    dblProduto.SetFocus;
    exit;
  end;
  if Trim(dblProduto.Text)= '' then
  begin
    MessageDlg('Campo PRODUTO Obrigatório!', mtError,[mbOk],0);
    dblProduto.SetFocus;
    exit;
  end;
  if Trim (edtCodBarra.Text)= '' then
  begin
    MessageDlg('Campo Cód Barra Obrigatório!', mtError,[mbOk],0);
    edtCodBarra.SetFocus;
    exit;
  end;
  if Trim(edtQtdade.Text) = '' then
  begin
    MessageDlg('Campo QTDE Obrigatório!', mtError,[mbOk],0);
    edtQtdade.SetFocus;
    exit;
  end;
  if Trim(edtPreco.Text) = '' then
  begin
    MessageDlg('Campo PREÇO Obrigatório!', mtError,[mbOk],0);
    edtPreco.SetFocus;
    exit;
  end;

  dm.sdsComandoSql.CommandText:='insert into item_compra values(:id_compra, :idProduto, :qtdade, :preco_compra, :subTotal)';
  dm.sdsComandoSql.ParamByName('id_compra').Text := edtIdCompra.Text;
  dm.sdsComandoSql.ParamByName('idProduto').AsInteger := dblProduto.KeyValue;
  dm.sdsComandoSql.ParamByName('qtdade').Text := edtQtdade.Text;
  dm.sdsComandoSql.ParamByName('preco_compra').Text := edtPreco.Text;
  dm.sdsComandoSql.ParamByName('subTotal').AsFloat := StrToFloat(edtQtdade.Text) * StrToFloat(edtPreco.Text);
  dm.sdsComandoSql.ExecSQL();
  dm.cdsItemCompra.Close;
  dm.cdsItemCompra.Open;
  calculaTotal;

  dblProduto.KeyValue:= -1;
  edtQtdade.Clear;
  edtPreco.Clear;

end;

procedure TfrmCompra.btnCancelarClick(Sender: TObject);
begin
  inherited;
  dm.banco.Rollback(dm.transacao);
end;

procedure TfrmCompra.btnConfirmClick(Sender: TObject);
begin
  inherited;
  if (Trim(edtCnpj.Text) = '') then
  begin
    MessageDlg('Campo CNPJ Obrigatório!', mtError,[mbOk],0);
    edtCnpj.SetFocus;
    exit;
  end;
  if Trim(dblForn.Text)= '' then
  begin
    MessageDlg('Campo FORNECEDOR Obrigatório!', mtError,[mbOk],0);
    dblForn.SetFocus;
    exit;
  end;
  if Trim(edtRepresentante.Text)= '' then
  begin
    MessageDlg('Campo Representante Obrigatório!', mtError,[mbOk],0);
    edtRepresentante.SetFocus;
    exit;
  end;

  if (Trim(cboFormPag.Text)= '') then
  begin
    MessageDlg('Campo Forma Pagamento Obrigatório!', mtError,[mbOk],0);
    cboFormPag.SetFocus;
    exit;
  end;
  if (dm.cdsItemCompra.RecordCount = 0) then
  begin
    MessageDlg('Item(s) de Compra não encontrado! Favor Incluir Item(s).', mtError,[mbOk],0);
    dblProduto.SetFocus;
    exit;
  end;
  if (frmListagemCompra.op = 1) then
  begin
    edtTotal.Text:= FloatToStr(StrToFloat(edtTotal.Text) - StrToFloat(edtDesconto.Text));

    dm.sdsComandoSql.CommandText := 'insert into compra values(seqCompra.currval, :idFornecedor, :data_compra, :forma_pag, :valorTotal,  :desconto, :tipo_pag, :situacao)';
    dm.sdsComandoSql.ParamByName('idFornecedor').AsInteger :=  dblForn.KeyValue;
    dm.sdsComandoSql.ParamByName('data_Compra').Text := edtDataCompra.text;
    dm.sdsComandoSql.ParamByName('forma_pag').Text:= cboFormPag.Text;
    dm.sdsComandoSql.ParamByName('Valortotal').Text := edtTotal.Text;
    dm.sdsComandoSql.ParamByName('desconto').Text := edtDesconto.Text;
    if rdbVista.Checked = true then
    begin
      dm.sdsComandoSql.ParamByName('tipo_pag').AsString:='V';
    end
    else begin
      dm.sdsComandoSql.ParamByName('tipo_pag').AsString:='P';
    end;
    dm.sdsComandoSql.ParamByName('situacao').Text := cboSituacao.Text;
    dm.sdsComandoSql.ExecSQL();
    dm.cdsCompra.Close;
    dm.cdsCompra.Open;

    // lançamento
    if(rdbParcelado.Checked = true) then
    begin
        op:= 1;
        frmCondPagamento.ShowModal;
    end
    else begin
    dm.sdsComandoSql.CommandText:= 'insert into lancamento (id_, id_compra, tipo_lanc, valor, forma_pagamento, qtde_parc, data_lanc)'+
    'values (seqLancamento.nextval, :id_compra, :tipo_lanc, :valor, :forma_pagamento, :qtde_parc, :data_lanc)';
    dm.sdsComandoSql.ParamByName('id_compra').Text := edtIdCompra.Text;
    if rdbVista.Checked = true then
    begin
      dm.sdsComandoSql.ParamByName('tipo_lanc').AsString :='a Vista';
    end
    else begin
      dm.sdsComandoSql.ParamByName('tipo_lanc').AsString:='Parcelado';
    end;
    dm.sdsComandoSql.ParamByName('valor').Text := edtTotal.Text;
    dm.sdsComandoSql.ParamByName('forma_pagamento').Text := cboFormPag.Text;
    if rdbVista.Checked = true then
    begin
      dm.sdsComandoSql.ParamByName('qtde_parc').AsInteger := 1;
    end;
    dm.sdsComandoSql.ParamByName('data_lanc').Text := edtDataCompra.Text;
    dm.sdsComandoSql.ExecSQL();
    dm.cdsLancamento.Close;
    dm.cdsLancamento.Open;

    dm.banco.Commit(dm.transacao);
    Close;
    end;
    end;
  end;

procedure TfrmCompra.btnLocalizarCliClick(Sender: TObject);
begin
  inherited;
  frmListagemFornecedor.op := 3;
  frmListagemFornecedor.ShowModal;
  dm.cdsFornecedor.Open;
  dm.cdsCidade.Open;
end;

procedure TfrmCompra.btnRemoverClick(Sender: TObject);
begin
  inherited;
  with dm.sdsComandoSql do
  begin
    CommandText:='delete from item_compra where id_compra = :id_compra and idProduto = :idProduto';
    ParamByName('id_compra').Text := dm.cdsItemCompra.FieldByName('id_compra').Text;
    ParamByName('idProduto').Text := dm.cdsItemCompra.FieldByName('idProduto').Text;
    ExecSQL();
  end;
  dm.cdsItemCompra.Close;
  dm.cdsItemCompra.Open;
  calculaTotal;
end;

procedure TfrmCompra.calculaTotal;
var totalGeral: extended;
begin
totalGeral := 0;
dm.cdsItemCompra.First;
while not(dm.cdsItemCompra.Eof)//End of file
do begin
totalGeral := totalGeral + dm.cdsItemCompra.FieldByName('subTotal').AsFloat;
dm.cdsItemCompra.Next; //condição de parada
end;
edtTotal.Text := floattoStr(totalGeral);
end;

procedure TfrmCompra.dblFornClick(Sender: TObject);
begin
  inherited;
  edtCnpj.Text := dm.cdsFornecedor.FieldByName('Cnpj').Text;
  edtRepresentante.Text := dm.cdsFornecedor.FieldByName('repres').Text;
end;

procedure TfrmCompra.dblProdutoClick(Sender: TObject);
begin
  inherited;
  edtCodBarra.Text := dm.cdsProduto.FieldByName('codBarra').Text;
end;

procedure TfrmCompra.edtCnpjExit(Sender: TObject);
begin
  inherited;
  if(dm.cdsFornecedor.Locate('Cnpj',edtCnpj.Text,[])) then
  begin
   dblForn.KeyValue:=dm.cdsFornecedor.FieldByName('idFornecedor').AsInteger;
  end
  else begin
    MessageDlg('CNPJ não encontrado ou não existe! Favor fazer o cadastro do fornecedor.', mtError,[mbOk],0);
    edtCnpj.Clear;
    dblForn.SetFocus;
    exit;
  end;
end;

procedure TfrmCompra.edtCodBarraExit(Sender: TObject);
begin
  inherited;
  if  (edtCodBarra.Text) <> '' then
  begin
  if(dm.cdsProduto.Locate('CodBarra',edtCodBarra.Text,[])) then
  begin
   dblProduto.KeyValue:=dm.cdsProduto.FieldByName('idProduto').AsInteger;
  end
  else begin
    MessageDlg('PRODUTO não encontrado ou não existe! Favor fazer o cadastro do produto.', mtError,[mbOk],0);
    edtCodBarra.Clear;
    dblProduto.SetFocus;
    exit;
  end;
  end;
end;

procedure TfrmCompra.edtPesquisarProdClick(Sender: TObject);
begin
  inherited;
  frmListagemProduto.op := 3;
  frmListagemProduto.ShowModal;
  dm.cdsProduto.Open;
  dm.cdsMarca.Open;
end;

procedure TfrmCompra.edtPrecoKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  If ((not(Key in ['0'..'9',#8])) and (not(key in [',',#8])))then Key := #0;
  If (key in [',']) and (Pos(',',edtPreco.text)<>0) then Key :=#0;
end;

procedure TfrmCompra.FormShow(Sender: TObject);
begin
  inherited;
  if (frmListagemCompra.op = 1) then
  begin
  edtDataCompra.Text:= DateToStr(date);
  edtCnpj.Clear;
  dblForn.KeyValue:=-1;
  edtRepresentante.Clear;
  dblProduto.KeyValue:=-1;
  edtCodBarra.Clear;
  edtQtdade.Clear;
  edtPreco.Clear;
  rdbVista.Checked := true;
  edtDesconto.Clear;
  edtTotal.Text := '0';
  edtDesconto.Text:= '0';
  cboFormPag.ItemIndex := -1;
  rdbVista.Checked := true;


  dm.sdsComandoSql.CommandText := 'select seqCompra.nextval as id_Compra from dual';
  dm.sdsComandoSql.Open;
  edtIdCompra.Text := dm.sdsComandoSql.FieldByName('id_Compra').Text;
  dm.sdsComandoSql.Close;
  dm.sdsItemCompra.CommandText := 'select id_compra, produto.idProduto, produto.descricao, quantidade, preco_compra, subtotal from item_compra inner join produto on item_compra.idProduto = produto.idProduto where id_compra = :id_compra';
  dm.sdsItemCompra.ParamByName('id_compra').Text := edtIdCompra.Text;
  dm.sdsItemCompra.ExecSQL();
  dm.cdsItemCompra.Close;
  dm.cdsItemCompra.Open;
  end;
end;

end.
