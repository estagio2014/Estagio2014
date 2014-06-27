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
    SpeedButton1: TSpeedButton;
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
    RadioButton1: TRadioButton;
    Label15: TLabel;
    RadioButton2: TRadioButton;
    Label14: TLabel;
    cboFormPag: TComboBox;
    Edit1: TEdit;
    Label18: TLabel;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCompra: TfrmCompra;

implementation

{$R *.dfm}

procedure TfrmCompra.FormShow(Sender: TObject);
begin
  inherited;
  edtDataCompra.Text:= DateToStr(date);
end;

end.