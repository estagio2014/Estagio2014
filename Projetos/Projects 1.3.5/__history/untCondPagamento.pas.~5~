unit untCondPagamento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, untCadPrincipal, Data.DB, Vcl.StdCtrls,
  Vcl.Grids, Vcl.DBGrids, Vcl.Buttons;

type
  TfrmCondPagamento = class(TfrmCadPrincipal)
    GroupBox1: TGroupBox;
    cboParcelas: TComboBox;
    Label1: TLabel;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    btnGerarParcelas: TSpeedButton;
    Label2: TLabel;
    procedure FormShow(Sender: TObject);
    procedure btnGerarParcelasClick(Sender: TObject);
  private
    { Private declarations }
  public
  op:byte;
    { Public declarations }
  end;

var
  frmCondPagamento: TfrmCondPagamento;

implementation

{$R *.dfm}

uses untVenda;

procedure TfrmCondPagamento.btnGerarParcelasClick(Sender: TObject);
//var
  //I: Integer;
begin
  inherited;
  {for I := 1 to cboParcelas.Text do
  begin
    dm.sdsComandoSql.commandText:= 'insert into fatura values '
  end;}
end;

procedure TfrmCondPagamento.FormShow(Sender: TObject);
begin
  inherited;
   if (frmVenda.op = 1) then
   begin
      cboParcelas.SetFocus;
   end;
end;

end.
