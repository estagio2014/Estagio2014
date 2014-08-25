unit untListagemMarca;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, untListagemPrincipal, Data.DB,
  Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls;

type
  TfrmListagemMarca = class(TfrmListagem)
    procedure Speedbutton1Click(Sender: TObject);
    procedure Speedbutton3Click(Sender: TObject);
    procedure Speedbutton2Click(Sender: TObject);
    procedure edtPesquisarChange(Sender: TObject);
    procedure dsListagemDataChange(Sender: TObject; Field: TField);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    op:Byte;
  end;

var
  frmListagemMarca: TfrmListagemMarca;

implementation

{$R *.dfm}

uses untCadMarca, untDm;

procedure TfrmListagemMarca.dsListagemDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
  edtTotaldeReg.Text := IntToStr(dm.cdsMarca.RecordCount);
  Speedbutton3.Enabled:=true;
  Speedbutton2.Enabled:=true;
  if (dm.cdsMarca.RecordCount = 0) then
  begin
  Speedbutton3.Enabled:=false;
  Speedbutton2.Enabled:=false;
  end else;
end;

procedure TfrmListagemMarca.edtPesquisarChange(Sender: TObject);
begin
  inherited;
  dm.cdsMarca.Locate('descricao', edtPesquisar.Text,[loPartialKey,loCaseInsensitive]);
end;

procedure TfrmListagemMarca.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  if frmListagemMarca.op = 3 then
  begin
    dm.cdsMarca.Open;
  end
  else begin
  dm.cdsMarca.Close;
  end;
end;

procedure TfrmListagemMarca.FormShow(Sender: TObject);
begin
  inherited;
  dm.cdsMarca.Open;
end;

procedure TfrmListagemMarca.Speedbutton1Click(Sender: TObject);
begin
  inherited;
  op := 1;
  frmCadMarca.Caption:= 'Incluir Marca';
  frmCadMarca.showModal;
end;

procedure TfrmListagemMarca.Speedbutton2Click(Sender: TObject);
begin
  inherited;
  try
  if (MessageDlg('Deseja Excluir esta Marca?', mtConfirmation,[mbYes,mbNo],0)=mrYes) then
  begin
  dm.sdsComandoSql.CommandText:='delete from marca where id =:id';
  dm.sdsComandoSql.ParamByName('id').Text:=dm.cdsMarca.FieldByName('id').Text;
  dm.sdsComandoSql.ExecSQL();
  dm.cdsMarca.Close;
  dm.cdsMarca.Open;
  end;
  Except
     Application.MessageBox('Erro ao Excluir! Esta Marca está sendo utilizada em outro CADASTRO.','Alerta',0);
  end;
end;


procedure TfrmListagemMarca.Speedbutton3Click(Sender: TObject);
begin
  inherited;
  op:= 2;
  frmCadMarca.Caption:='Alterar Marca';
  frmCadMarca.ShowModal;
end;

end.
