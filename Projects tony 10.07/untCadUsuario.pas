unit untCadUsuario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, untCadPrincipal, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.Mask;

type
  TfrmCadUsuario = class(TfrmCadPrincipal)
    Label5: TLabel;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    edtId: TEdit;
    edtNome: TEdit;
    edtSenha: TEdit;
    edtUsuario: TEdit;
    cboNivelAcc: TComboBox;
    edtDataCad: TMaskEdit;
    edtConfSenha: TEdit;
    procedure FormShow(Sender: TObject);
    procedure btnConfirmClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadUsuario: TfrmCadUsuario;

implementation

{$R *.dfm}

uses untListagemUsuario, untDm;

procedure TfrmCadUsuario.btnConfirmClick(Sender: TObject);
begin
  inherited;
  if frmListagemUsuario.op = 1 then
  begin
    with dm.sdsComandoSql do
    begin
      CommandText:='insert into usuario values(seqUsuario.nextval, :nome, :login, :senha, :nivelacess, :dataCadastro)';
      ParamByName('nome').Text := edtNome.Text;
      ParamByName('login').Text := edtUsuario.Text;
      ParamByName('senha').Text := edtSenha.Text;
      ParamByName('nivelacess').Text := cboNivelAcc.Text;
      ParamByName('dataCadastro').Text := edtDataCad.Text;
    end;
    dm.sdsComandoSql.ExecSQL();
    dm.cdsUsuario.Close;
    dm.cdsUsuario.Open;
    Close;
  end;
end;

procedure TfrmCadUsuario.FormShow(Sender: TObject);
begin
  inherited;
  if frmListagemUsuario.op = 1 then
  begin
  edtDataCad.Text:=DateToStr(date);
  edtNome.SetFocus;
  edtId.Clear;
  edtNome.Clear;
  edtUsuario.Clear;
  edtSenha.Clear;
  edtConfSenha.Clear;
  cboNivelAcc.ItemIndex:= -1;
  end;
  if frmListagemUsuario.op = 2 then
  begin
    frmCadUsuario.edtId.Text := dm.cdsUsuario.FieldByName('id_usuario').Text;
    frmCadUsuario.edtNome.Text := dm.cdsUsuario.FieldByName('nome').Text;
    frmCadUsuario.edtUsuario.Text := dm.cdsUsuario.FieldByName('login').Text;
    frmCadUsuario.edtSenha.Text := dm.cdsUsuario.FieldByName('senha').Text;
    frmCadUsuario.edtConfSenha.Text := dm.cdsUsuario.FieldByName('senha').Text;
    cboNivelAcc.ItemIndex := (cboNivelAcc.Items.IndexOf(dm.cdsUsuario.FieldByName('nivelacess').Text));
    frmCadUsuario.edtDataCad.Text := dm.cdsUsuario.FieldByName('datacadastro').Text;
  end;
end;

end.
