unit untRelFiltroContasPagar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, untRelFiltro, Vcl.Buttons, Vcl.StdCtrls,
  Vcl.Mask, Vcl.ExtCtrls;

type
  TfrmfiltroContasPagar = class(TfrmRelFiltro)
    RadioGroup1: TRadioGroup;
    rdbData: TRadioButton;
    rdbContasPagar: TRadioButton;
    rdbContasCliente: TRadioButton;
    Label1: TLabel;
    edtDataInicio: TMaskEdit;
    edtDataFim: TMaskEdit;
    Label2: TLabel;
    btnConfirmar: TSpeedButton;
    procedure rdbDataClick(Sender: TObject);
    procedure rdbContasPagarClick(Sender: TObject);
    procedure rdbContasClienteClick(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmfiltroContasPagar: TfrmfiltroContasPagar;

implementation

{$R *.dfm}

procedure TfrmfiltroContasPagar.btnConfirmarClick(Sender: TObject);
begin
  inherited;
if(rdbContasPagar.Checked) then
  begin

  end;
end;

procedure TfrmfiltroContasPagar.rdbContasClienteClick(Sender: TObject);
begin
  inherited;
if(rdbContasCliente.Checked) then
  begin
    edtDataInicio.Enabled:=False;
    edtDataFim.Enabled:=False;

    edtDataInicio.Clear;
    edtDataFim.Clear;
  end;
end;

procedure TfrmfiltroContasPagar.rdbContasPagarClick(Sender: TObject);
begin
  inherited;
if(rdbContasPagar.Checked) then
  begin
    edtDataInicio.Enabled:=False;
    edtDataFim.Enabled:=False;

    edtDataInicio.Clear;
    edtDataFim.Clear;
  end;
end;

procedure TfrmfiltroContasPagar.rdbDataClick(Sender: TObject);
begin
  inherited;
if(rdbData.Checked) then
  begin
    edtDataInicio.Enabled:= True;
    edtDataFim.Enabled:=True;
  end;
end;

end.
