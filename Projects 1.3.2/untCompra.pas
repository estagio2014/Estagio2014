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
    dsProduto: TDataSource;
    Label5: TLabel;
    rdbVista: TRadioButton;
    Label15: TLabel;
    rdbParcelado: TRadioButton;
    Label14: TLabel;
    cboFormPag: TComboBox;
    edtDesconto: TEdit;
    Label18: TLabel;
    procedure FormShow(Sender: TObject);
    procedure edtCnpjChange(Sender: TObject);
    procedure edtCodBarraChange(Sender: TObject);
    procedure dblProdutoClick(Sender: TObject);
    procedure edtPrecoKeyPress(Sender: TObject; var Key: Char);
    procedure btnLocalizarCliClick(Sender: TObject);
    procedure edtPesquisarProdClick(Sender: TObject);
    procedure dblFornClick(Sender: TObject);
    procedure btnAdicionarClick(Sender: TObject);
    procedure btnConfirmClick(Sender: TObject);
    procedure btnRemoverClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
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
end;

procedure TfrmCompra.btnCancelarClick(Sender: TObject);
begin
  inherited;
  dm.banco.Rollback(dm.transacao);
end;

procedure TfrmCompra.btnConfirmClick(Sender: TObject);
begin
  inherited;
  if (frmListagemCompra.op = 1) then
  begin
    edtTotal.Text:= FloatToStr(StrToFloat(edtTotal.Text) - StrToFloat(edtDesconto.Text));
    if (rdbParcelado.Checked = true) then
    begin
      frmCondPagamento.showModal;
    end
    else begin
    dm.sdsComandoSql.CommandText := 'insert into compra values(seqCompra.currval, :idFornecedor, :data_compra, :forma_pag, :valorTotal,  :desconto, :tipo_pag)';
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
    dm.sdsComandoSql.ExecSQL();
    dm.cdsCompra.Close;
    dm.cdsCompra.Open;
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
dm.cdsItemCompra.Next; //condi��o de parada
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

procedure TfrmCompra.edtCnpjChange(Sender: TObject);
begin
  inherited;
  if(dm.cdsFornecedor.Locate('Cnpj',edtCodBarra.Text,[])) then
  begin
   dblForn.KeyValue:=dm.cdsFornecedor.FieldByName('idFornecedor').AsInteger;
  end;
end;

procedure TfrmCompra.edtCodBarraChange(Sender: TObject);
begin
  inherited;
  if(dm.cdsProduto.Locate('CodBarra',edtCodBarra.Text,[])) then
  begin
   dblProduto.KeyValue:=dm.cdsProduto.FieldByName('idProduto').AsInteger;
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
  If (key in [','])and (Pos(',',edtPreco.text)<>0) then Key :=#0;
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

  dm.sdsComandoSql.CommandText := 'select seqCompra.nextval as id_Compra from dual';
  dm.sdsComandoSql.Open;
  edtIdCompra.Text := dm.sdsComandoSql.FieldByName('id_Compra').Text;
  dm.sdsComandoSql.Close;
  dm.sdsItemCompra.CommandText := 'select * from item_compra where id_compra = :id_compra';
  dm.sdsItemCompra.ParamByName('id_compra').Text := edtIdCompra.Text;
  dm.sdsItemCompra.ExecSQL();
  dm.cdsItemCompra.Close;
  dm.cdsItemCompra.Open;
  end;
end;

end.
