inherited frmfiltroproduto: Tfrmfiltroproduto
  BorderStyle = bsSizeToolWin
  Caption = 'Filtros Para Impress'#227'o'
  Position = poDesktopCenter
  ExplicitWidth = 451
  ExplicitHeight = 143
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    ExplicitLeft = 0
    ExplicitTop = 0
    ExplicitWidth = 435
    ExplicitHeight = 104
    object Label1: TLabel
      Left = 258
      Top = 12
      Width = 57
      Height = 13
      Caption = 'Data Inicial:'
    end
    object Label2: TLabel
      Left = 258
      Top = 44
      Width = 52
      Height = 13
      Caption = 'Data Final:'
    end
    object btnConfirmar: TSpeedButton
      Left = 258
      Top = 63
      Width = 145
      Height = 27
      Caption = 'Confirmar'
      OnClick = btnConfirmarClick
    end
    object RadioGroup1: TRadioGroup
      Left = 4
      Top = 1
      Width = 183
      Height = 88
      Caption = 'Filtrar'
      TabOrder = 0
    end
    object rdbData: TRadioButton
      Left = 12
      Top = 17
      Width = 103
      Height = 17
      Caption = 'Data'
      TabOrder = 1
      OnClick = rdbDataClick
    end
    object rdbProdutos: TRadioButton
      Left = 12
      Top = 40
      Width = 111
      Height = 17
      Caption = 'Todos produtos'
      TabOrder = 2
    end
    object rdbProdutosMarca: TRadioButton
      Left = 12
      Top = 63
      Width = 111
      Height = 17
      Caption = 'Produtos / Marca'
      TabOrder = 3
    end
    object edtDataInicio: TMaskEdit
      Left = 321
      Top = 9
      Width = 81
      Height = 21
      Enabled = False
      EditMask = '99/99/9999;1;_'
      MaxLength = 10
      TabOrder = 4
      Text = '  /  /    '
    end
    object edtDataFim: TMaskEdit
      Left = 322
      Top = 36
      Width = 81
      Height = 21
      Enabled = False
      EditMask = '99/99/9999;1;_'
      MaxLength = 10
      TabOrder = 5
      Text = '  /  /    '
    end
  end
end
