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
    edtIdVenda: TEdit;
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
  private
    { Private declarations }
  public
    op:byte;
    { Public declarations }
  end;

var
  frmCompra: TfrmCompra;

implementation

{$R *.dfm}

uses untListagemFornecedor, untDm, untListagemProduto, untListagemCompra;

procedure TfrmCompra.btnLocalizarCliClick(Sender: TObject);
begin
  inherited;
  frmListagemFornecedor.op := 3;
  frmListagemFornecedor.ShowModal;
  dm.cdsFornecedor.Open;
  dm.cdsCidade.Open;
end;

procedure TfrmCompra.dblFornClick(Sender: TObject);
begin
  inherited;
  edtCnpj.Text := dm.cdsFornecedor.FieldByName('Cnpj').Text;
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
  end;
 { if (frmListagemCompra = 2) then
  begin

  end; }
end;

end.
