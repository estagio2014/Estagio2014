unit untVenda;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
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
    edtCodBarra: TMaskEdit;
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
    procedure FormShow(Sender: TObject);
    procedure btnLocalizarCliClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure btnAdicionarClick(Sender: TObject);
    procedure dblProdutoClick(Sender: TObject);
    procedure dblClienteClick(Sender: TObject);
    procedure edtCpfChange(Sender: TObject);
    procedure btnRemoverClick(Sender: TObject);
    procedure btnConfirmClick(Sender: TObject);
    procedure edtCpfExit(Sender: TObject);
    procedure edtCodBarraChange(Sender: TObject);
    procedure edtDescontoChange(Sender: TObject);
  private
     procedure calculaTotal;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmVenda: TfrmVenda;

implementation

{$R *.dfm}

uses untListagemCliente, untListagemProduto, untDm;

procedure TfrmVenda.btnAdicionarClick(Sender: TObject);
begin
  inherited;
  dm.sdsComandoSql.CommandText:='insert into item_venda values(seqVenda.nextval, :idProduto, :qtdade, :preco, :subTotal)';
  dm.sdsComandoSql.ParamByName('idProduto').AsInteger := dblProduto.KeyValue;
  dm.sdsComandoSql.ParamByName('qtdade').Text := edtQtdade.Text;
  dm.sdsComandoSql.ParamByName('preco').Text := edtPreco.Text;
  dm.sdsComandoSql.ParamByName('subTotal').AsInteger := StrToInt(edtQtdade.Text) * StrToInt(edtPreco.Text);
  dm.sdsComandoSql.ExecSQL();
  dm.cdsItemVenda.Close;
  dm.cdsItemVenda.Open;
  calculaTotal;
  edtEstoque.Text:= IntToStr(StrToInt (edtEstoque.Text) - StrToInt(edtQtdade.Text));
end;

procedure TfrmVenda.btnConfirmClick(Sender: TObject);
begin
  inherited;
  dm.sdsComandoSql.CommandText := 'insert into venda values(seqVenda.currval, :idCli, :vendedor, :desconto, :valorTotal,  :data_Venda, :Forma_pag, :tipo_pag)';
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
  dm.sdsComandoSql.ExecSQL();
  dm.cdsVenda.Close;
  dm.cdsVenda.Open;
  Close;
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
  edtEstoque.Text:= IntToStr(StrToInt (edtEstoque.Text) + StrToInt(edtQtdade.Text));
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
  edtCpf.Text := dm.cdsCliente.FieldByName('cpfCnpj').Text;
end;

procedure TfrmVenda.dblProdutoClick(Sender: TObject);
begin
  inherited;
  edtCodBarra.Text := dm.cdsProduto.FieldByName('codBarra').Text;
  edtEstoque.Text := dm.cdsProduto.FieldByName('estoqueAtual').Text;
  edtPreco.Text := dm.cdsProduto.FieldByName('precovenda').Text;
end;

procedure TfrmVenda.edtCodBarraChange(Sender: TObject);
begin
  inherited;
  if(dm.cdsProduto.Locate('CodBarra',edtCodBarra.Text,[])) then
  begin
   dblProduto.KeyValue:=dm.cdsProduto.FieldByName('idProduto').AsInteger;
  end;
end;

procedure TfrmVenda.edtCpfChange(Sender: TObject);
begin
  inherited;
  dm.cdsCliente.Locate('cpfCnpj',edtCpf.Text,[loPartialKey,loCaseInsensitive]);
 // dblCliente.ListField:= dm.sdsComandoSql.CommandText:='select nomeCli from cliente where cpfCnpj ='+(edtCpf.Text);
end;

procedure TfrmVenda.edtCpfExit(Sender: TObject);
begin
  inherited;
  if(dm.cdsCliente.Locate('Cpfcnpj',edtCpf.Text,[])) then
  begin
   dblCliente.KeyValue:=dm.cdsCliente.FieldByName('idCli').AsInteger;
  end;
end;

procedure TfrmVenda.edtDescontoChange(Sender: TObject);
begin
  inherited;
  edtTotal.Text:= edtTotal.Text
end;

procedure TfrmVenda.FormShow(Sender: TObject);
begin
  inherited;
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
  edtDesconto.Clear;
  edtTotal.Clear;

  {dm.sdsComandoSql.CommandText := 'select seqVenda.nextval as id_Venda from dual';
  dm.sdsComandoSql.Open;
  edtIdVenda.Text := dm.sdsComandoSql.FieldByName('id_Venda').Text;
  dm.sdsComandoSql.Close;

  dm.sdsItemVenda.CommandText := 'select * from item_Venda where id_Venda = :id_Venda';
  dm.sdsItemVenda.ParamByName('id_Venda').Text := edtIdVenda.Text;
  dm.sdsItemVenda.ExecSQL();
  dm.cdsItemVenda.Close;
  dm.cdsItemVenda.Open;   }

end;

procedure TfrmVenda.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  frmListagemProduto.showModal;
end;

end.
