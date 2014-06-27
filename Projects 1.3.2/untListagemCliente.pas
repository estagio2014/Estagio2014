unit untListagemCliente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, untListagemPrincipal, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, Data.DB;

type
  TfrmListagemCliente = class(TfrmListagem)
    rdbNome: TRadioButton;
    rdbCPFCNPJ: TRadioButton;
    procedure SpeedButton1Click(Sender: TObject);
    procedure Speedbutton2Click(Sender: TObject);
    procedure Speedbutton3Click(Sender: TObject);
    procedure dsListagemDataChange(Sender: TObject; Field: TField);
    procedure edtPesquisarChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    op:Byte;
  end;

var
  frmListagemCliente: TfrmListagemCliente;

implementation

{$R *.dfm}

uses untCadCliente, untDm;

procedure TfrmListagemCliente.dsListagemDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
  edtTotaldeReg.Text := IntToStr(dm.cdsCliente.RecordCount);
  Speedbutton3.Enabled:=true;
  Speedbutton2.Enabled:=true;
  if (dm.cdsCliente.RecordCount = 0) then
  begin
    Speedbutton3.Enabled:=false;
    Speedbutton2.Enabled:=false;
  end else;
  end;
procedure TfrmListagemCliente.edtPesquisarChange(Sender: TObject);
begin
  inherited;
  if rdbNome.Checked = true then
  begin
  dm.cdsCliente.Locate('nomeCli',edtPesquisar.Text,[loPartialKey,loCaseInsensitive]);
  dm.cdsCliente.Locate('Apelido',edtPesquisar.Text,[loPartialKey,loCaseInsensitive]);
  end;
  if rdbCPFCNPJ.Checked = true then
  begin
    dm.cdsCliente.Locate('cpfCnpj',edtPesquisar.Text,[loPartialKey,loCaseInsensitive]);
  end;
end;

procedure TfrmListagemCliente.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  dm.cdsCliente.Close;
  dm.cdsCidade.Close;
end;

procedure TfrmListagemCliente.FormShow(Sender: TObject);
begin
  inherited;
  dm.cdsCliente.Open;
  dm.cdsCidade.Open;
  rdbNome.Checked := true;
end;

procedure TfrmListagemCliente.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  op:=1;
  frmCadCliente.Caption:='Incluir Cliente';
  frmCadCliente.showModal;
end;

procedure TfrmListagemCliente.Speedbutton2Click(Sender: TObject);
begin
  inherited;
  try
    if(messageDlg('Deseja Exluir este Cliente?', mtInformation,[mbYes,mbNo],0)=mrYes) then
    begin
      dm.sdscomandoSql.commandText := 'Delete from cliente where idCli = :id';
      dm.sdscomandoSql.ParamByName('id').Text := dm.cdsCliente.FieldByName('idCli').text;
      dm.sdsComandoSql.ExecSQL();
      dm.cdsCliente.Close;
      dm.cdsCliente.Open;
    end;
  Except
    Application.MessageBox('Erro ao Excluir! Este Cliente est� sendo utilizado em outro CADASTRO.','Alerta',0);
  end;
end;

procedure TfrmListagemCliente.Speedbutton3Click(Sender: TObject);
begin
  inherited;
  op:= 2;
  frmCadCliente.Caption:='Alterar Cliente';
  frmCadCliente.ShowModal;
end;

end.