unit untCadMarca;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, untCadPrincipal, Vcl.StdCtrls,
  Vcl.Buttons;

type
  TfrmCadMarca = class(TfrmCadPrincipal)
    edtId: TEdit;
    edtDesc: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    procedure btnConfirmClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadMarca: TfrmCadMarca;

implementation

{$R *.dfm}

uses untListagemMarca, untDm;

procedure TfrmCadMarca.btnConfirmClick(Sender: TObject);
begin
  inherited;
  if Trim(edtDesc.Text)= '' then
    begin
    MessageDlg('Campo Descri��o Obrigat�rio!', mtError,[mbOk],0);
    edtDesc.SetFocus;
    exit;
    end;
  if frmListagemMarca.op = 1 then
  begin
    dm.sdsComandoSql.CommandText :='insert into marca values (seqMarca.nextval,:p2)';
    dm.sdsComandoSql.ParamByName('p2').Text := edtDesc.Text;
    dm.sdsComandoSql.ExecSQL();
    dm.cdsMarca.Close;
    dm.cdsMarca.Open;
    close;
  end;


  if frmListagemMarca.op = 2 then
  begin
    dm.sdsComandoSql.CommandText :='update marca set descricao = :p2 where id = :id';
    dm.sdsComandoSql.ParamByName('id').Text := edtId.Text;
    dm.sdsComandoSql.ParamByName('p2').Text := edtDesc.Text;
    dm.sdsComandoSql.ExecSQL();
    dm.cdsMarca.Close;
    dm.cdsMarca.Open;
    close;
  end;

end;

procedure TfrmCadMarca.FormShow(Sender: TObject);
begin
  inherited;
  if frmListagemMarca.op = 1 then
  begin
    edtId.Clear;
    edtDesc.Clear;
  end;
  if frmListagemMarca.op = 2 then
  begin
  frmCadMarca.edtId.Text := dm.cdsMarca.FieldByName('id').Text;
  frmCadMarca.edtDesc.Text := dm.cdsMarca.FieldByName('descricao').Text;
  end;
end;

end.

