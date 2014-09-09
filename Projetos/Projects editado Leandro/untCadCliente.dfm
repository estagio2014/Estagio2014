inherited frmCadCliente: TfrmCadCliente
  Left = 14
  Caption = 'Cadastro de Cliente'
  ClientHeight = 300
  ClientWidth = 893
  OnShow = FormShow
  ExplicitWidth = 909
  ExplicitHeight = 334
  PixelsPerInch = 96
  TextHeight = 13
  inherited btnConfirm: TSpeedButton
    Left = 200
    Top = 263
    Width = 82
    Height = 28
    OnClick = btnConfirmClick
    ExplicitLeft = 200
    ExplicitTop = 263
    ExplicitWidth = 82
    ExplicitHeight = 28
  end
  inherited btnCancelar: TSpeedButton
    Left = 313
    Top = 266
    Width = 84
    Height = 28
    ExplicitLeft = 313
    ExplicitTop = 266
    ExplicitWidth = 84
    ExplicitHeight = 28
  end
  object Label7: TLabel
    Left = 8
    Top = 272
    Width = 133
    Height = 13
    Caption = '* CAMPO OBRIGAT'#211'RIO'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold, fsUnderline]
    ParentFont = False
  end
  object GroupBox2: TGroupBox
    Left = 0
    Top = 152
    Width = 441
    Height = 105
    TabOrder = 1
    object Label9: TLabel
      Left = 5
      Top = 15
      Width = 75
      Height = 13
      Caption = 'Logradouro:*'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label10: TLabel
      Left = 23
      Top = 45
      Width = 44
      Height = 13
      Caption = 'Bairro:*'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label11: TLabel
      Left = 35
      Top = 73
      Width = 30
      Height = 13
      Caption = 'CEP:*'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label12: TLabel
      Left = 129
      Top = 74
      Width = 48
      Height = 13
      Caption = 'Cidade:*'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label21: TLabel
      Left = 328
      Top = 72
      Width = 24
      Height = 13
      Caption = 'UF:*'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object btnLocalizar: TSpeedButton
      Left = 408
      Top = 69
      Width = 28
      Height = 23
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
      OnClick = SpeedButton1Click
    end
    object edtEndereco: TEdit
      Left = 82
      Top = 12
      Width = 344
      Height = 21
      TabOrder = 0
    end
    object edtBairro: TEdit
      Left = 67
      Top = 40
      Width = 359
      Height = 21
      TabOrder = 1
    end
    object edtCep: TMaskEdit
      Left = 67
      Top = 70
      Width = 59
      Height = 21
      EditMask = '99999-999;1;_'
      MaxLength = 9
      TabOrder = 2
      Text = '     -   '
    end
    object dblCidade: TDBLookupComboBox
      Left = 177
      Top = 69
      Width = 145
      Height = 21
      KeyField = 'ID_CID'
      ListField = 'NOME_CID'
      ListFieldIndex = -1
      ListSource = dsCidade
      TabOrder = 3
      OnClick = dblCidadeClick
    end
    object edtUf: TEdit
      Left = 358
      Top = 69
      Width = 44
      Height = 21
      Enabled = False
      TabOrder = 4
    end
  end
  object GroupBox3: TGroupBox
    Left = 447
    Top = 0
    Width = 443
    Height = 105
    TabOrder = 2
    object Label13: TLabel
      Left = 7
      Top = 16
      Width = 59
      Height = 13
      Caption = 'Telefone:*'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label14: TLabel
      Left = 154
      Top = 16
      Width = 49
      Height = 13
      Caption = 'Celular:*'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label15: TLabel
      Left = 33
      Top = 43
      Width = 28
      Height = 13
      Caption = 'Email:'
    end
    object Label16: TLabel
      Left = 7
      Top = 70
      Width = 58
      Height = 13
      Caption = 'M'#237'dia Social:'
    end
    object edtTelefone: TMaskEdit
      Left = 67
      Top = 13
      Width = 78
      Height = 21
      EditMask = '(99)9999-9999;1;_'
      MaxLength = 13
      TabOrder = 0
      Text = '(  )    -    '
    end
    object edtCelular: TMaskEdit
      Left = 205
      Top = 13
      Width = 81
      Height = 21
      EditMask = '(99)9999-9999;1;_'
      MaxLength = 13
      TabOrder = 1
      Text = '(  )    -    '
    end
    object edtEmail: TEdit
      Left = 67
      Top = 40
      Width = 352
      Height = 21
      CharCase = ecLowerCase
      TabOrder = 2
      OnExit = edtEmailExit
    end
    object edtMidiaSocial: TEdit
      Left = 67
      Top = 67
      Width = 352
      Height = 21
      TabOrder = 3
    end
  end
  object GroupBox4: TGroupBox
    Left = 447
    Top = 111
    Width = 443
    Height = 178
    TabOrder = 3
    object Label17: TLabel
      Left = 6
      Top = 3
      Width = 67
      Height = 13
      Caption = 'Observa'#231#245'es:'
    end
    object Label23: TLabel
      Left = 259
      Top = 152
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
    object Label20: TLabel
      Left = 10
      Top = 153
      Width = 84
      Height = 13
      Caption = 'Data Cadastro:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object mmObs: TMemo
      Left = 11
      Top = 22
      Width = 421
      Height = 123
      TabOrder = 0
    end
    object rdbAtivo: TRadioButton
      Left = 315
      Top = 151
      Width = 46
      Height = 17
      Caption = 'Ativo'
      TabOrder = 1
    end
    object rdbInativo: TRadioButton
      Left = 366
      Top = 151
      Width = 56
      Height = 17
      Caption = 'Inativo'
      TabOrder = 2
    end
    object edtDataCadastro: TMaskEdit
      Left = 98
      Top = 149
      Width = 65
      Height = 21
      Enabled = False
      EditMask = '99/99/9999;1;_'
      MaxLength = 10
      TabOrder = 3
      Text = '  /  /    '
    end
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 441
    Height = 146
    TabOrder = 0
    object Label1: TLabel
      Left = 51
      Top = 11
      Width = 16
      Height = 13
      Caption = 'ID:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 27
      Top = 39
      Width = 42
      Height = 13
      Caption = 'Nome:*'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 167
      Top = 93
      Width = 26
      Height = 13
      Caption = 'RG:*'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 37
      Top = 93
      Width = 30
      Height = 13
      Caption = 'CPF:*'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 6
      Top = 119
      Width = 66
      Height = 13
      Caption = 'Data Nasc:*'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 327
      Top = 119
      Width = 51
      Height = 13
      Caption = 'G'#234'nero:*'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label8: TLabel
      Left = 154
      Top = 119
      Width = 74
      Height = 13
      Caption = 'Estado Civil:*'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label19: TLabel
      Left = 211
      Top = 11
      Width = 77
      Height = 13
      Caption = 'Tipo Pessoa:*'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label22: TLabel
      Left = 33
      Top = 66
      Width = 39
      Height = 13
      Caption = 'Apelido:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object edtIdCli: TEdit
      Left = 76
      Top = 9
      Width = 84
      Height = 21
      Enabled = False
      TabOrder = 9
    end
    object edtNomeCli: TEdit
      Left = 75
      Top = 36
      Width = 331
      Height = 21
      TabOrder = 0
      OnKeyPress = edtNomeCliKeyPress
    end
    object edtRg: TEdit
      Left = 199
      Top = 90
      Width = 102
      Height = 21
      MaxLength = 15
      TabOrder = 4
    end
    object edtCpf: TMaskEdit
      Left = 75
      Top = 90
      Width = 86
      Height = 21
      EditMask = '999.999.999-99;1;_'
      MaxLength = 14
      TabOrder = 3
      Text = '   .   .   -  '
      OnExit = edtCpfExit
    end
    object cboSexo: TComboBox
      Left = 384
      Top = 116
      Width = 50
      Height = 21
      Style = csDropDownList
      TabOrder = 7
      Items.Strings = (
        'M'
        'F')
    end
    object cboEstadoCivil: TComboBox
      Left = 233
      Top = 116
      Width = 88
      Height = 21
      Style = csDropDownList
      TabOrder = 6
      Items.Strings = (
        'Solteiro(a)'
        'Casado(a)'
        'Divorciado(a)'
        'Vi'#250'vo(a)')
    end
    object rdbPessoaFisica: TRadioButton
      Left = 294
      Top = 10
      Width = 47
      Height = 17
      Caption = 'Fis'#237'ca'
      TabOrder = 2
      OnClick = rdbPessoaFisicaClick
    end
    object rdbPessoaJuridica: TRadioButton
      Left = 347
      Top = 11
      Width = 58
      Height = 17
      Caption = 'Jur'#237'dica'
      TabOrder = 8
      OnClick = rdbPessoaJuridicaClick
    end
    object edtApelido: TEdit
      Left = 75
      Top = 63
      Width = 331
      Height = 21
      TabOrder = 1
      OnKeyPress = edtApelidoKeyPress
    end
    object edtDataNasc: TMaskEdit
      Left = 78
      Top = 116
      Width = 67
      Height = 21
      EditMask = '99/99/9999;1;_'
      MaxLength = 10
      TabOrder = 5
      Text = '  /  /    '
      OnExit = edtDataNascExit
    end
  end
  object dsCidade: TDataSource
    DataSet = dm.cdsCidade
    Left = 440
    Top = 240
  end
end
