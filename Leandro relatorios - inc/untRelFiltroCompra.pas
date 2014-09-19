unit untRelFiltroCompra;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, untRelFiltro, Vcl.Buttons, Vcl.StdCtrls,
  Vcl.Mask, Vcl.ExtCtrls;

type
  Tfrmfiltrocompra = class(TfrmRelFiltro)
    RadioGroup1: TRadioGroup;
    rdbData: TRadioButton;
    rdbCompras: TRadioButton;
    rdbCompraFornecedor: TRadioButton;
    Label1: TLabel;
    edtDataInicio: TMaskEdit;
    edtDataFim: TMaskEdit;
    Label2: TLabel;
    btnConfirmar: TSpeedButton;
    procedure rdbDataClick(Sender: TObject);
    procedure rdbComprasClick(Sender: TObject);
    procedure rdbCompraFornecedorClick(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmfiltrocompra: Tfrmfiltrocompra;

implementation

{$R *.dfm}

uses untRelatorios;

procedure Tfrmfiltrocompra.btnConfirmarClick(Sender: TObject);
begin
  inherited;
if(rdbCompras.Checked) then
  begin
    frmRelatorios.frxReportCompra.ShowReport();
  end;
end;

procedure Tfrmfiltrocompra.rdbCompraFornecedorClick(Sender: TObject);
begin
  inherited;
if(rdbCompraFornecedor.Checked) then
  begin
    edtDataInicio.Enabled :=False;
    edtDataFim.Enabled :=False;

    edtDataInicio.Clear;
    edtDataFim.Clear;
  end;
end;

procedure Tfrmfiltrocompra.rdbComprasClick(Sender: TObject);
begin
  inherited;
if(rdbCompras.Checked) then
  begin
    edtDataInicio.Enabled :=False;
    edtDataFim.Enabled :=False;

    edtDataInicio.Clear;
    edtDataFim.Clear;
  end;
end;

procedure Tfrmfiltrocompra.rdbDataClick(Sender: TObject);
begin
  inherited;
if(rdbData.Checked) then
  begin
    edtDataInicio.Enabled:=True;
    edtDataFim.Enabled:=True;
  end;
end;

end.
