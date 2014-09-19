unit untListagemPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.ExtCtrls, Data.DB, Vcl.Mask;

type
  TfrmListagem = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    btnIncluir: TSpeedButton;
    btnExcluir: TSpeedButton;
    btnAlterar: TSpeedButton;
    btnVoltar: TSpeedButton;
    DBGrid1: TDBGrid;
    Quantidade: TLabel;
    edtTotaldeReg: TEdit;
    dsListagem: TDataSource;
    Label1: TLabel;
    edtPesquisar: TMaskEdit;
    procedure btnVoltarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmListagem: TfrmListagem;

implementation

{$R *.dfm}

procedure TfrmListagem.btnVoltarClick(Sender: TObject);
begin
close;
end;

end.
