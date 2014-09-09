unit untRelFiltroVenda;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, untRelFiltro, Vcl.Buttons, Vcl.StdCtrls,
  Vcl.Mask, Vcl.ExtCtrls;

type
  Tfrmfiltrovenda = class(TfrmRelFiltro)
    RadioGroup1: TRadioGroup;
    rdbData: TRadioButton;
    rdbVendas: TRadioButton;
    rdbVendaCliente: TRadioButton;
    Label2: TLabel;
    edtDataFim: TMaskEdit;
    edtDataInicio: TMaskEdit;
    Label1: TLabel;
    btnConfirmar: TSpeedButton;
    procedure rdbDataClick(Sender: TObject);
    procedure rdbVendasClick(Sender: TObject);
    procedure rdbVendaClienteClick(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmfiltrovenda: Tfrmfiltrovenda;

implementation

{$R *.dfm}

uses untRelatorios;

procedure Tfrmfiltrovenda.btnConfirmarClick(Sender: TObject);
begin
  inherited;
if(rdbVendas.Checked) then
  begin
    frmRelatorios.frxReportVenda.ShowReport();
  end;
end;

procedure Tfrmfiltrovenda.rdbVendaClienteClick(Sender: TObject);
begin
  inherited;
if(rdbVendaCliente.Checked) then
  begin
    edtDataInicio.Enabled := False;
    edtDataFim.Enabled := False;

    edtDataInicio.Clear;
    edtDataFim.Clear;
  end;
end;

procedure Tfrmfiltrovenda.rdbVendasClick(Sender: TObject);
begin
  inherited;
if(rdbVendas.Checked) then
  begin
    edtDataInicio.Enabled := False;
    edtDataFim.Enabled := False;

    edtDataInicio.Clear;
    edtDataFim.Clear;
  end;
end;

procedure Tfrmfiltrovenda.rdbDataClick(Sender: TObject);
begin
  inherited;
if(rdbData.Checked) then
  begin
    edtDataInicio.Enabled := True;
    edtDataFim.Enabled := True;
  end;
end;

end.
