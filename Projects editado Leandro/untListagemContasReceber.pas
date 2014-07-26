unit untListagemContasReceber;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, untListagemContas, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, Vcl.Mask;

type
  TfrmListagemContasReceber = class(TfrmListagemContas)
    rdbNumConta: TRadioButton;
    rdbSituacao: TRadioButton;
    rdbData: TRadioButton;
    rdbFornecedor: TRadioButton;
    edtData: TMaskEdit;
    Label3: TLabel;
    procedure btnBaixaClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dsListagemDataChange(Sender: TObject; Field: TField);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmListagemContasReceber: TfrmListagemContasReceber;

implementation

{$R *.dfm}

uses untContasReceber, untDm;

procedure TfrmListagemContasReceber.btnBaixaClick(Sender: TObject);
begin
  inherited;
  frmContasReceber.showModal;
end;

procedure TfrmListagemContasReceber.dsListagemDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
  edtTotalReg.Text := IntToStr(dm.cdsFatura.RecordCount);
end;

procedure TfrmListagemContasReceber.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  dm.cdsFatura.Close;
  dm.cdsVenda.Close;
end;

procedure TfrmListagemContasReceber.FormShow(Sender: TObject);
begin
  inherited;
  dm.cdsFatura.Open;
  dm.cdsVenda.Open;
end;

end.