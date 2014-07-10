unit untDm;

interface

uses
  System.SysUtils, System.Classes, Data.DBXOracle, Data.FMTBcd,
  Datasnap.DBClient, Datasnap.Provider, Data.DB, Data.SqlExpr;

type
  Tdm = class(TDataModule)
    banco: TSQLConnection;
    sdsCidade: TSQLDataSet;
    sdsCliente: TSQLDataSet;
    sdsFornecedor: TSQLDataSet;
    sdsProduto: TSQLDataSet;
    sdsComandoSql: TSQLDataSet;
    dspCidade: TDataSetProvider;
    cdsCidade: TClientDataSet;
    dspCliente: TDataSetProvider;
    cdsCliente: TClientDataSet;
    dspFornecedor: TDataSetProvider;
    cdsFornecedor: TClientDataSet;
    dspProduto: TDataSetProvider;
    cdsProduto: TClientDataSet;
    cdsCidadeID_CID: TFMTBCDField;
    cdsCidadeNOME_CID: TWideStringField;
    cdsCidadeUF: TWideStringField;
    cdsCidadeDATACADASTRO: TSQLTimeStampField;
    cdsClienteIDCLI: TFMTBCDField;
    cdsClienteNOMECLI: TWideStringField;
    cdsClienteAPELIDO: TWideStringField;
    cdsClienteTIPOPESSOA: TWideStringField;
    cdsClienteCPFCNPJ: TWideStringField;
    cdsClienteRG: TWideStringField;
    cdsClienteDATANASC: TSQLTimeStampField;
    cdsClienteESTADOCIVIL: TWideStringField;
    cdsClienteGENERO: TWideStringField;
    cdsClienteENDERECO: TWideStringField;
    cdsClienteBAIRRO: TWideStringField;
    cdsClienteCEP: TWideStringField;
    cdsClienteTELEFONE: TWideStringField;
    cdsClienteCELULAR: TWideStringField;
    cdsClienteEMAIL: TWideStringField;
    cdsClienteMIDIASOCIAL: TWideStringField;
    cdsClienteOBSERVACAO: TWideStringField;
    cdsClienteDATACADASTRO: TSQLTimeStampField;
    cdsClienteSITUACAO: TWideStringField;
    cdsClienteID_CID: TFMTBCDField;
    cdsClienteID_CID_1: TFMTBCDField;
    cdsClienteNOME_CID: TWideStringField;
    cdsClienteUF: TWideStringField;
    cdsClienteDATACADASTRO_1: TSQLTimeStampField;
    cdsFornecedorIDFORNECEDOR: TFMTBCDField;
    cdsFornecedorNOMEFANT_: TWideStringField;
    cdsFornecedorRAZAOSOCIAL: TWideStringField;
    cdsFornecedorCNPJ: TWideStringField;
    cdsFornecedorINSCEST: TWideStringField;
    cdsFornecedorDATAFUND: TSQLTimeStampField;
    cdsFornecedorENDERECO: TWideStringField;
    cdsFornecedorBAIRRO: TWideStringField;
    cdsFornecedorCEP: TWideStringField;
    cdsFornecedorREPRES: TWideStringField;
    cdsFornecedorTELEFONE: TWideStringField;
    cdsFornecedorCELULAR: TWideStringField;
    cdsFornecedorEMAIL: TWideStringField;
    cdsFornecedorSITE: TWideStringField;
    cdsFornecedorOBSERVACOES: TWideStringField;
    cdsFornecedorDATACADASTRO_: TSQLTimeStampField;
    cdsFornecedorSITUACAO: TWideStringField;
    cdsFornecedorID_CID: TFMTBCDField;
    cdsFornecedorID_CID_1: TFMTBCDField;
    cdsFornecedorNOME_CID: TWideStringField;
    cdsFornecedorUF: TWideStringField;
    sdsMarca: TSQLDataSet;
    dspMarca: TDataSetProvider;
    cdsMarca: TClientDataSet;
    cdsFornecedorDATACADASTRO: TSQLTimeStampField;
    cdsMarcaID: TFMTBCDField;
    cdsMarcaDESCRICAO: TWideStringField;
    cdsProdutoID: TFMTBCDField;
    cdsProdutoDESCRICAO: TWideStringField;
    cdsProdutoCOMPLEMENTO: TWideStringField;
    cdsProdutoCATEGORIA: TWideStringField;
    cdsProdutoUNIDADE: TWideStringField;
    cdsProdutoPRECOCUSTO: TFMTBCDField;
    cdsProdutoPRECOVENDA: TFMTBCDField;
    cdsProdutoESTOQUEATUAL: TFMTBCDField;
    cdsProdutoOBSERVACOES: TWideStringField;
    cdsProdutoSITUACAO: TWideStringField;
    cdsProdutoDATACADASTRO: TSQLTimeStampField;
    cdsProdutoID_1: TFMTBCDField;
    cdsProdutoDESCRICAO_1: TWideStringField;
    sdsVenda: TSQLDataSet;
    sdsItemVenda: TSQLDataSet;
    dspItemVenda: TDataSetProvider;
    dspVenda: TDataSetProvider;
    cdsItemVenda: TClientDataSet;
    cdsVenda: TClientDataSet;
    cdsUsuario: TClientDataSet;
    dspUsuario: TDataSetProvider;
    sdsUsuario: TSQLDataSet;
    cdsUsuarioID_USUARIO: TFMTBCDField;
    cdsUsuarioNOME: TWideStringField;
    cdsUsuarioLOGIN: TWideStringField;
    cdsUsuarioSENHA: TWideStringField;
    cdsUsuarioNIVELACESS: TWideStringField;
    cdsUsuarioDATACADASTRO: TSQLTimeStampField;
    cdsProdutoIDPRODUTO: TFMTBCDField;
    cdsVendaID_VENDA: TFMTBCDField;
    cdsVendaVENDEDOR: TWideStringField;
    cdsVendaNOMECLI: TWideStringField;
    cdsVendaCPFCNPJ: TWideStringField;
    cdsVendaVALORTOTAL: TFMTBCDField;
    cdsVendaDATA_VENDA: TSQLTimeStampField;
    cdsVendaFORMA_PAG: TWideStringField;
    cdsVendaTIPO_PAG: TWideStringField;
    cdsVendaIDCLI: TFMTBCDField;
    cdsVendaDESCONTO: TFMTBCDField;
    cdsVendaIDCLI_1: TFMTBCDField;
    cdsItemVendaIDPRODUTO: TFMTBCDField;
    cdsItemVendaQUANTIDADE: TFMTBCDField;
    cdsItemVendaPRECO: TFMTBCDField;
    cdsItemVendaSUBTOTAL: TFMTBCDField;
    sdsCompra: TSQLDataSet;
    dspCompra: TDataSetProvider;
    cdsCompra: TClientDataSet;
    sdsItemCompra: TSQLDataSet;
    dspItemCompra: TDataSetProvider;
    cdsItemCompra: TClientDataSet;
    cdsItemCompraID_COMPRA: TFMTBCDField;
    cdsItemCompraIDPRODUTO: TFMTBCDField;
    cdsItemCompraQUANTIDADE: TFMTBCDField;
    cdsItemCompraPRECO_COMPRA: TFMTBCDField;
    cdsItemCompraSUBTOTAL: TFMTBCDField;
    cdsProdutoCODBARRA: TFMTBCDField;
    cdsCompraID_COMPRA: TFMTBCDField;
    cdsCompraIDFORNECEDOR: TFMTBCDField;
    cdsCompraDATA_COMPRA: TSQLTimeStampField;
    cdsCompraFORMA_PAG: TWideStringField;
    cdsCompraVALORTOTAL: TFMTBCDField;
    cdsCompraDESCONTO: TFMTBCDField;
    cdsCompraTIPO_PAG: TWideStringField;
    cdsCompraRAZAOSOCIAL: TWideStringField;
    cdsCompraCNPJ: TWideStringField;
    cdsCompraIDFORNECEDOR_1: TFMTBCDField;
    cdsCompraREPRES: TWideStringField;
    sdsLancamento: TSQLDataSet;
    dspLancamento: TDataSetProvider;
    cdsLancamento: TClientDataSet;
    cdsLancamentoID_: TFMTBCDField;
    cdsLancamentoID_COMPRA: TFMTBCDField;
    cdsLancamentoID_VENDA: TFMTBCDField;
    cdsLancamentoTIPO_LANC: TWideStringField;
    cdsLancamentoVALOR: TFMTBCDField;
    cdsLancamentoFORMA_PAGAMENTO: TWideStringField;
    cdsLancamentoQTDE_PARC: TFMTBCDField;
    cdsItemVendaID_VENDA: TFMTBCDField;
    sdsFatura: TSQLDataSet;
    dspFatura: TDataSetProvider;
    cdsFatura: TClientDataSet;
    cdsLancamentoDATA_LANC: TSQLTimeStampField;
    cdsFaturaID: TFMTBCDField;
    cdsFaturaID_LANCAMENTO: TFMTBCDField;
    cdsFaturaNUM_PARCELA: TFMTBCDField;
    cdsFaturaVLR_PARCELA: TFMTBCDField;
    cdsFaturaVLR_RECEBER: TFMTBCDField;
    cdsFaturaDATA_EMISSAO: TSQLTimeStampField;
    cdsFaturaDATA_VENC: TSQLTimeStampField;
    cdsFaturaDATA_RECEBIDO: TSQLTimeStampField;
    cdsFaturaVLR_RESTANTE: TFMTBCDField;
    cdsFaturaTIPO_PAGAMENTO: TWideStringField;
    cdsFaturaNUM_FATURA: TFMTBCDField;
    cdsItemVendaDESCRICAO: TWideStringField;
    cdsVendaSITUACAO: TWideStringField;
    sdsRelatorioCliente: TSQLDataSet;
    sdsRelatorioFornecedor: TSQLDataSet;
    sdsRelatorioProduto: TSQLDataSet;
    procedure bancoAfterConnect(Sender: TObject);
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    transacao:TTransactionDesc;
  end;

var
  dm: Tdm;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure Tdm.bancoAfterConnect(Sender: TObject);
begin
//Banco.ExecuteDirect('alter session set nls_numeric_characters = ' + QuotedStr('.,'));
end;

procedure Tdm.DataModuleCreate(Sender: TObject);
begin
  transacao.IsolationLevel := xilREADCOMMITTED;
end;

end.
