unit untListagemContas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls;

type
  TfrmListagemContas = class(TForm)
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    btnVoltar: TSpeedButton;
    btnBaixa: TSpeedButton;
    btnEstorno: TSpeedButton;
    Panel2: TPanel;
    edtTotalReg: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    edtPesquisar: TEdit;
    dsListagem: TDataSource;
    procedure btnVoltarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmListagemContas: TfrmListagemContas;

implementation

{$R *.dfm}

procedure TfrmListagemContas.btnVoltarClick(Sender: TObject);
begin
  Close;
end;

end.
