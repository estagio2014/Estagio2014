unit untLancamentos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Data.DB,
  Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls;

type
  TfrmListagemLancamento = class(TForm)
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    Panel2: TPanel;
    btnVoltar: TSpeedButton;
    btnRelatorio: TSpeedButton;
    edtPesquisar: TEdit;
    Label1: TLabel;
    edtTotalReg: TEdit;
    Label2: TLabel;
    dsListagem: TDataSource;
    procedure dsListagemDataChange(Sender: TObject; Field: TField);
    procedure btnVoltarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnRelatorioClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmListagemLancamento: TfrmListagemLancamento;

implementation

{$R *.dfm}

uses untDm, untRelatorios;

procedure TfrmListagemLancamento.btnRelatorioClick(Sender: TObject);
begin
  frmRelatorios.frxReportLancamento.ShowReport();
end;

procedure TfrmListagemLancamento.btnVoltarClick(Sender: TObject);
begin
Close;
end;

procedure TfrmListagemLancamento.dsListagemDataChange(Sender: TObject;
  Field: TField);
begin
  edtTotalReg.Text := IntToStr(dm.cdsLancamento.RecordCount);
  btnRelatorio.Enabled:=true;
  if (dm.cdsLancamento.RecordCount = 0) then
  begin
    btnRelatorio.Enabled:=false;
  end;
end;

procedure TfrmListagemLancamento.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   dm.cdsLancamento.Close;
end;

procedure TfrmListagemLancamento.FormShow(Sender: TObject);
begin
  dm.cdsLancamento.Open;
end;

end.
