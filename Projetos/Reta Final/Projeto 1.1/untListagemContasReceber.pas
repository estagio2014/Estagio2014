unit untListagemContasReceber;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, untListagemContas, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, Vcl.Mask;

type
  TfrmListagemContasReceber = class(TfrmListagemContas)
    rdbNumConta: TRadioButton;
    rdbData: TRadioButton;
    edtData: TMaskEdit;
    Label3: TLabel;
    procedure btnBaixaClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dsListagemDataChange(Sender: TObject; Field: TField);
    procedure rdbDataClick(Sender: TObject);
    procedure rdbFornecedorClick(Sender: TObject);
    procedure rdbSituacaoClick(Sender: TObject);
    procedure rdbNumContaClick(Sender: TObject);
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
  dm.banco.StartTransaction(dm.transacao);
  frmContasReceber.showModal;
end;

procedure TfrmListagemContasReceber.dsListagemDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
  edtTotalReg.Text := IntToStr(dm.cdsContasReceb.RecordCount);
end;

procedure TfrmListagemContasReceber.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  dm.sdsContasReceb.Close;
  dm.cdsContasReceb.Close;
  dm.cdsVenda.Close;
end;

procedure TfrmListagemContasReceber.FormShow(Sender: TObject);
begin
  inherited;
  dm.sdsContasReceb.Open;
  dm.cdsContasReceb.Open;
  dm.cdsVenda.Open;
  edtData.Text := DateToStr(date);
  rdbNumConta.Checked := true;
end;

procedure TfrmListagemContasReceber.rdbDataClick(Sender: TObject);
begin
  inherited;
  edtData.Enabled := true
end;

procedure TfrmListagemContasReceber.rdbFornecedorClick(Sender: TObject);
begin
  inherited;
  edtData.Enabled := false
end;

procedure TfrmListagemContasReceber.rdbNumContaClick(Sender: TObject);
begin
  inherited;
  edtData.Enabled := false
end;

procedure TfrmListagemContasReceber.rdbSituacaoClick(Sender: TObject);
begin
  inherited;
  edtData.Enabled := false
end;

end.
