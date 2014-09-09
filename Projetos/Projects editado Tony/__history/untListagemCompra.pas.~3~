unit untListagemCompra;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, untListagemPrincipal, Data.DB,
  Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls;

type
  TfrmListagemCompra = class(TfrmListagem)
    SpeedButton5: TSpeedButton;
    procedure Speedbutton1Click(Sender: TObject);
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

procedure TfrmListagemCompra.Speedbutton1Click(Sender: TObject);
begin
  inherited;
      op := 1;
      frmCompra.Caption:='Incluir Compra';
      frmCompra.ShowModal;
end;

end.
