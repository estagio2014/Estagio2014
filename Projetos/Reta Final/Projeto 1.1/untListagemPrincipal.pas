unit untListagemPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.ExtCtrls, Data.DB;

type
  TfrmListagem = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Speedbutton1: TSpeedButton;
    Speedbutton2: TSpeedButton;
    Speedbutton3: TSpeedButton;
    Speedbutton4: TSpeedButton;
    DBGrid1: TDBGrid;
    Quantidade: TLabel;
    edtTotaldeReg: TEdit;
    dsListagem: TDataSource;
    Label1: TLabel;
    edtPesquisar: TEdit;
    procedure Speedbutton4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmListagem: TfrmListagem;

implementation

{$R *.dfm}

procedure TfrmListagem.Speedbutton4Click(Sender: TObject);
begin
close;
end;

end.
