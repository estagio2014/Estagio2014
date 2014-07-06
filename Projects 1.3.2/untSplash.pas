unit untSplash;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.ExtCtrls,
  Vcl.StdCtrls, Vcl.Imaging.jpeg;

type
  TfrmSplash = class(TForm)
    Image1: TImage;
    Timer1: TTimer;
    ProgressBar1: TProgressBar;
    Label1: TLabel;
    procedure Timer1Timer(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSplash: TfrmSplash;

implementation

{$R *.dfm}

uses untPrincipal, untLogin;

procedure TfrmSplash.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Application.Terminate;
end;

procedure TfrmSplash.Timer1Timer(Sender: TObject);
begin
//ProgressBar1.Position := ProgressBar1.Position+2;

progressbar1.position := progressbar1.position +1;
label1.caption := inttostr(progressbar1.position)+'%';
  if(ProgressBar1.Position=100) then
  begin
  //timer1.Destroy;
  //timer1.Enabled:= false;
  frmSplash.Destroy;
  frmLogin.showmodal;
  close;
  end;

end;
end.
