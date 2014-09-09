object frmRelatorios: TfrmRelatorios
  Left = 0
  Top = 0
  Caption = 'Relat'#243'rios'
  ClientHeight = 423
  ClientWidth = 475
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object frxReportCliente: TfrxReport
    Version = '4.12.13'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41818.005193449100000000
    ReportOptions.LastChange = 41818.032746481500000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 48
    Top = 8
    Datasets = <
      item
        DataSet = frxDBDatasetCliente
        DataSetName = 'frxDBDatasetCliente'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle1: TfrxReportTitle
        Height = 68.031540000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo2: TfrxMemoView
          Align = baWidth
          Top = 37.795300000000000000
          Width = 718.110700000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -24
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Relat'#243'rio de Clientes')
          ParentFont = False
        end
        object Date: TfrxMemoView
          Align = baRight
          Left = 638.740569999999900000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Date]')
          ParentFont = False
        end
      end
      object Memo1: TfrxMemoView
        Align = baWidth
        Top = 15.118120000000000000
        Width = 718.110700000000000000
        Height = 22.677180000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = []
        Memo.UTF8W = (
          'Calsystem')
        ParentFont = False
      end
      object MasterDataCliente: TfrxMasterData
        Height = 18.897650000000000000
        Top = 196.535560000000000000
        Width = 718.110700000000000000
        DataSet = frxDBDatasetCliente
        DataSetName = 'frxDBDatasetCliente'
        RowCount = 0
        object frxDBDatasetClienteIDCLI: TfrxMemoView
          Align = baLeft
          Top = 0.338590000000010600
          Width = 79.370130000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'IDCLI'
          DataSet = frxDBDatasetCliente
          DataSetName = 'frxDBDatasetCliente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDatasetCliente."IDCLI"]')
          ParentFont = False
        end
        object frxDBDatasetClienteNOMECLI: TfrxMemoView
          Align = baLeft
          Left = 79.370130000000000000
          Top = 0.338590000000010600
          Width = 226.771800000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'NOMECLI'
          DataSet = frxDBDatasetCliente
          DataSetName = 'frxDBDatasetCliente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDatasetCliente."NOMECLI"]')
          ParentFont = False
        end
        object frxDBDatasetClienteTIPOPESSOA: TfrxMemoView
          Align = baLeft
          Left = 306.141930000000000000
          Top = 0.338590000000010600
          Width = 49.133890000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'TIPOPESSOA'
          DataSet = frxDBDatasetCliente
          DataSetName = 'frxDBDatasetCliente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDatasetCliente."TIPOPESSOA"]')
          ParentFont = False
        end
        object frxDBDatasetClienteCPFCNPJ: TfrxMemoView
          Align = baLeft
          Left = 355.275820000000000000
          Top = 0.338590000000010600
          Width = 143.622140000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'CPFCNPJ'
          DataSet = frxDBDatasetCliente
          DataSetName = 'frxDBDatasetCliente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDatasetCliente."CPFCNPJ"]')
          ParentFont = False
        end
        object frxDBDatasetClienteDATACADASTRO_1: TfrxMemoView
          Align = baLeft
          Left = 498.897960000000000000
          Top = 0.338590000000010600
          Width = 120.944960000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'DATACADASTRO_1'
          DataSet = frxDBDatasetCliente
          DataSetName = 'frxDBDatasetCliente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDatasetCliente."DATACADASTRO_1"]')
          ParentFont = False
        end
        object frxDBDatasetClienteSITUACAO: TfrxMemoView
          Align = baLeft
          Left = 619.842920000000000000
          Top = 0.338590000000010600
          Width = 98.267780000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'SITUACAO'
          DataSet = frxDBDatasetCliente
          DataSetName = 'frxDBDatasetCliente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDatasetCliente."SITUACAO"]')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 26.456710000000000000
        Top = 109.606370000000000000
        Width = 718.110700000000000000
        object Memo3: TfrxMemoView
          Align = baLeft
          Top = 3.779529999999994000
          Width = 79.370130000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Color = 14211288
          DataSet = frxDBDatasetCliente
          DataSetName = 'frxDBDatasetCliente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'C'#243'digo')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Align = baLeft
          Left = 79.370130000000000000
          Top = 3.779529999999994000
          Width = 226.771800000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Color = 14211288
          DataSet = frxDBDatasetCliente
          DataSetName = 'frxDBDatasetCliente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Nome')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Align = baLeft
          Left = 306.141930000000000000
          Top = 3.779529999999994000
          Width = 49.133890000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Color = 14211288
          DataSet = frxDBDatasetCliente
          DataSetName = 'frxDBDatasetCliente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Tipo')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Align = baLeft
          Left = 355.275820000000000000
          Top = 3.779529999999994000
          Width = 143.622140000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Color = 14211288
          DataSet = frxDBDatasetCliente
          DataSetName = 'frxDBDatasetCliente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Cpf / Cnpj')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Align = baLeft
          Left = 498.897960000000000000
          Top = 3.779529999999994000
          Width = 120.944960000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Color = 14211288
          DataSet = frxDBDatasetCliente
          DataSetName = 'frxDBDatasetCliente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Data de Cadastro')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Align = baLeft
          Left = 619.842920000000000000
          Top = 3.779529999999994000
          Width = 98.267780000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Color = 14211288
          DataSet = frxDBDatasetCliente
          DataSetName = 'frxDBDatasetCliente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Situa'#231#227'o')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 22.677180000000000000
        Top = 275.905690000000000000
        Width = 718.110700000000000000
        object Page: TfrxMemoView
          Align = baRight
          Left = 672.756339999999900000
          Top = 3.779530000000022000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[Page#]')
          ParentFont = False
        end
      end
    end
  end
  object frxDBDatasetCliente: TfrxDBDataset
    UserName = 'frxDBDatasetCliente'
    CloseDataSource = False
    DataSet = dm.SQLRelatorioCliente
    BCDToCurrency = False
    Left = 168
    Top = 8
  end
  object frxReportFornecedor: TfrxReport
    Version = '4.12.13'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41818.036058588000000000
    ReportOptions.LastChange = 41818.449796724500000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 48
    Top = 64
    Datasets = <
      item
        DataSet = frxDBDatasetFornecedor
        DataSetName = 'frxDBDatasetFornecedor'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle1: TfrxReportTitle
        Height = 68.031540000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo2: TfrxMemoView
          Align = baWidth
          Top = 37.795300000000000000
          Width = 718.110700000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -24
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Relat'#243'rio de Fornecedores')
          ParentFont = False
        end
        object Date: TfrxMemoView
          Align = baRight
          Left = 638.740569999999900000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Date]')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          Align = baWidth
          Width = 638.740569999999900000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Calsystem')
          ParentFont = False
        end
      end
      object MasterDataFornecedor: TfrxMasterData
        Height = 22.677180000000000000
        Top = 196.535560000000000000
        Width = 718.110700000000000000
        DataSet = frxDBDatasetFornecedor
        DataSetName = 'frxDBDatasetFornecedor'
        RowCount = 0
        object frxDBDatasetFornecedorIDFORNECEDOR: TfrxMemoView
          Align = baLeft
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'IDFORNECEDOR'
          DataSet = frxDBDatasetFornecedor
          DataSetName = 'frxDBDatasetFornecedor'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDatasetFornecedor."IDFORNECEDOR"]')
          ParentFont = False
        end
        object frxDBDatasetFornecedorRAZAOSOCIAL: TfrxMemoView
          Align = baLeft
          Left = 94.488250000000000000
          Width = 158.740260000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'RAZAOSOCIAL'
          DataSet = frxDBDatasetFornecedor
          DataSetName = 'frxDBDatasetFornecedor'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDatasetFornecedor."RAZAOSOCIAL"]')
          ParentFont = False
        end
        object frxDBDatasetFornecedorCNPJ: TfrxMemoView
          Align = baLeft
          Left = 253.228510000000000000
          Width = 154.960730000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'CNPJ'
          DataSet = frxDBDatasetFornecedor
          DataSetName = 'frxDBDatasetFornecedor'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDatasetFornecedor."CNPJ"]')
          ParentFont = False
        end
        object frxDBDatasetFornecedorNOME_CID: TfrxMemoView
          Align = baLeft
          Left = 408.189240000000000000
          Width = 162.519790000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'NOME_CID'
          DataSet = frxDBDatasetFornecedor
          DataSetName = 'frxDBDatasetFornecedor'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDatasetFornecedor."NOME_CID"]')
          ParentFont = False
        end
        object frxDBDatasetFornecedorUF: TfrxMemoView
          Left = 570.709030000000000000
          Width = 34.015770000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'UF'
          DataSet = frxDBDatasetFornecedor
          DataSetName = 'frxDBDatasetFornecedor'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDatasetFornecedor."UF"]')
          ParentFont = False
        end
        object frxDBDatasetFornecedorSITUACAO: TfrxMemoView
          Left = 604.724800000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'SITUACAO'
          DataSet = frxDBDatasetFornecedor
          DataSetName = 'frxDBDatasetFornecedor'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDatasetFornecedor."SITUACAO"]')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 26.456710000000000000
        Top = 109.606370000000000000
        Width = 718.110700000000000000
        object Memo3: TfrxMemoView
          Align = baLeft
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = 13421772
          DataSet = frxDBDatasetFornecedor
          DataSetName = 'frxDBDatasetFornecedor'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'C'#243'digo')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Align = baLeft
          Left = 94.488250000000000000
          Width = 158.740260000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = 13421772
          DataSet = frxDBDatasetFornecedor
          DataSetName = 'frxDBDatasetFornecedor'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Raz'#227'o Social')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Align = baLeft
          Left = 253.228510000000000000
          Width = 154.960730000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = 13421772
          DataSet = frxDBDatasetFornecedor
          DataSetName = 'frxDBDatasetFornecedor'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Cnpj')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Align = baLeft
          Left = 408.189240000000000000
          Width = 162.519790000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = 13421772
          DataSet = frxDBDatasetFornecedor
          DataSetName = 'frxDBDatasetFornecedor'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Cidade')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Align = baLeft
          Left = 570.709030000000000000
          Width = 34.015770000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = 13421772
          DataSet = frxDBDatasetFornecedor
          DataSetName = 'frxDBDatasetFornecedor'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'UF')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Align = baLeft
          Left = 604.724800000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = 13421772
          DataSet = frxDBDatasetFornecedor
          DataSetName = 'frxDBDatasetFornecedor'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Situa'#231#227'o')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        Height = 22.677180000000000000
        Top = 241.889920000000000000
        Width = 718.110700000000000000
        RowCount = 0
      end
      object PageFooter1: TfrxPageFooter
        Height = 22.677180000000000000
        Top = 325.039580000000000000
        Width = 718.110700000000000000
        object Page: TfrxMemoView
          Align = baRight
          Left = 676.535869999999900000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[Page#]')
          ParentFont = False
        end
      end
    end
  end
  object frxDBDatasetFornecedor: TfrxDBDataset
    UserName = 'frxDBDatasetFornecedor'
    CloseDataSource = False
    DataSet = dm.SQLRelatorioFornecedor
    BCDToCurrency = False
    Left = 168
    Top = 64
  end
  object frxReportProduto: TfrxReport
    Version = '4.12.13'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41818.485849838000000000
    ReportOptions.LastChange = 41818.498962974500000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 48
    Top = 120
    Datasets = <
      item
        DataSet = frxDBDatasetProduto
        DataSetName = 'frxDBDatasetProduto'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle1: TfrxReportTitle
        Height = 86.929190000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo2: TfrxMemoView
          Align = baWidth
          Top = 37.795300000000000000
          Width = 718.110700000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -24
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Relat'#243'rio de Produtos')
          ParentFont = False
        end
        object Date: TfrxMemoView
          Align = baRight
          Left = 638.740569999999900000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Date]')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          Align = baWidth
          Width = 638.740569999999900000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Calsystem')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        Height = 22.677180000000000000
        Top = 215.433210000000000000
        Width = 718.110700000000000000
        DataSet = frxDBDatasetProduto
        DataSetName = 'frxDBDatasetProduto'
        RowCount = 0
        object frxDBDatasetProdutoCODBARRA: TfrxMemoView
          Align = baLeft
          Top = 0.779529999999994100
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'CODBARRA'
          DataSet = frxDBDatasetProduto
          DataSetName = 'frxDBDatasetProduto'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDatasetProduto."CODBARRA"]')
          ParentFont = False
        end
        object frxDBDatasetProdutoDESCRICAO: TfrxMemoView
          Align = baLeft
          Left = 98.267780000000000000
          Top = 0.779529999999994100
          Width = 200.315090000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'DESCRICAO'
          DataSet = frxDBDatasetProduto
          DataSetName = 'frxDBDatasetProduto'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDatasetProduto."DESCRICAO"]')
          ParentFont = False
        end
        object frxDBDatasetProdutoPRECOCUSTO: TfrxMemoView
          Align = baLeft
          Left = 298.582870000000000000
          Top = 0.779529999999994100
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'PRECOVENDA'
          DataSet = frxDBDatasetProduto
          DataSetName = 'frxDBDatasetProduto'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDatasetProduto."PRECOVENDA"]')
          ParentFont = False
        end
        object frxDBDatasetProdutoPRECOVENDA: TfrxMemoView
          Align = baLeft
          Left = 385.512060000000000000
          Top = 0.779529999999994100
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'DESCRICAO_1'
          DataSet = frxDBDatasetProduto
          DataSetName = 'frxDBDatasetProduto'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDatasetProduto."DESCRICAO_1"]')
          ParentFont = False
        end
        object frxDBDatasetProdutoESTOQUEATUAL: TfrxMemoView
          Align = baLeft
          Left = 472.441250000000000000
          Top = 0.779529999999994100
          Width = 143.622140000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'ESTOQUEATUAL'
          DataSet = frxDBDatasetProduto
          DataSetName = 'frxDBDatasetProduto'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDatasetProduto."ESTOQUEATUAL"]')
          ParentFont = False
        end
        object frxDBDatasetProdutoDATACADASTRO: TfrxMemoView
          Align = baLeft
          Left = 616.063390000000000000
          Top = 0.779529999999994100
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'DATACADASTRO'
          DataSet = frxDBDatasetProduto
          DataSetName = 'frxDBDatasetProduto'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDatasetProduto."DATACADASTRO"]')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 26.456710000000000000
        Top = 128.504020000000000000
        Width = 718.110700000000000000
        object Memo3: TfrxMemoView
          Align = baLeft
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = 13421772
          DataSet = frxDBDatasetProduto
          DataSetName = 'frxDBDatasetProduto'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Cod. Barra')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Align = baLeft
          Left = 98.267780000000000000
          Width = 200.315090000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = clSilver
          DataSet = frxDBDatasetProduto
          DataSetName = 'frxDBDatasetProduto'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Descri'#231#227'o')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Align = baLeft
          Left = 298.582870000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = 13421772
          DataSet = frxDBDatasetProduto
          DataSetName = 'frxDBDatasetProduto'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Pre'#231'o Venda')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Align = baLeft
          Left = 385.512060000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = 13421772
          DataSet = frxDBDatasetProduto
          DataSetName = 'frxDBDatasetProduto'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Marca')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Align = baLeft
          Left = 472.441250000000000000
          Width = 143.622140000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = 13421772
          DataSet = frxDBDatasetProduto
          DataSetName = 'frxDBDatasetProduto'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Estoque')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Align = baLeft
          Left = 616.063390000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = 13421772
          DataSet = frxDBDatasetProduto
          DataSetName = 'frxDBDatasetProduto'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Data Cadastro')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 22.677180000000000000
        Top = 298.582870000000000000
        Width = 718.110700000000000000
        object Page: TfrxMemoView
          Align = baRight
          Left = 676.535869999999900000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[Page#]')
          ParentFont = False
        end
      end
    end
  end
  object frxDBDatasetProduto: TfrxDBDataset
    UserName = 'frxDBDatasetProduto'
    CloseDataSource = False
    DataSet = dm.SQLRelatorioProduto
    BCDToCurrency = False
    Left = 168
    Top = 120
  end
  object frxReportCompra: TfrxReport
    Version = '4.12.13'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41874.687779687500000000
    ReportOptions.LastChange = 41874.687779687500000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 48
    Top = 176
    Datasets = <
      item
        DataSet = frxDBDatasetCompra
        DataSetName = 'frxDBDatasetCompra'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle1: TfrxReportTitle
        Height = 86.929190000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo2: TfrxMemoView
          Align = baWidth
          Top = 37.795300000000000000
          Width = 718.110700000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -24
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Relat'#243'rio de Compra')
          ParentFont = False
        end
        object Date: TfrxMemoView
          Align = baRight
          Left = 638.740569999999900000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Date]')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          Align = baWidth
          Width = 638.740569999999900000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Calsystem')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 26.456710000000000000
        Top = 128.504020000000000000
        Width = 718.110700000000000000
        object Memo3: TfrxMemoView
          Align = baLeft
          Left = 166.299320000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = clSilver
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Data Compra')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Align = baLeft
          Width = 166.299320000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = clSilver
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Nome Fantasia')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Align = baLeft
          Left = 279.685220000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = clSilver
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Total')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Align = baLeft
          Left = 385.512060000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = clSilver
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Tipo Pag.')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Align = baLeft
          Left = 430.866420000000000000
          Width = 181.417440000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = clSilver
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'CNPJ')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 612.283860000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = clSilver
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Situa'#231#227'o')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 22.677180000000000000
        Top = 298.582870000000000000
        Width = 718.110700000000000000
        object Page: TfrxMemoView
          Align = baRight
          Left = 676.535869999999900000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[Page#]')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        Height = 22.677180000000000000
        Top = 215.433210000000000000
        Width = 718.110700000000000000
        DataSet = frxDBDatasetCompra
        DataSetName = 'frxDBDatasetCompra'
        RowCount = 0
        object frxDBDatasetCompraDATA_COMPRA: TfrxMemoView
          Align = baLeft
          Left = 166.299320000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'DATA_COMPRA'
          DataSet = frxDBDatasetCompra
          DataSetName = 'frxDBDatasetCompra'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDatasetCompra."DATA_COMPRA"]')
          ParentFont = False
        end
        object frxDBDatasetCompraNOMEFANT_: TfrxMemoView
          Align = baLeft
          Width = 166.299320000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'NOMEFANT_'
          DataSet = frxDBDatasetCompra
          DataSetName = 'frxDBDatasetCompra'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDatasetCompra."NOMEFANT_"]')
          ParentFont = False
        end
        object frxDBDatasetCompraVALORTOTAL: TfrxMemoView
          Align = baLeft
          Left = 279.685220000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'VALORTOTAL'
          DataSet = frxDBDatasetCompra
          DataSetName = 'frxDBDatasetCompra'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDatasetCompra."VALORTOTAL"]')
          ParentFont = False
        end
        object frxDBDatasetCompraTIPO_PAG: TfrxMemoView
          Align = baLeft
          Left = 385.512060000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'TIPO_PAG'
          DataSet = frxDBDatasetCompra
          DataSetName = 'frxDBDatasetCompra'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDatasetCompra."TIPO_PAG"]')
          ParentFont = False
        end
        object frxDBDatasetCompraCNPJ: TfrxMemoView
          Align = baLeft
          Left = 430.866420000000000000
          Width = 181.417440000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'CNPJ'
          DataSet = frxDBDatasetCompra
          DataSetName = 'frxDBDatasetCompra'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDatasetCompra."CNPJ"]')
          ParentFont = False
        end
        object frxDBDatasetCompraSITUACAO: TfrxMemoView
          Left = 612.283860000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'SITUACAO'
          DataSet = frxDBDatasetCompra
          DataSetName = 'frxDBDatasetCompra'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDatasetCompra."SITUACAO"]')
          ParentFont = False
        end
      end
    end
  end
  object frxDBDatasetCompra: TfrxDBDataset
    UserName = 'frxDBDatasetCompra'
    CloseDataSource = False
    DataSet = dm.SQLRelatorioCompra
    BCDToCurrency = False
    Left = 168
    Top = 176
  end
  object frxReportVenda: TfrxReport
    Version = '4.12.13'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41874.696153645800000000
    ReportOptions.LastChange = 41874.696153645800000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 48
    Top = 232
    Datasets = <
      item
        DataSet = frxDBDatasetVenda
        DataSetName = 'frxDBDatasetVenda'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle1: TfrxReportTitle
        Height = 86.929190000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo2: TfrxMemoView
          Align = baWidth
          Top = 37.795300000000000000
          Width = 718.110700000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -24
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Relat'#243'rio de Venda')
          ParentFont = False
        end
        object Date: TfrxMemoView
          Align = baRight
          Left = 638.740569999999900000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Date]')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          Align = baWidth
          Width = 638.740569999999900000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Calsystem')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 22.677180000000000000
        Top = 298.582870000000000000
        Width = 718.110700000000000000
        object Page: TfrxMemoView
          Align = baRight
          Left = 676.535869999999900000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[Page#]')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        Height = 22.677180000000000000
        Top = 215.433210000000000000
        Width = 718.110700000000000000
        DataSet = frxDBDatasetVenda
        DataSetName = 'frxDBDatasetVenda'
        RowCount = 0
        object frxDBDatasetVendaVENDEDOR: TfrxMemoView
          Align = baLeft
          Width = 147.401670000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'VENDEDOR'
          DataSet = frxDBDatasetVenda
          DataSetName = 'frxDBDatasetVenda'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDatasetVenda."VENDEDOR"]')
          ParentFont = False
        end
        object frxDBDatasetVendaDATA_VENDA: TfrxMemoView
          Align = baLeft
          Left = 147.401670000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'DATA_VENDA'
          DataSet = frxDBDatasetVenda
          DataSetName = 'frxDBDatasetVenda'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDatasetVenda."DATA_VENDA"]')
          ParentFont = False
        end
        object frxDBDatasetVendaVALORTOTAL: TfrxMemoView
          Align = baLeft
          Left = 241.889920000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'VALORTOTAL'
          DataSet = frxDBDatasetVenda
          DataSetName = 'frxDBDatasetVenda'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDatasetVenda."VALORTOTAL"]')
          ParentFont = False
        end
        object frxDBDatasetVendaNOMECLI: TfrxMemoView
          Left = 336.378170000000000000
          Width = 143.622140000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'NOMECLI'
          DataSet = frxDBDatasetVenda
          DataSetName = 'frxDBDatasetVenda'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDatasetVenda."NOMECLI"]')
          ParentFont = False
        end
        object frxDBDatasetVendaCPFCNPJ: TfrxMemoView
          Align = baLeft
          Left = 480.000310000000000000
          Width = 147.401670000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'CPFCNPJ'
          DataSet = frxDBDatasetVenda
          DataSetName = 'frxDBDatasetVenda'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDatasetVenda."CPFCNPJ"]')
          ParentFont = False
        end
        object frxDBDatasetVendaSITUACAO: TfrxMemoView
          Align = baRight
          Left = 627.401980000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'SITUACAO'
          DataSet = frxDBDatasetVenda
          DataSetName = 'frxDBDatasetVenda'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDatasetVenda."SITUACAO"]')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 26.456710000000000000
        Top = 128.504020000000000000
        Width = 718.110700000000000000
        object Memo3: TfrxMemoView
          Align = baLeft
          Width = 147.401670000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = clSilver
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Vendedor')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Align = baLeft
          Left = 147.401670000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = clSilver
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Data Venda')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Align = baLeft
          Left = 241.889920000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = clSilver
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Total')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 336.378170000000000000
          Width = 143.622140000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = clSilver
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Cliente')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Align = baLeft
          Left = 480.000310000000000000
          Width = 147.401670000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = clSilver
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'CPF/CNPJ')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Align = baRight
          Left = 627.401980000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = clSilver
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Situa'#231#227'o')
          ParentFont = False
        end
      end
    end
  end
  object frxDBDatasetVenda: TfrxDBDataset
    UserName = 'frxDBDatasetVenda'
    CloseDataSource = False
    DataSet = dm.SQLRelatorioVenda
    BCDToCurrency = False
    Left = 168
    Top = 232
  end
  object frxReportFatura: TfrxReport
    Version = '4.12.13'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41874.715404965310000000
    ReportOptions.LastChange = 41874.715404965310000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 48
    Top = 288
    Datasets = <
      item
        DataSet = frxDBDatasetFatura
        DataSetName = 'frxDBDatasetFatura'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle1: TfrxReportTitle
        Height = 86.929190000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo2: TfrxMemoView
          Align = baWidth
          Top = 37.795300000000000000
          Width = 718.110700000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -24
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Relat'#243'rio de Faturas')
          ParentFont = False
        end
        object Date: TfrxMemoView
          Align = baRight
          Left = 638.740569999999900000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Date]')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          Align = baWidth
          Width = 638.740569999999900000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Calsystem')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 22.677180000000000000
        Top = 298.582870000000000000
        Width = 718.110700000000000000
        object Page: TfrxMemoView
          Align = baRight
          Left = 676.535869999999900000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[Page#]')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        Height = 22.677180000000000000
        Top = 215.433210000000000000
        Width = 718.110700000000000000
        DataSet = frxDBDatasetFatura
        DataSetName = 'frxDBDatasetFatura'
        RowCount = 0
        object frxDBDatasetFaturaID_LANCAMENTO: TfrxMemoView
          Align = baRight
          Left = 52.913420000000020000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'ID_LANCAMENTO'
          DataSet = frxDBDatasetFatura
          DataSetName = 'frxDBDatasetFatura'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDatasetFatura."ID_LANCAMENTO"]')
          ParentFont = False
        end
        object frxDBDatasetFaturaNUM_PARCELA: TfrxMemoView
          Align = baRight
          Left = 151.181200000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'NUM_PARCELA'
          DataSet = frxDBDatasetFatura
          DataSetName = 'frxDBDatasetFatura'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDatasetFatura."NUM_PARCELA"]')
          ParentFont = False
        end
        object frxDBDatasetFaturaVLR_PARCELA: TfrxMemoView
          Align = baRight
          Left = 219.212740000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'VLR_PARCELA'
          DataSet = frxDBDatasetFatura
          DataSetName = 'frxDBDatasetFatura'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDatasetFatura."VLR_PARCELA"]')
          ParentFont = False
        end
        object frxDBDatasetFaturaDATA_EMISSAO: TfrxMemoView
          Align = baRight
          Left = 328.819110000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'DATA_EMISSAO'
          DataSet = frxDBDatasetFatura
          DataSetName = 'frxDBDatasetFatura'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDatasetFatura."DATA_EMISSAO"]')
          ParentFont = False
        end
        object frxDBDatasetFaturaDATA_VENC: TfrxMemoView
          Align = baRight
          Left = 430.866420000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'DATA_VENC'
          DataSet = frxDBDatasetFatura
          DataSetName = 'frxDBDatasetFatura'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDatasetFatura."DATA_VENC"]')
          ParentFont = False
        end
        object frxDBDatasetFaturaNUM_FATURA: TfrxMemoView
          Align = baRight
          Left = 532.913730000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'NUM_FATURA'
          DataSet = frxDBDatasetFatura
          DataSetName = 'frxDBDatasetFatura'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDatasetFatura."NUM_FATURA"]')
          ParentFont = False
        end
        object frxDBDatasetFaturaSITUACAO: TfrxMemoView
          Left = 616.063390000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'SITUACAO'
          DataSet = frxDBDatasetFatura
          DataSetName = 'frxDBDatasetFatura'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDatasetFatura."SITUACAO"]')
          ParentFont = False
        end
        object frxDBDatasetFaturaID: TfrxMemoView
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'ID'
          DataSet = frxDBDatasetFatura
          DataSetName = 'frxDBDatasetFatura'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDatasetFatura."ID"]')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 26.456710000000000000
        Top = 128.504020000000000000
        Width = 718.110700000000000000
        object Memo3: TfrxMemoView
          Align = baRight
          Left = 52.913420000000020000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = clSilver
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Lan'#231'amento')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Align = baRight
          Left = 151.181200000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = clSilver
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Parcela')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Align = baRight
          Left = 219.212740000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = clSilver
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Valor Parcela')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Align = baRight
          Left = 328.819110000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = clSilver
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Data Emiss'#227'o')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Align = baRight
          Left = 430.866420000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = clSilver
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Data Venc.')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Align = baRight
          Left = 532.913730000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = clSilver
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Num. Fatura')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 616.063390000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = clSilver
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Situa'#231#227'o')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = clSilver
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'C'#243'digo')
          ParentFont = False
        end
      end
    end
  end
  object frxReportLancamento: TfrxReport
    Version = '4.12.13'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41874.715454988400000000
    ReportOptions.LastChange = 41874.715454988400000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 48
    Top = 344
    Datasets = <
      item
        DataSet = frxDBDatasetLancamento
        DataSetName = 'frxDBDatasetLancamento'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle1: TfrxReportTitle
        Height = 86.929190000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo2: TfrxMemoView
          Align = baWidth
          Top = 37.795300000000000000
          Width = 718.110700000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -24
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Relat'#243'rio de Faturas')
          ParentFont = False
        end
        object Date: TfrxMemoView
          Align = baRight
          Left = 638.740569999999900000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Date]')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          Align = baWidth
          Width = 638.740569999999900000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Calsystem')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 22.677180000000000000
        Top = 298.582870000000000000
        Width = 718.110700000000000000
        object Page: TfrxMemoView
          Align = baRight
          Left = 676.535869999999900000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[Page#]')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        Height = 22.677180000000000000
        Top = 215.433210000000000000
        Width = 718.110700000000000000
        DataSet = frxDBDatasetLancamento
        DataSetName = 'frxDBDatasetLancamento'
        RowCount = 0
        object frxDBDatasetLancamentoID_COMPRA: TfrxMemoView
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'ID_COMPRA'
          DataSet = frxDBDatasetLancamento
          DataSetName = 'frxDBDatasetLancamento'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDatasetLancamento."ID_COMPRA"]')
          ParentFont = False
        end
        object frxDBDatasetLancamentoTIPO_LANC: TfrxMemoView
          Left = 162.519790000000000000
          Width = 154.960730000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'TIPO_LANC'
          DataSet = frxDBDatasetLancamento
          DataSetName = 'frxDBDatasetLancamento'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDatasetLancamento."TIPO_LANC"]')
          ParentFont = False
        end
        object frxDBDatasetLancamentoVALOR: TfrxMemoView
          Align = baRight
          Left = 317.480519999999900000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'VALOR'
          DataSet = frxDBDatasetLancamento
          DataSetName = 'frxDBDatasetLancamento'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDatasetLancamento."VALOR"]')
          ParentFont = False
        end
        object frxDBDatasetLancamentoFORMA_PAGAMENTO: TfrxMemoView
          Align = baRight
          Left = 415.748300000000000000
          Width = 136.063080000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'FORMA_PAGAMENTO'
          DataSet = frxDBDatasetLancamento
          DataSetName = 'frxDBDatasetLancamento'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDatasetLancamento."FORMA_PAGAMENTO"]')
          ParentFont = False
        end
        object frxDBDatasetLancamentoQTDE_PARC: TfrxMemoView
          Align = baRight
          Left = 551.811380000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'QTDE_PARC'
          DataSet = frxDBDatasetLancamento
          DataSetName = 'frxDBDatasetLancamento'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDatasetLancamento."QTDE_PARC"]')
          ParentFont = False
        end
        object frxDBDatasetLancamentoDATA_LANC: TfrxMemoView
          Align = baRight
          Left = 638.740569999999900000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'DATA_LANC'
          DataSet = frxDBDatasetLancamento
          DataSetName = 'frxDBDatasetLancamento'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDatasetLancamento."DATA_LANC"]')
          ParentFont = False
        end
        object frxDBDatasetLancamentoID_VENDA: TfrxMemoView
          Left = 83.149660000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'ID_VENDA'
          DataSet = frxDBDatasetLancamento
          DataSetName = 'frxDBDatasetLancamento'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDatasetLancamento."ID_VENDA"]')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 26.456710000000000000
        Top = 128.504020000000000000
        Width = 718.110700000000000000
        object Memo5: TfrxMemoView
          Left = 162.519790000000000000
          Width = 154.960730000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = clSilver
          DataSet = frxDBDatasetLancamento
          DataSetName = 'frxDBDatasetLancamento'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Tipo Lan'#231'amento')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Align = baRight
          Left = 317.480519999999900000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = clSilver
          DataSet = frxDBDatasetLancamento
          DataSetName = 'frxDBDatasetLancamento'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Valor')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Align = baRight
          Left = 415.748300000000000000
          Width = 136.063080000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = clSilver
          DataSet = frxDBDatasetLancamento
          DataSetName = 'frxDBDatasetLancamento'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Forma de Pagamento')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Align = baRight
          Left = 551.811380000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = clSilver
          DataSet = frxDBDatasetLancamento
          DataSetName = 'frxDBDatasetLancamento'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Qtd Parcela')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Align = baRight
          Left = 638.740569999999900000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = clSilver
          DataSet = frxDBDatasetLancamento
          DataSetName = 'frxDBDatasetLancamento'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Data Lanc.')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = clSilver
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'C'#243'd. Compra')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 83.149660000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = clSilver
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'C'#243'd. Venda')
          ParentFont = False
        end
      end
    end
  end
  object frxDBDatasetFatura: TfrxDBDataset
    UserName = 'frxDBDatasetFatura'
    CloseDataSource = False
    DataSet = dm.SQLRelatoriotFatura
    BCDToCurrency = False
    Left = 168
    Top = 288
  end
  object frxDBDatasetLancamento: TfrxDBDataset
    UserName = 'frxDBDatasetLancamento'
    CloseDataSource = False
    DataSet = dm.SQLRelatorioLancamento
    BCDToCurrency = False
    Left = 168
    Top = 344
  end
end
