unit untListagemProduto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, untListagemPrincipal, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, Data.DB;

type
  TfrmListagemProduto = class(TfrmListagem)
    rdbCodBarra: TRadioButton;
    rdbDescricao: TRadioButton;
    btnRelatorio: TSpeedButton;
    procedure Speedbutton1Click(Sender: TObject);
    procedure dsListagemDataChange(Sender: TObject; Field: TField);
    procedure edtPesquisarChange(Sender: TObject);
    procedure Speedbutton3Click(Sender: TObject);
    procedure Speedbutton2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnRelatorioClick(Sender: TObject);
  private
    { Private declarations }
  public
    op:Byte;
  end;

var
  frmListagemProduto: TfrmListagemProduto;

implementation

{$R *.dfm}

uses untCadProduto, untDm, untRelatorios;

procedure TfrmListagemProduto.btnRelatorioClick(Sender: TObject);
begin
  inherited;
frmRelatorios.frxReportProduto.ShowReport();
end;

procedure TfrmListagemProduto.dsListagemDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
  edtTotaldeReg.Text := IntToStr(dm.cdsProduto.RecordCount);
  Speedbutton3.Enabled:=true;
  Speedbutton2.Enabled:=true;
  if (dm.cdsProduto.RecordCount = 0) then
  begin
    Speedbutton3.Enabled:=false;
    Speedbutton2.Enabled:=false;
  end;
end;

procedure TfrmListagemProduto.edtPesquisarChange(Sender: TObject);
begin
  inherited;
  dm.cdsProduto.Locate('descricao',edtPesquisar.Text,[loPartialKey,loCaseInsensitive]);
  if rdbCodBarra.Checked = true then
  begin
    dm.cdsProduto.Locate('codBarra',edtPesquisar.Text,[loPartialKey,loCaseInsensitive]);
  end;
  if rdbDescricao.Checked = true then
  begin
    dm.cdsProduto.Locate('descricao',edtPesquisar.Text,[loPartialKey,loCaseInsensitive]);
  end;
end;

procedure TfrmListagemProduto.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  dm.cdsProduto.Close;
  dm.cdsMarca.Close;
end;

procedure TfrmListagemProduto.FormShow(Sender: TObject);
begin
  inherited;
  rdbCodBarra.Checked := true;
  dm.cdsProduto.Open;
  dm.cdsMarca.Open;
end;

procedure TfrmListagemProduto.Speedbutton1Click(Sender: TObject);
begin
  inherited;
  op := 1;
  frmCadProduto.ShowModal;
  frmCadProduto.Caption:='Incluir Produto';
end;

procedure TfrmListagemProduto.Speedbutton2Click(Sender: TObject);
begin
  inherited;
  try
    if(messageDlg('Deseja Exluir este Produto?', mtInformation,[mbYes,mbNo],0)=mrYes) then
    begin
      dm.sdscomandoSql.commandText := 'Delete from produto where idProduto = :id';
      dm.sdscomandoSql.ParamByName('id').Text := dm.cdsProduto.FieldByName('idProduto').text;
      dm.sdsComandoSql.ExecSQL();
      dm.cdsProduto.Close;
      dm.cdsProduto.Open;
    end;
  Except
    Application.MessageBox('Erro ao Excluir! Este Produto está sendo utilizado em outro CADASTRO.','Alerta',0);
  end;
end;

procedure TfrmListagemProduto.Speedbutton3Click(Sender: TObject);
begin
  inherited;
  op := 2;
  frmCadProduto.ShowModal;
  frmCadProduto.Caption:='Alterar Produto';
end;

end.
