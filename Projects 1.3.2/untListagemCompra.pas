unit untListagemCompra;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, untListagemPrincipal, Data.DB,
  Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls;

type
  TfrmListagemCompra = class(TfrmListagem)
    btnRelatorio: TSpeedButton;
    procedure Speedbutton1Click(Sender: TObject);
    procedure dsListagemDataChange(Sender: TObject; Field: TField);
    procedure Speedbutton3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    op : Byte;
    { Public declarations }
  end;

var
  frmListagemCompra: TfrmListagemCompra;

implementation

{$R *.dfm}

uses untCompra;

procedure TfrmListagemCompra.dsListagemDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
{  edtTotaldeReg.Text := IntToStr(dm.cdsCompra.RecordCount);
  Speedbutton3.Enabled:=true;
  Speedbutton2.Enabled:=true;
  btnRelatorio.Enabled:=true;
  if (dm.cdsCompra.RecordCount = 0) then
  begin
    Speedbutton3.Enabled:=false;
    Speedbutton2.Enabled:=false;
    btnRelatorio.Enabled:=false;
  end else;
  end;  }
end;

procedure TfrmListagemCompra.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
 { dm.cdsCompra.Open;
  dm.cdsFornecedor.Open;
  dm.cdsProduto.Open;
  dm.cdsItemCompra.Open;}
end;

procedure TfrmListagemCompra.FormShow(Sender: TObject);
begin
  inherited;
 { dm.cdsCompra.Open;
  dm.cdsFornecedor.Open;
  dm.cdsProduto.Open;
  dm.cdsItemCompra.Open;}
end;

procedure TfrmListagemCompra.Speedbutton1Click(Sender: TObject);
begin
  inherited;
  op := 1;
  frmCompra.Caption:='Incluir Compra';
  frmCompra.ShowModal;
end;

procedure TfrmListagemCompra.Speedbutton3Click(Sender: TObject);
begin
  inherited;
  op := 2;
  frmCompra.Caption:='Alterar Compra';
  frmCompra.ShowModal;
end;

end.
