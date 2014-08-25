unit untVenda;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils,System.UITypes, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, untCadPrincipal, Vcl.Buttons,
  Vcl.StdCtrls, Data.DB, Vcl.DBCtrls, Vcl.Mask, Vcl.Grids, Vcl.DBGrids;

type
  TfrmVenda = class(TfrmCadPrincipal)
    GroupBox1: TGroupBox;
    dblCliente: TDBLookupComboBox;
    Label3: TLabel;
    btnLocalizarCli: TSpeedButton;
    GroupBox2: TGroupBox;
    btnAdicionar: TSpeedButton;
    btnRemover: TSpeedButton;
    dsCliente: TDataSource;
    DBGrid1: TDBGrid;
    Label5: TLabel;
    Label6: TLabel;
    edtVendedor: TEdit;
    Label7: TLabel;
    edtTotal: TEdit;
    dblProduto: TDBLookupComboBox;
    Label8: TLabel;
    dsProduto: TDataSource;
    edtEstoque: TEdit;
    Label9: TLabel;
    Label10: TLabel;
    edtQtdade: TEdit;
    Label11: TLabel;
    edtPreco: TEdit;
    SpeedButton1: TSpeedButton;
    edtDataVenda: TMaskEdit;
    Label2: TLabel;
    Label12: TLabel;
    edtCpf: TMaskEdit;
    Label13: TLabel;
    cboFormPag: TComboBox;
    Label14: TLabel;
    Label15: TLabel;
    rdbVista: TRadioButton;
    rdbParcelado: TRadioButton;
    edtDesconto: TEdit;
    Label18: TLabel;
    edtIdVenda: TEdit;
    Label1: TLabel;
    dsItemVenda: TDataSource;
    edtCodBarra: TEdit;
    Label4: TLabel;
    cboSituacao: TComboBox;
    procedure FormShow(Sender: TObject);
    procedure btnLocalizarCliClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure btnAdicionarClick(Sender: TObject);
    procedure dblProdutoClick(Sender: TObject);
    procedure dblClienteClick(Sender: TObject);
    procedure btnRemoverClick(Sender: TObject);
    procedure btnConfirmClick(Sender: TObject);
    procedure edtCpfExit(Sender: TObject);
    procedure edtCodBarraExit(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure edtDescontoKeyPress(Sender: TObject; var Key: Char);
    procedure edtCpfEnter(Sender: TObject);
    procedure dblProdutoEnter(Sender: TObject);
  private
     procedure calculaTotal;
    { Private declarations }
  public
  op:byte;
    { Public declarations }
  end;

var
  frmVenda: TfrmVenda;

implementation

{$R *.dfm}

uses untListagemCliente, untListagemProduto, untDm, untListagemVenda,
  untCondPagamento;

procedure TfrmVenda.btnAdicionarClick(Sender: TObject);
begin
  inherited;
  if (StrToInt(edtQtdade.Text)> StrToInt(edtEstoque.Text)) then
  begin
    MessageDlg('A quantidade de itens � maior do que h� no estoque!', mtError,[mbOk],0);
    edtQtdade.SetFocus;
    exit;
  end;
  if dm.cdsItemVenda.Locate('descricao', dblProduto.Text,[]) then
    begin
    MessageDlg('PRODUTO j� inserido! Favor incluir outro ou deletar o item inserido!', mtError,[mbOk],0);
    dblProduto.SetFocus;
    exit;
  end;
  if Trim(dblProduto.Text)= '' then
  begin
    MessageDlg('Campo PRODUTO Obrigat�rio!', mtError,[mbOk],0);
    dblProduto.SetFocus;
    exit;
  end;
  if Trim (edtCodBarra.Text)= '' then
  begin
    MessageDlg('Campo C�d Barra Obrigat�rio!', mtError,[mbOk],0);
    edtCodBarra.SetFocus;
    exit;
  end;
  if Trim(edtQtdade.Text) = '' then
  begin
    MessageDlg('Campo QTDE Obrigat�rio!', mtError,[mbOk],0);
    edtQtdade.SetFocus;
    exit;
  end;
  dm.sdsComandoSql.CommandText:='insert into item_venda values(:id_venda, :idProduto, :qtdade, :preco, :subTotal)';
  dm.sdsComandoSql.ParamByName('id_venda').Text := edtIdVenda.Text;
  dm.sdsComandoSql.ParamByName('idProduto').AsInteger := dblProduto.KeyValue;
  dm.sdsComandoSql.ParamByName('qtdade').Text := edtQtdade.Text;
  dm.sdsComandoSql.ParamByName('preco').Text := edtPreco.Text;
  dm.sdsComandoSql.ParamByName('subTotal').AsFloat := StrToFloat(edtQtdade.Text) * StrToFloat(edtPreco.Text);
  dm.sdsComandoSql.ExecSQL();
  dm.cdsItemVenda.Close;
  dm.cdsItemVenda.Open;
  calculaTotal;
  dblProduto.KeyValue:= -1;
  edtCodBarra.Clear;
  edtEstoque.Clear;
  edtQtdade.Clear;
  edtPreco.Clear;
  end;

procedure TfrmVenda.btnCancelarClick(Sender: TObject);
begin
  inherited;
  dm.banco.Rollback(dm.transacao);
  dm.cdsVenda.Close;
  dm.cdsVenda.Open;
end;

procedure TfrmVenda.btnConfirmClick(Sender: TObject);
begin
  inherited;
  if (Trim(edtVendedor.Text) = '') then
  begin
    MessageDlg('Campo VENDEDOR Obrigat�rio!', mtError,[mbOk],0);
    edtVendedor.SetFocus;
    exit;
  end;
  if Trim(dblCliente.Text)= '' then
  begin
    MessageDlg('Campo Cliente Obrigat�rio!', mtError,[mbOk],0);
    dblCliente.SetFocus;
    exit;
  end;
  if Trim(edtCpf.Text)= '' then
  begin
    MessageDlg('Campo CPF/CNPJ Obrigat�rio!', mtError,[mbOk],0);
    edtCpf.SetFocus;
    exit;
  end;
  if (Trim(cboFormPag.Text)= '') then
  begin
    MessageDlg('Campo Forma Pagamento Obrigat�rio!', mtError,[mbOk],0);
    cboFormPag.SetFocus;
    exit;
  end;
  if (Trim(cboSituacao.Text)= '') then
  begin
    MessageDlg('Campo SITUA��O Obrigat�rio!', mtError,[mbOk],0);
    cboFormPag.SetFocus;
    exit;
  end;
  if (dm.cdsItemVenda.RecordCount = 0) then
  begin
    MessageDlg('Item(s) de venda n�o encontrado! Favor Incluir Item(s).', mtError,[mbOk],0);
    dblProduto.SetFocus;
    exit;
  end;

  if (frmListagemVenda.op = 1) then
  begin
    edtTotal.Text:= FloatToStr(StrToFloat(edtTotal.Text) - StrToFloat(edtDesconto.Text));

    dm.sdsComandoSql.CommandText := 'insert into venda values(seqVenda.currval, :idCli, :vendedor, :desconto, :valorTotal,  :data_Venda, :Forma_pag, :tipo_pag, :situacao)';
    dm.sdsComandoSql.ParamByName('idCli').AsInteger :=  dblCliente.KeyValue;
    dm.sdsComandoSql.ParamByName('vendedor').Text:= edtVendedor.Text;
    dm.sdsComandoSql.ParamByName('desconto').Text := edtDesconto.Text;
    dm.sdsComandoSql.ParamByName('Valortotal').Text := edtTotal.Text;
    dm.sdsComandoSql.ParamByName('data_Venda').Text := edtDataVenda.Text;
    dm.sdsComandoSql.ParamByName('forma_pag').Text:= cboFormPag.Text;
    if rdbVista.Checked = true then
    begin
      dm.sdsComandoSql.ParamByName('tipo_pag').AsString:='V';
    end
    else begin
      dm.sdsComandoSql.ParamByName('tipo_pag').AsString:='P';
    end;
    dm.sdsComandoSql.ParamByName('situacao').Text := cboSituacao.Text;
    dm.sdsComandoSql.ExecSQL();
    dm.cdsVenda.Close;
    dm.cdsVenda.Open;

    // lan�amento
    if (frmVenda.rdbParcelado.Checked = true) then
    begin
        op:= 1;
        frmCondPagamento.ShowModal;
    end
    else begin

    dm.sdsComandoSql.CommandText:= 'insert into lancamento (id_, id_venda, tipo_lanc, valor, forma_pagamento, qtde_parc, data_lanc)'+
    'values (seqLancamento.nextval, :id_venda, :tipo_lanc, :valor, :forma_pagamento, :qtde_parc, :data_lanc)';
    dm.sdsComandoSql.ParamByName('id_venda').Text := edtIdVenda.Text;
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
    dm.sdsComandoSql.ParamByName('data_lanc').Text := edtDataVenda.Text;
    dm.sdsComandoSql.ExecSQL();
    dm.cdsLancamento.Close;
    dm.cdsLancamento.Open;

    dm.banco.Commit(dm.transacao);
    Close;
    end;
    end;
 end;

procedure TfrmVenda.btnLocalizarCliClick(Sender: TObject);
begin
  inherited;
  frmListagemCliente.op := 3;
  frmListagemCliente.ShowModal;
  dm.cdsCliente.Open;
  dm.cdsCidade.Open;
end;

procedure TfrmVenda.btnRemoverClick(Sender: TObject);
begin
  inherited;
  with dm.sdsComandoSql do
  begin
    CommandText:='delete from item_venda where id_venda = :id_venda and idProduto = :idProduto';
    ParamByName('id_venda').Text := dm.cdsItemVenda.FieldByName('id_venda').Text;
    ParamByName('idProduto').Text := dm.cdsItemVenda.FieldByName('idProduto').Text;
    ExecSQL();
  end;
  dm.cdsItemVenda.Close;
  dm.cdsItemVenda.Open;
  calculaTotal;
end;

procedure TfrmVenda.calculaTotal;
var totalGeral: extended;
begin
totalGeral := 0;
dm.cdsItemVenda.First;
while not(dm.cdsItemVenda.Eof)//End of file
do begin
totalGeral := totalGeral + dm.cdsItemVenda.FieldByName('subTotal').AsFloat;
dm.cdsItemVenda.Next; //condi��o de parada
end;
edtTotal.Text := floattoStr(totalGeral);
end;

procedure TfrmVenda.dblClienteClick(Sender: TObject);
begin
  inherited;
  if (dm.cdsCliente.FieldByName('tipoPessoa').Text = 'F') then
  begin
    edtCpf.EditMask:= '999.999.999-99';
    edtCpf.Width:= 91;
    edtCpf.Text := dm.cdsCliente.FieldByName('cpfCnpj').Text;
  end
  else if (dm.cdsCliente.FieldByName('tipoPessoa').Text = 'J') then
  begin
  edtCpf.EditMask:= '99.999.999/9999-99';
  edtCpf.Width:= 112;
  edtCpf.Text := dm.cdsCliente.FieldByName('cpfCnpj').Text;
  end;
end;

procedure TfrmVenda.dblProdutoClick(Sender: TObject);
begin
  inherited;
  edtCodBarra.Text := dm.cdsProduto.FieldByName('codBarra').Text;
  edtEstoque.Text := dm.cdsProduto.FieldByName('estoqueAtual').Text;
  edtPreco.Text := dm.cdsProduto.FieldByName('precovenda').Text;
end;

procedure TfrmVenda.dblProdutoEnter(Sender: TObject);
begin
  inherited;
  edtCodBarra.Text := dm.cdsProduto.FieldByName('codBarra').Text;
  edtEstoque.Text := dm.cdsProduto.FieldByName('estoqueAtual').Text;
  edtPreco.Text := dm.cdsProduto.FieldByName('precovenda').Text;
end;

procedure TfrmVenda.edtCodBarraExit(Sender: TObject);
begin
  inherited;
  if  (edtCodBarra.Text) <> '' then
  begin
  if(dm.cdsProduto.Locate('CodBarra',edtCodBarra.Text,[])) then
  begin
   dblProduto.KeyValue:=dm.cdsProduto.FieldByName('idProduto').AsInteger;
  end
  else begin
    MessageDlg('PRODUTO n�o encontrado ou n�o existe! Favor fazer o cadastro do produto.', mtError,[mbOk],0);
    edtCodBarra.Clear;
    dblProduto.SetFocus;
    exit;
  end;
end;
end;

procedure TfrmVenda.edtCpfEnter(Sender: TObject);
begin
  inherited;
  if (MessageDlg('Deseja inserir um CNPJ?', mtConfirmation, [mbYes, mbNo],0)= mrYes) then
  begin
  edtCpf.EditMask:= '99.999.999/9999-99';
  edtCpf.Width:= 112;
  edtCpf.SetFocus;
  end
  else begin
  edtCpf.EditMask:= '999.999.999-99';
  edtCpf.Width:= 91;
  edtCpf.SetFocus;
  end;
end;

procedure TfrmVenda.edtCpfExit(Sender: TObject);
begin
  inherited;
  if(dm.cdsCliente.Locate('Cpfcnpj',edtCpf.Text,[])) then
  begin
   dblCliente.KeyValue := dm.cdsCliente.FieldByName('idCli').AsInteger;
  end
  else begin
    MessageDlg('CPF/CNPJ n�o encontrado ou n�o existe! Favor fazer o cadastro do cliente.', mtError,[mbOk],0);
    edtCpf.Clear;
    dblCliente.SetFocus;
    exit;
  end;
end;

procedure TfrmVenda.edtDescontoKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  If ((not(Key in ['0'..'9',#8])) and (not(key in [',',#8])))then Key := #0;
  If (key in [','])and (Pos(',',edtDesconto.text)<>0) then Key :=#0;
end;

procedure TfrmVenda.FormShow(Sender: TObject);
begin
  inherited;
  if (frmListagemVenda.op = 1) then
  begin
  edtDataVenda.Text := DateToStr(date);
  edtVendedor.SetFocus;
  edtIdVenda.Clear;
  edtVendedor.Clear;
  edtCpf.Clear;
  dblCliente.KeyValue:=-1;
  dblProduto.KeyValue:=-1;
  edtCodBarra.Clear;
  edtEstoque.Clear;
  edtQtdade.Clear;
  edtPreco.Clear;
  edtTotal.Clear;
  rdbVista.Checked := true;
  cboFormPag.ItemIndex := -1;
  cboSituacao.ItemIndex := -1;
  edtDesconto.Clear;
  edtTotal.Clear;
  edtDesconto.Text := '0';
  edtTotal.Text:= '0';

  dm.sdsComandoSql.CommandText := 'select seqVenda.nextval as id_Venda from dual';
  dm.sdsComandoSql.Open;
  edtIdVenda.Text := dm.sdsComandoSql.FieldByName('id_Venda').Text;
  dm.sdsComandoSql.Close;
  dm.sdsItemVenda.CommandText:= 'select id_venda, produto.idProduto, produto.descricao, quantidade, preco, subtotal from item_venda inner join produto on item_venda.idProduto = produto.idProduto where id_venda = :id_Venda';
  dm.sdsItemVenda.ParamByName('id_Venda').Text := edtIdVenda.Text;
  dm.sdsItemVenda.ExecSQL();
  dm.cdsItemVenda.Close;
  dm.cdsItemVenda.Open;
  end;

end;

procedure TfrmVenda.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  frmListagemProduto.op := 3;
  frmListagemProduto.ShowModal;
  dm.cdsProduto.Open;
  dm.cdsMarca.Open;
end;

end.
