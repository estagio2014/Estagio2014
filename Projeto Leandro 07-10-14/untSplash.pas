unit untSplash;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.ComCtrls,
  Vcl.Imaging.pngimage;

type
  TfrmSplash = class(TForm)
    Timer1: TTimer;
    ProgressBar1: TProgressBar;
    Image1: TImage;
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSplash: TfrmSplash;

implementation

{$R *.dfm}

uses untLogin;

procedure TfrmSplash.Timer1Timer(Sender: TObject);
begin
ProgressBar1.Position := 10;
Sleep (100);
ProgressBar1.Position := 20;
Sleep (100);
ProgressBar1.Position := 30;
Sleep (100);
ProgressBar1.Position := 40;
Sleep (100);
ProgressBar1.Position := 50;
Sleep (100);
ProgressBar1.Position := 60;
Sleep (1000);
ProgressBar1.Position := 70;
Sleep (1000);
ProgressBar1.Position := 80;
Sleep (1000);
ProgressBar1.Position := 90;
Sleep (1000);
ProgressBar1.Position := 100;
Sleep (1000);
frmLogin.Show; //formulario de login
frmSplash.Hide;
Timer1.Enabled := false;
end;

end.
