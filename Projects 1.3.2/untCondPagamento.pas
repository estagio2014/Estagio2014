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
    edtFormPag: TEdit;
    Label2: TLabel;
    DataSource1: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCondPagamento: TfrmCondPagamento;

implementation

{$R *.dfm}

end.
