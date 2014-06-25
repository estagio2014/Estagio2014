unit untListagemContasPagar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, untListagemContas, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, Vcl.Mask;

type
  TfrmListagemContaPagar = class(TfrmListagemContas)
    rdbFornecedor: TRadioButton;
    rdbData: TRadioButton;
    rdbSituacao: TRadioButton;
    rdbNumConta: TRadioButton;
    Label3: TLabel;
    edtData: TMaskEdit;
    procedure btnBaixaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmListagemContaPagar: TfrmListagemContaPagar;

implementation

{$R *.dfm}

uses untContasPagar;

procedure TfrmListagemContaPagar.btnBaixaClick(Sender: TObject);
begin
  inherited;
  frmContasPagar.showModal;
end;

end.
