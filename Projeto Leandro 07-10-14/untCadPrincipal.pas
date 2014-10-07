unit untCadPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Buttons;

type
  TfrmCadPrincipal = class(TForm)
    btnConfirm: TSpeedButton;
    btnCancelar: TSpeedButton;
    procedure btnCancelarClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadPrincipal: TfrmCadPrincipal;

implementation

{$R *.dfm}

procedure TfrmCadPrincipal.btnCancelarClick(Sender: TObject);
begin
Close;
end;

procedure TfrmCadPrincipal.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if(Key = VK_F1) then
    begin
      btnConfirm.Click;
    end
  else if(Key = VK_F2) then
    begin
      btnCancelar.Click;
    end
  else if(Key = VK_ESCAPE) then
    begin
      close;
    end;
end;

end.
