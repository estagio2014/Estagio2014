unit untListagemUsuario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, untListagemPrincipal, Data.DB,
  Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, Vcl.Mask;

type
  TfrmListagemUsuario = class(TfrmListagem)
    procedure Speedbutton1Click(Sender: TObject);
    procedure Speedbutton3Click(Sender: TObject);
    procedure Speedbutton2Click(Sender: TObject);
    procedure dsListagemDataChange(Sender: TObject; Field: TField);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    op:Byte;
    { Public declarations }
  end;

var
  frmListagemUsuario: TfrmListagemUsuario;

implementation

{$R *.dfm}

uses untCadUsuario, untDm;

procedure TfrmListagemUsuario.dsListagemDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
  edtTotaldeReg.Text := IntToStr(dm.cdsUsuario.RecordCount);
  if (dm.cdsUsuario.RecordCount = 0) then
  begin
  btnExcluir.Enabled := False;
  btnAlterar.Enabled := False;
  end
  else begin
  btnExcluir.Enabled := True;
  btnAlterar.Enabled := True;
  end;
end;

procedure TfrmListagemUsuario.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  dm.cdsUsuario.Close;
end;

procedure TfrmListagemUsuario.FormShow(Sender: TObject);
begin
  inherited;
  dm.cdsUsuario.Open;
end;

procedure TfrmListagemUsuario.Speedbutton1Click(Sender: TObject);
begin
  inherited;
  op := 1;
  frmCadUsuario.Caption:='Incluir Usuário';
  frmCadUsuario.ShowModal;
end;

procedure TfrmListagemUsuario.Speedbutton2Click(Sender: TObject);
begin
  inherited;
  if(messageDlg('Deseja Exluir este Usuário', mtInformation,[mbYes,mbNo],0)=mrYes) then
    begin
      dm.sdscomandoSql.commandText := 'Delete from usuario where id_usuario = :id';
      dm.sdscomandoSql.ParamByName('id').Text := dm.cdsUsuario.FieldByName('id_usuario').text;
      dm.sdsComandoSql.ExecSQL();
      dm.cdsUsuario.Close;
      dm.cdsUsuario.Open;
    end;
end;

procedure TfrmListagemUsuario.Speedbutton3Click(Sender: TObject);
begin
  inherited;
  op := 2;
  frmCadUsuario.Caption:='Alterar Usuário';
  frmCadUsuario.ShowModal;
end;

end.
