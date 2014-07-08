unit untLogin;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,System.UITypes, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, untCadPrincipal, Vcl.StdCtrls,
  Vcl.Imaging.jpeg, Vcl.ExtCtrls, Vcl.Buttons, System.Classes;

type
  TfrmLogin = class(TfrmCadPrincipal)
    edtUsuario: TEdit;
    edtSenha: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Image1: TImage;
    procedure btnConfirmClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnCancelarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLogin: TfrmLogin;

implementation

{$R *.dfm}

uses untDm, untPrincipal;

procedure TfrmLogin.btnCancelarClick(Sender: TObject);
begin
  inherited;
  if MessageDlg('Deseja Sair do Sistema?', mtInformation,[mbYes,mbNo],0)= mrYes then
   begin
  Application.Terminate;
   end;
end;

procedure TfrmLogin.btnConfirmClick(Sender: TObject);
begin
  inherited;
  if (Trim(edtUsuario.Text) = '') or (Trim(edtSenha.Text) = '' ) then
  begin
      MessageDlg('USUÁRIO ou SENHA inválido(s)!', mtError,[mbOk],0);
      edtUsuario.SetFocus;
      exit;
  end
  else begin
    close;
  end;
end;

procedure TfrmLogin.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action := caNone;
   if dm.cdsUsuario.Locate('login', edtUsuario.Text, []) and
    dm.cdsUsuario.Locate('Senha', edtSenha.Text, []) then
  begin
    MessageDlg('Bem Vindo ao Calsystem!', mtConfirmation,[mbOk],0);
    dm.cdsUsuario.Close;
    Action := caFree;
    frmPrincipal.showModal;
  end
end;

procedure TfrmLogin.FormShow(Sender: TObject);
begin
  inherited;
  dm.cdsUsuario.Open;
end;

end.
