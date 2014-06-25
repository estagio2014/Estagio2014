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
    dsItemVenda: TDataSource;
    edtDesconto: TEdit;
    Label18: TLabel;
    edtIdVenda: TEdit;
    Label1: TLabel;
    procedure FormShow(Sender: TObject);
    procedure btnLocalizarCliClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure btnAdicionarClick(Sender: TObject);
    procedure dblProdutoClick(Sender: TObject);
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
  dm.sdsComandoSql.CommandText:='insert into item_venda values(:id_Venda, :idProduto, :qtdade, :preco, :subTotal)';
  dm.sdsComandoSql.ParamByName('id_venda').text := edtIdVenda.Text;
  dm.sdsComandoSql.ParamByName('idProduto').AsInteger := dblProduto.KeyValue;
  dm.sdsComandoSql.ParamByName('qtdade').Text := edtQtdade.Text;
  dm.sdsComandoSql.ParamByName('preco').Text := edtPreco.Text;
  dm.sdsComandoSql.ParamByName('subTotal').AsFloat := StrToFloat(edtQtdade.Text) * StrToFloat(edtPreco.Text);
  dm.sdsComandoSql.ExecSQL();
  dm.cdsItemVenda.Close;
  dm.cdsItemVenda.Open;
  calculaTotal;
end;

procedure TfrmVenda.btnLocalizarCliClick(Sender: TObject);
begin
  inherited;
  frmListagemCliente.ShowModal;
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

procedure TfrmVenda.dblProdutoClick(Sender: TObject);
begin
  inherited;
  edtCodBarra.Text := dm.cdsProduto.FieldByName('codBarra').Text;
  edtEstoque.Text := dm.cdsProduto.FieldByName('estoqueAtual').Text;
  edtPreco.Text := dm.cdsProduto.FieldByName('precovenda').Text;
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
end;

procedure TfrmVenda.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  frmListagemProduto.showModal;
end;

end.
