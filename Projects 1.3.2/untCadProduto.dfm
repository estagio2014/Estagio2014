inherited frmCadProduto: TfrmCadProduto
  Caption = 'Cadastro de Produto'
  ClientHeight = 251
  ClientWidth = 873
  OnShow = FormShow
  ExplicitWidth = 889
  ExplicitHeight = 285
  PixelsPerInch = 96
  TextHeight = 13
  inherited btnConfirm: TSpeedButton
    Left = 216
    Top = 216
    Width = 86
    Height = 27
    OnClick = btnConfirmClick
    ExplicitLeft = 216
    ExplicitTop = 216
    ExplicitWidth = 86
    ExplicitHeight = 27
  end
  inherited btnCancelar: TSpeedButton
    Left = 327
    Top = 218
    Width = 82
    Height = 27
    ExplicitLeft = 327
    ExplicitTop = 218
    ExplicitWidth = 82
    ExplicitHeight = 27
  end
  object Label2: TLabel
    Left = 21
    Top = 221
    Width = 133
    Height = 13
    Caption = '* CAMPO OBRIGAT'#211'RIO'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold, fsUnderline]
    ParentFont = False
  end
  object GroupBox3: TGroupBox
    Left = 439
    Top = 79
    Width = 433
    Height = 157
    TabOrder = 2
    object Label14: TLabel
      Left = 12
      Top = 14
      Width = 67
      Height = 13
      Caption = 'Observa'#231#245'es:'
    end
    object Label13: TLabel
      Left = 11
      Top = 128
      Width = 101
      Height = 13
      Caption = 'Data de Cadastro:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label12: TLabel
      Left = 219
      Top = 128
      Width = 52
      Height = 13
      Caption = 'Situa'#231#227'o:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object mmObs: TMemo
      Left = 12
      Top = 33
      Width = 413
      Height = 89
      TabOrder = 0
    end
    object edtDataCadPro: TMaskEdit
      Left = 118
      Top = 125
      Width = 69
      Height = 21
      Enabled = False
      EditMask = '99/99/9999;1;_'
      MaxLength = 10
      TabOrder = 1
      Text = '  /  /    '
    end
    object rdbDisponivel: TRadioButton
      Left = 278
      Top = 127
      Width = 71
      Height = 17
      Caption = 'Dispon'#237'vel'
      TabOrder = 2
    end
    object rdbIndisponivel: TRadioButton
      Left = 347
      Top = 127
      Width = 80
      Height = 17
      Caption = 'Indispon'#237'vel'
      TabOrder = 3
    end
  end
  object GroupBox2: TGroupBox
    Left = 439
    Top = 0
    Width = 431
    Height = 73
    TabOrder = 1
    object Label11: TLabel
      Left = 16
      Top = 9
      Width = 77
      Height = 13
      Caption = 'Pre'#231'o Custo:*'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label10: TLabel
      Left = 231
      Top = 10
      Width = 88
      Height = 13
      Caption = 'Estoque Atual:*'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label15: TLabel
      Left = 16
      Top = 40
      Width = 80
      Height = 13
      Caption = 'Pre'#231'o Venda:*'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object edtPrecoCusto: TEdit
      Left = 96
      Top = 6
      Width = 112
      Height = 21
      TabOrder = 0
    end
    object edtEstoqueAtual: TEdit
      Left = 322
      Top = 7
      Width = 76
      Height = 21
      TabOrder = 2
    end
    object edtPrecoVenda: TEdit
      Left = 96
      Top = 37
      Width = 112
      Height = 21
      TabOrder = 1
    end
  end
  object GroupBox1: TGroupBox
    Left = -1
    Top = 0
    Width = 434
    Height = 211
    TabOrder = 0
    object Label1: TLabel
      Left = 70
      Top = 16
      Width = 15
      Height = 13
      Caption = 'ID:'
    end
    object Label3: TLabel
      Left = 19
      Top = 44
      Width = 67
      Height = 13
      Caption = 'C'#243'd de Barra:'
    end
    object Label4: TLabel
      Left = 21
      Top = 76
      Width = 65
      Height = 13
      Caption = 'Descri'#231#227'o:*'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 44
      Top = 138
      Width = 45
      Height = 13
      Caption = 'Marca:*'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 4
      Top = 109
      Width = 85
      Height = 13
      Caption = 'Especifica'#231#227'o:*'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label7: TLabel
      Left = 21
      Top = 170
      Width = 65
      Height = 13
      Caption = 'Categoria:*'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label9: TLabel
      Left = 187
      Top = 170
      Width = 56
      Height = 13
      Caption = 'Unidade:*'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object btnLocalizar: TSpeedButton
      Left = 386
      Top = 135
      Width = 25
      Height = 26
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        33033333333333333F7F3333333333333000333333333333F777333333333333
        000333333333333F777333333333333000333333333333F77733333333333300
        033333333FFF3F777333333700073B703333333F7773F77733333307777700B3
        33333377333777733333307F8F8F7033333337F333F337F3333377F8F9F8F773
        3333373337F3373F3333078F898F870333337F33F7FFF37F333307F99999F703
        33337F377777337F3333078F898F8703333373F337F33373333377F8F9F8F773
        333337F3373337F33333307F8F8F70333333373FF333F7333333330777770333
        333333773FF77333333333370007333333333333777333333333}
      NumGlyphs = 2
      OnClick = btnLocalizarClick
    end
    object edtIdProd: TEdit
      Left = 91
      Top = 13
      Width = 84
      Height = 21
      Enabled = False
      TabOrder = 6
    end
    object edtDesc: TEdit
      Left = 91
      Top = 73
      Width = 332
      Height = 21
      TabOrder = 1
    end
    object edtEspec: TEdit
      Left = 91
      Top = 105
      Width = 332
      Height = 21
      TabOrder = 2
    end
    object cboCat: TComboBox
      Left = 91
      Top = 165
      Width = 84
      Height = 21
      Style = csDropDownList
      TabOrder = 4
      Items.Strings = (
        'Acess'#243'rios'
        'Cal'#231'ados'
        'Textil'
        'Diversos')
    end
    object cboUnidade: TComboBox
      Left = 245
      Top = 167
      Width = 48
      Height = 21
      Style = csDropDownList
      TabOrder = 5
      Items.Strings = (
        'CX'
        'UN'
        'PCT'
        'P'#199)
    end
    object dblMarca: TDBLookupComboBox
      Left = 91
      Top = 135
      Width = 280
      Height = 21
      KeyField = 'ID'
      ListField = 'DESCRICAO'
      ListSource = dsMarca
      TabOrder = 3
    end
    object edtCodBarra: TEdit
      Left = 91
      Top = 40
      Width = 134
      Height = 21
      NumbersOnly = True
      TabOrder = 0
      OnChange = edtCodBarraChange
    end
  end
  object dsMarca: TDataSource
    DataSet = dm.cdsMarca
    Left = 352
    Top = 168
  end
end
