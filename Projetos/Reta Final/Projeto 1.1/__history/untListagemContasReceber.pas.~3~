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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmListagemContasReceber: TfrmListagemContasReceber;

implementation

{$R *.dfm}

uses untContasReceber;

procedure TfrmListagemContasReceber.btnBaixaClick(Sender: TObject);
begin
  inherited;
  frmContasReceber.showModal;
end;

end.
