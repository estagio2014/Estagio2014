object frmRelatorios: TfrmRelatorios
  Left = 0
  Top = 0
  Caption = 'Relat'#243'rios'
  ClientHeight = 202
  ClientWidth = 447
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
    ReportOptions.LastChange = 41829.902437962960000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 48
    Top = 24
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
        Height = 22.677180000000000000
        Top = 196.535560000000000000
        Width = 718.110700000000000000
        DataSet = frxDBDatasetCliente
        DataSetName = 'frxDBDatasetCliente'
        RowCount = 0
        object frxDBDatasetClienteIDCLI: TfrxMemoView
          Align = baLeft
          Top = 2.338590000000011000
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
          Top = 2.338590000000011000
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
          Top = 2.338590000000011000
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
          Top = 2.338590000000011000
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
          Top = 2.338590000000011000
          Width = 120.944960000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'DATACADASTRO'
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
            '[frxDBDatasetCliente."DATACADASTRO"]')
          ParentFont = False
        end
        object frxDBDatasetClienteSITUACAO: TfrxMemoView
          Align = baLeft
          Left = 619.842920000000000000
          Top = 2.338590000000011000
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
        Top = 279.685220000000000000
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
    DataSet = dm.sdsRelatorioCliente
    BCDToCurrency = False
    Left = 160
    Top = 24
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
    Top = 88
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
        Top = 192.756030000000000000
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
        Height = 22.677180000000000000
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
        Top = 238.110390000000000000
        Width = 718.110700000000000000
        RowCount = 0
      end
      object PageFooter1: TfrxPageFooter
        Height = 22.677180000000000000
        Top = 321.260050000000000000
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
    DataSet = dm.sdsRelatorioFornecedor
    BCDToCurrency = False
    Left = 160
    Top = 88
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
    ReportOptions.LastChange = 41829.928724733800000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 48
    Top = 152
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
        Height = 26.456710000000000000
        Top = 211.653680000000000000
        Width = 718.110700000000000000
        DataSet = frxDBDatasetProduto
        DataSetName = 'frxDBDatasetProduto'
        RowCount = 0
        object frxDBDatasetProdutoCODBARRA: TfrxMemoView
          Align = baLeft
          Top = 3.779529999999994000
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
          Top = 3.779529999999994000
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
          Top = 3.779529999999994000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'PRECOCUSTO'
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
            '[frxDBDatasetProduto."PRECOCUSTO"]')
          ParentFont = False
        end
        object frxDBDatasetProdutoPRECOVENDA: TfrxMemoView
          Align = baLeft
          Left = 385.512060000000000000
          Top = 3.779529999999994000
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
        object frxDBDatasetProdutoESTOQUEATUAL: TfrxMemoView
          Align = baLeft
          Left = 472.441250000000000000
          Top = 3.779529999999994000
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
          Top = 3.779529999999994000
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
        Height = 22.677180000000000000
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
          Color = 13421772
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
    DataSet = dm.sdsRelatorioProduto
    BCDToCurrency = False
    Left = 160
    Top = 152
  end
end
