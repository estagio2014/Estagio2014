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

procedure TfrmListagemContasReceber.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  dm.cdsLancamento.Close;
end;

procedure TfrmListagemContasReceber.FormShow(Sender: TObject);
begin
  inherited;
  dm.cdsLancamento.Open;
end;

end.
