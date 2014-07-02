object dm: Tdm
  OldCreateOrder = False
  Height = 562
  Width = 635
  object banco: TSQLConnection
    ConnectionName = 'OracleConnection'
    DriverName = 'Oracle'
    LoginPrompt = False
    Params.Strings = (
      'DriverName=Oracle'
      'DataBase=127.1.1.1'
      'User_Name=calsystem'
      'Password=calsystem'
      'RowsetSize=20'
      'BlobSize=-1'
      'ErrorResourceFile='
      'LocaleCode=0000'
      'IsolationLevel=ReadCommitted'
      'OS Authentication=False'
      'Multiple Transaction=False'
      'Trim Char=False'
      'Decimal Separator=,')
    Connected = True
    Left = 32
    Top = 24
  end
  object sdsCidade: TSQLDataSet
    CommandText = 'select * from cidade'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = banco
    Left = 96
    Top = 75
  end
  object sdsCliente: TSQLDataSet
    SchemaName = 'delphi'
    CommandText = 
      'select * from cliente inner join cidade on cliente.id_cid = cida' +
      'de.id_cid'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = banco
    Left = 96
    Top = 139
  end
  object sdsFornecedor: TSQLDataSet
    SchemaName = 'calsystem'
    CommandText = 
      'select * from fornecedor inner join cidade on fornecedor.id_cid ' +
      '= cidade.id_cid'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = banco
    Left = 96
    Top = 203
  end
  object sdsProduto: TSQLDataSet
    SchemaName = 'calsystem'
    CommandText = 'select * from produto inner join marca on produto.id = marca.id'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = banco
    Left = 96
    Top = 267
  end
  object sdsComandoSql: TSQLDataSet
    MaxBlobSize = -1
    Params = <>
    SQLConnection = banco
    Left = 104
    Top = 504
  end
  object dspCidade: TDataSetProvider
    DataSet = sdsCidade
    Left = 184
    Top = 75
  end
  object cdsCidade: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspCidade'
    Left = 272
    Top = 75
    object cdsCidadeID_CID: TFMTBCDField
      FieldName = 'ID_CID'
      Required = True
      Precision = 32
    end
    object cdsCidadeNOME_CID: TWideStringField
      FieldName = 'NOME_CID'
      Size = 50
    end
    object cdsCidadeUF: TWideStringField
      FieldName = 'UF'
      FixedChar = True
      Size = 2
    end
    object cdsCidadeDATACADASTRO: TSQLTimeStampField
      FieldName = 'DATACADASTRO'
    end
  end
  object dspCliente: TDataSetProvider
    DataSet = sdsCliente
    Left = 184
    Top = 139
  end
  object cdsCliente: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspCliente'
    Left = 272
    Top = 139
    object cdsClienteIDCLI: TFMTBCDField
      FieldName = 'IDCLI'
      Required = True
      Precision = 32
    end
    object cdsClienteNOMECLI: TWideStringField
      FieldName = 'NOMECLI'
      Size = 50
    end
    object cdsClienteAPELIDO: TWideStringField
      FieldName = 'APELIDO'
      Size = 50
    end
    object cdsClienteTIPOPESSOA: TWideStringField
      FieldName = 'TIPOPESSOA'
      FixedChar = True
      Size = 2
    end
    object cdsClienteCPFCNPJ: TWideStringField
      FieldName = 'CPFCNPJ'
      Size = 30
    end
    object cdsClienteRG: TWideStringField
      FieldName = 'RG'
      Size = 15
    end
    object cdsClienteDATANASC: TSQLTimeStampField
      FieldName = 'DATANASC'
    end
    object cdsClienteESTADOCIVIL: TWideStringField
      FieldName = 'ESTADOCIVIL'
      Size = 15
    end
    object cdsClienteGENERO: TWideStringField
      FieldName = 'GENERO'
      FixedChar = True
      Size = 2
    end
    object cdsClienteENDERECO: TWideStringField
      FieldName = 'ENDERECO'
      Size = 50
    end
    object cdsClienteBAIRRO: TWideStringField
      FieldName = 'BAIRRO'
      Size = 30
    end
    object cdsClienteCEP: TWideStringField
      FieldName = 'CEP'
      Size = 10
    end
    object cdsClienteTELEFONE: TWideStringField
      FieldName = 'TELEFONE'
      Size = 12
    end
    object cdsClienteCELULAR: TWideStringField
      FieldName = 'CELULAR'
      Size = 12
    end
    object cdsClienteEMAIL: TWideStringField
      FieldName = 'EMAIL'
      Size = 50
    end
    object cdsClienteMIDIASOCIAL: TWideStringField
      FieldName = 'MIDIASOCIAL'
      Size = 80
    end
    object cdsClienteOBSERVACAO: TWideStringField
      FieldName = 'OBSERVACAO'
      Size = 200
    end
    object cdsClienteDATACADASTRO: TSQLTimeStampField
      FieldName = 'DATACADASTRO'
    end
    object cdsClienteSITUACAO: TWideStringField
      FieldName = 'SITUACAO'
      FixedChar = True
      Size = 1
    end
    object cdsClienteID_CID: TFMTBCDField
      FieldName = 'ID_CID'
      Precision = 32
    end
    object cdsClienteID_CID_1: TFMTBCDField
      FieldName = 'ID_CID_1'
      Required = True
      Precision = 32
    end
    object cdsClienteNOME_CID: TWideStringField
      FieldName = 'NOME_CID'
      Size = 50
    end
    object cdsClienteUF: TWideStringField
      FieldName = 'UF'
      FixedChar = True
      Size = 2
    end
    object cdsClienteDATACADASTRO_1: TSQLTimeStampField
      FieldName = 'DATACADASTRO_1'
    end
  end
  object dspFornecedor: TDataSetProvider
    DataSet = sdsFornecedor
    Left = 184
    Top = 203
  end
  object cdsFornecedor: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspFornecedor'
    Left = 272
    Top = 203
    object cdsFornecedorIDFORNECEDOR: TFMTBCDField
      FieldName = 'IDFORNECEDOR'
      Required = True
      Precision = 32
    end
    object cdsFornecedorNOMEFANT_: TWideStringField
      FieldName = 'NOMEFANT_'
      Size = 50
    end
    object cdsFornecedorRAZAOSOCIAL: TWideStringField
      FieldName = 'RAZAOSOCIAL'
      Size = 50
    end
    object cdsFornecedorCNPJ: TWideStringField
      FieldName = 'CNPJ'
      Size = 30
    end
    object cdsFornecedorINSCEST: TWideStringField
      FieldName = 'INSCEST'
    end
    object cdsFornecedorDATAFUND: TSQLTimeStampField
      FieldName = 'DATAFUND'
    end
    object cdsFornecedorENDERECO: TWideStringField
      FieldName = 'ENDERECO'
      Size = 50
    end
    object cdsFornecedorBAIRRO: TWideStringField
      FieldName = 'BAIRRO'
      Size = 30
    end
    object cdsFornecedorCEP: TWideStringField
      FieldName = 'CEP'
      Size = 10
    end
    object cdsFornecedorREPRES: TWideStringField
      FieldName = 'REPRES'
      Size = 50
    end
    object cdsFornecedorTELEFONE: TWideStringField
      FieldName = 'TELEFONE'
      Size = 13
    end
    object cdsFornecedorCELULAR: TWideStringField
      FieldName = 'CELULAR'
      Size = 13
    end
    object cdsFornecedorEMAIL: TWideStringField
      FieldName = 'EMAIL'
      Size = 50
    end
    object cdsFornecedorSITE: TWideStringField
      FieldName = 'SITE'
      Size = 50
    end
    object cdsFornecedorOBSERVACOES: TWideStringField
      FieldName = 'OBSERVACOES'
      Size = 200
    end
    object cdsFornecedorDATACADASTRO_: TSQLTimeStampField
      FieldName = 'DATACADASTRO_'
    end
    object cdsFornecedorSITUACAO: TWideStringField
      FieldName = 'SITUACAO'
      FixedChar = True
      Size = 1
    end
    object cdsFornecedorID_CID: TFMTBCDField
      FieldName = 'ID_CID'
      Precision = 32
    end
    object cdsFornecedorID_CID_1: TFMTBCDField
      FieldName = 'ID_CID_1'
      Required = True
      Precision = 32
    end
    object cdsFornecedorNOME_CID: TWideStringField
      FieldName = 'NOME_CID'
      Size = 50
    end
    object cdsFornecedorUF: TWideStringField
      FieldName = 'UF'
      FixedChar = True
      Size = 2
    end
    object cdsFornecedorDATACADASTRO: TSQLTimeStampField
      FieldName = 'DATACADASTRO'
    end
  end
  object dspProduto: TDataSetProvider
    DataSet = sdsProduto
    Left = 184
    Top = 267
  end
  object cdsProduto: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspProduto'
    Left = 272
    Top = 267
    object cdsProdutoIDPRODUTO: TWideStringField
      FieldName = 'IDPRODUTO'
      Required = True
    end
    object cdsProdutoID: TFMTBCDField
      FieldName = 'ID'
      Required = True
      Precision = 32
    end
    object cdsProdutoCODBARRA: TFMTBCDField
      FieldName = 'CODBARRA'
      Precision = 32
    end
    object cdsProdutoDESCRICAO: TWideStringField
      FieldName = 'DESCRICAO'
      Size = 30
    end
    object cdsProdutoCOMPLEMENTO: TWideStringField
      FieldName = 'COMPLEMENTO'
      Size = 30
    end
    object cdsProdutoCATEGORIA: TWideStringField
      FieldName = 'CATEGORIA'
      Size = 10
    end
    object cdsProdutoUNIDADE: TWideStringField
      FieldName = 'UNIDADE'
      FixedChar = True
      Size = 2
    end
    object cdsProdutoPRECOCUSTO: TFMTBCDField
      FieldName = 'PRECOCUSTO'
      Precision = 10
      Size = 2
    end
    object cdsProdutoPRECOVENDA: TFMTBCDField
      FieldName = 'PRECOVENDA'
      Precision = 10
      Size = 2
    end
    object cdsProdutoESTOQUEATUAL: TFMTBCDField
      FieldName = 'ESTOQUEATUAL'
      Precision = 32
    end
    object cdsProdutoOBSERVACOES: TWideStringField
      FieldName = 'OBSERVACOES'
      Size = 200
    end
    object cdsProdutoSITUACAO: TWideStringField
      FieldName = 'SITUACAO'
      FixedChar = True
      Size = 1
    end
    object cdsProdutoDATACADASTRO: TSQLTimeStampField
      FieldName = 'DATACADASTRO'
    end
    object cdsProdutoID_1: TFMTBCDField
      FieldName = 'ID_1'
      Required = True
      Precision = 32
    end
    object cdsProdutoDESCRICAO_1: TWideStringField
      FieldName = 'DESCRICAO_1'
      Size = 30
    end
  end
  object sdsMarca: TSQLDataSet
    SchemaName = 'calsystem'
    CommandText = 'SELECT * from marca'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = banco
    Left = 96
    Top = 331
  end
  object dspMarca: TDataSetProvider
    DataSet = sdsMarca
    Left = 184
    Top = 331
  end
  object cdsMarca: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'ID'
        Attributes = [faRequired]
        DataType = ftFMTBcd
        Precision = 32
        Size = 8
      end
      item
        Name = 'DESCRICAO'
        DataType = ftWideString
        Size = 30
      end>
    IndexDefs = <>
    Params = <>
    ProviderName = 'dspMarca'
    StoreDefs = True
    Left = 272
    Top = 331
    object cdsMarcaID: TFMTBCDField
      FieldName = 'ID'
      Required = True
      Precision = 32
    end
    object cdsMarcaDESCRICAO: TWideStringField
      FieldName = 'DESCRICAO'
      Size = 30
    end
  end
  object sdsVenda: TSQLDataSet
    SchemaName = 'calsystem'
    CommandText = 'select * from venda'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = banco
    Left = 96
    Top = 443
  end
  object sdsItemVenda: TSQLDataSet
    SchemaName = 'calsystem'
    CommandText = 'select * from Item_Venda'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = banco
    Left = 96
    Top = 391
  end
  object dspItemVenda: TDataSetProvider
    DataSet = sdsItemVenda
    Left = 184
    Top = 387
  end
  object dspVenda: TDataSetProvider
    DataSet = sdsVenda
    Left = 184
    Top = 443
  end
  object cdsItemVenda: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspItemVenda'
    Left = 272
    Top = 387
    object cdsItemVendaID_VENDA: TFMTBCDField
      FieldName = 'ID_VENDA'
      Required = True
      Precision = 32
    end
    object cdsItemVendaIDPRODUTO: TWideStringField
      FieldName = 'IDPRODUTO'
      Required = True
    end
    object cdsItemVendaQUANTIDADE: TFMTBCDField
      FieldName = 'QUANTIDADE'
      Precision = 32
    end
    object cdsItemVendaPRECO: TFMTBCDField
      FieldName = 'PRECO'
      Precision = 10
      Size = 2
    end
    object cdsItemVendaSUBTOTAL: TFMTBCDField
      FieldName = 'SUBTOTAL'
      Precision = 10
      Size = 2
    end
  end
  object cdsVenda: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspVenda'
    Left = 272
    Top = 443
    object cdsVendaID_VENDA: TFMTBCDField
      FieldName = 'ID_VENDA'
      Required = True
      Precision = 32
    end
    object cdsVendaIDCLI: TFMTBCDField
      FieldName = 'IDCLI'
      Required = True
      Precision = 32
    end
    object cdsVendaVENDEDOR: TWideStringField
      FieldName = 'VENDEDOR'
      Required = True
      Size = 30
    end
    object cdsVendaDESCONTO: TFMTBCDField
      FieldName = 'DESCONTO'
      Precision = 10
      Size = 2
    end
    object cdsVendaVALORTOTAL: TFMTBCDField
      FieldName = 'VALORTOTAL'
      Precision = 10
      Size = 2
    end
    object cdsVendaDATA_VENDA: TSQLTimeStampField
      FieldName = 'DATA_VENDA'
    end
    object cdsVendaFORMA_PAG: TWideStringField
      FieldName = 'FORMA_PAG'
    end
    object cdsVendaTIPO_PAG: TWideStringField
      FieldName = 'TIPO_PAG'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  object cdsUsuario: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspUsuario'
    Left = 272
    Top = 16
    object cdsUsuarioID_USUARIO: TFMTBCDField
      FieldName = 'ID_USUARIO'
      Required = True
      Precision = 32
    end
    object cdsUsuarioNOME: TWideStringField
      FieldName = 'NOME'
      Required = True
    end
    object cdsUsuarioLOGIN: TWideStringField
      FieldName = 'LOGIN'
      Required = True
    end
    object cdsUsuarioSENHA: TWideStringField
      FieldName = 'SENHA'
      Required = True
    end
    object cdsUsuarioNIVELACESS: TWideStringField
      FieldName = 'NIVELACESS'
      Required = True
    end
    object cdsUsuarioDATACADASTRO: TSQLTimeStampField
      FieldName = 'DATACADASTRO'
    end
  end
  object dspUsuario: TDataSetProvider
    DataSet = sdsUsuario
    Left = 184
    Top = 16
  end
  object sdsUsuario: TSQLDataSet
    SchemaName = 'calsystem'
    CommandText = 'select * from usuario'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = banco
    Left = 104
    Top = 16
  end
end
