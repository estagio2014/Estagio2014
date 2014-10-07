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
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
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

procedure TfrmListagem.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if(Key = VK_F3) then
    begin
     btnIncluir.Click;
    end
   else if(Key = VK_F4) then
    begin
      btnAlterar.Click;
    end
   else if(Key = VK_F5) then
    begin
      btnExcluir.Click;
    end
   else if(Key = VK_ESCAPE) then
    begin
      close;
    end;

end;

end.
