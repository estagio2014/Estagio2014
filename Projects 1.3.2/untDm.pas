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
    cdsProdutoCODBARRA: TFMTBCDField;
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
    cdsItemVendaID_VENDA: TFMTBCDField;
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
