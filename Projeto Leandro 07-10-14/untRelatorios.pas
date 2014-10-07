unit untRelatorios;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, frxClass, frxDBSet;

type
  TfrmRelatorios = class(TForm)
    frxReportClienteVenda: TfrxReport;
    frxDBDatasetCliente: TfrxDBDataset;
    frxReportFornecedor: TfrxReport;
    frxDBDatasetFornecedor: TfrxDBDataset;
    frxReportProduto: TfrxReport;
    frxDBDatasetProduto: TfrxDBDataset;
    frxDBDatasetCompra: TfrxDBDataset;
    frxReportVenda: TfrxReport;
    frxDBDatasetVenda: TfrxDBDataset;
    frxReportFatura: TfrxReport;
    frxReportLancamento: TfrxReport;
    frxDBDatasetFatura: TfrxDBDataset;
    frxDBDatasetLancamento: TfrxDBDataset;
    frxReportCliente: TfrxReport;
    frxDBDatasetClienteVenda: TfrxDBDataset;
    frxReportProduto2: TfrxReport;
    frxDBDatasetProduto2: TfrxDBDataset;
    frxReportTodosCli: TfrxReport;
    frxDBDatasetTodosCli: TfrxDBDataset;
    frxReport1: TfrxReport;
    frxDBDataset1: TfrxDBDataset;
    frxReportFornecedorData: TfrxReport;
    frxDBDatasetFornecedorData: TfrxDBDataset;
    frxDBDatasetProdutoData: TfrxDBDataset;
    frxReportProdutoData: TfrxReport;
    frxReportCompra: TfrxReport;
    frxReportVendaData: TfrxReport;
    frxDBDatasetVendaData: TfrxDBDataset;
    frxReportFaturaData: TfrxReport;
    frxDBDatasetFaturaData: TfrxDBDataset;
    frxReportContasPagar: TfrxReport;
    frxDBDatasetContasPagar: TfrxDBDataset;
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
