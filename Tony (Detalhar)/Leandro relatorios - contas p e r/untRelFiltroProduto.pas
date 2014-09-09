unit untRelFiltroProduto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, untRelFiltro, Vcl.Buttons, Vcl.StdCtrls,
  Vcl.Mask, Vcl.ExtCtrls;

type
  Tfrmfiltroproduto = class(TfrmRelFiltro)
    RadioGroup1: TRadioGroup;
    rdbData: TRadioButton;
    rdbProdutos: TRadioButton;
    rdbProdutosMarca: TRadioButton;
    Label1: TLabel;
    edtDataInicio: TMaskEdit;
    edtDataFim: TMaskEdit;
    Label2: TLabel;
    btnConfirmar: TSpeedButton;
    procedure rdbDataClick(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmfiltroproduto: Tfrmfiltroproduto;

implementation

{$R *.dfm}

uses untRelatorios;

procedure Tfrmfiltroproduto.btnConfirmarClick(Sender: TObject);
begin
  inherited;
if(rdbProdutos.Checked) then
  begin
    frmRelatorios.frxReportProduto.ShowReport();
  end
else if(rdbProdutosMarca.Checked) then
  begin
    frmRelatorios.frxReportProduto2.ShowReport();
  end;
end;

procedure Tfrmfiltroproduto.rdbDataClick(Sender: TObject);
begin
  inherited;
if(rdbData.Checked) then
  begin
    edtDataInicio.Enabled:=False;
    edtDataFim.Enabled:=False;
  end;
end;

end.
