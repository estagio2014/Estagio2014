unit untRelatorios;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, frxClass, frxDBSet;

type
  TfrmRelatorios = class(TForm)
    frxReportCliente: TfrxReport;
    frxDBDatasetCliente: TfrxDBDataset;
    frxReportFornecedor: TfrxReport;
    frxDBDatasetFornecedor: TfrxDBDataset;
    frxReportProduto: TfrxReport;
    frxDBDatasetProduto: TfrxDBDataset;
    frxReportCompra: TfrxReport;
    frxDBDatasetCompra: TfrxDBDataset;
    frxReportVenda: TfrxReport;
    frxDBDatasetVenda: TfrxDBDataset;
    frxReportFatura: TfrxReport;
    frxReportLancamento: TfrxReport;
    frxDBDatasetFatura: TfrxDBDataset;
    frxDBDatasetLancamento: TfrxDBDataset;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelatorios: TfrmRelatorios;

implementation

{$R *.dfm}

uses untDm;

end.
