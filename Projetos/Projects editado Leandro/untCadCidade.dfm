inherited frmCadCidade: TfrmCadCidade
  Caption = 'Cadastro de Cidade'
  ClientHeight = 114
  ClientWidth = 326
  OnShow = FormShow
  ExplicitWidth = 342
  ExplicitHeight = 148
  PixelsPerInch = 96
  TextHeight = 13
  inherited btnConfirm: TSpeedButton
    Left = 5
    Top = 78
    Width = 80
    Height = 27
    OnClick = btnConfirmClick
    ExplicitLeft = 5
    ExplicitTop = 78
    ExplicitWidth = 80
    ExplicitHeight = 27
  end
  inherited btnCancelar: TSpeedButton
    Left = 91
    Top = 78
    Width = 80
    Height = 27
    ExplicitLeft = 91
    ExplicitTop = 78
    ExplicitWidth = 80
    ExplicitHeight = 27
  end
  object Label1: TLabel
    Left = 10
    Top = 16
    Width = 15
    Height = 13
    Caption = 'ID:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 98
    Top = 16
    Width = 42
    Height = 13
    Caption = 'Nome:*'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 4
    Top = 48
    Width = 24
    Height = 13
    Caption = 'UF:*'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 103
    Top = 48
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
  object Label5: TLabel
    Left = 177
    Top = 83
    Width = 143
    Height = 13
    Caption = '*  CAMPO OBRIGAT'#211'RIO'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold, fsUnderline]
    ParentFont = False
  end
  object edtIdCidade: TEdit
    Left = 29
    Top = 13
    Width = 61
    Height = 21
    Enabled = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
  end
  object edtNomeCidade: TEdit
    Left = 144
    Top = 13
    Width = 174
    Height = 21
    CharCase = ecUpperCase
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnKeyPress = edtNomeCidadeKeyPress
  end
  object cboUF: TComboBox
    Left = 29
    Top = 45
    Width = 55
    Height = 21
    Style = csDropDownList
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    Items.Strings = (
      'AC'
      'AL'
      'AP'
      'AM'
      'BA'
      'CE'
      'DF'
      'ES'
      'GO'
      'MA'
      'MT'
      'MS'
      'MG'
      'PR'
      'PB'
      'PA'
      'PE'
      'PI'
      'RJ'
      'RN'
      'RS'
      'RO'
      'RR'
      'SC'
      'SE'
      'SP'
      'TO')
  end
  object edtDataCadastro: TMaskEdit
    Left = 208
    Top = 45
    Width = 65
    Height = 21
    Enabled = False
    EditMask = '99/99/9999;1;_'
    MaxLength = 10
    TabOrder = 3
    Text = '  /  /    '
  end
end
