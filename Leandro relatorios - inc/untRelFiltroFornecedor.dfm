inherited frmfiltrofornecedor: Tfrmfiltrofornecedor
  BorderStyle = bsSizeToolWin
  Caption = 'Filtros Para Impress'#227'o'
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 258
    Top = 12
    Width = 57
    Height = 13
    Caption = 'Data Inicial:'
  end
  object Label2: TLabel [1]
    Left = 258
    Top = 44
    Width = 52
    Height = 13
    Caption = 'Data Final:'
  end
  inherited Panel1: TPanel
    object btnConfirmar: TSpeedButton
      Left = 258
      Top = 63
      Width = 145
      Height = 27
      Caption = 'Confirmar'
      OnClick = btnConfirmarClick
    end
  end
  object RadioGroup1: TRadioGroup
    Left = 4
    Top = 1
    Width = 183
    Height = 88
    Caption = 'Filtrar'
    TabOrder = 1
  end
  object rdbData: TRadioButton
    Left = 12
    Top = 24
    Width = 125
    Height = 17
    Caption = 'Fornecedor / Compra'
    TabOrder = 2
    OnClick = rdbDataClick
  end
  object rdbFornecedores: TRadioButton
    Left = 12
    Top = 59
    Width = 125
    Height = 17
    Caption = 'Todos fornecedores'
    TabOrder = 3
    OnClick = rdbFornecedoresClick
  end
  object edtDataFim: TMaskEdit
    Left = 322
    Top = 36
    Width = 80
    Height = 21
    Enabled = False
    EditMask = '99/99/9999;1;_'
    MaxLength = 10
    TabOrder = 4
    Text = '  /  /    '
  end
  object edtDataInicio: TMaskEdit
    Left = 321
    Top = 9
    Width = 82
    Height = 21
    Enabled = False
    EditMask = '99/99/9999;1;_'
    MaxLength = 10
    TabOrder = 5
    Text = '  /  /    '
  end
end
