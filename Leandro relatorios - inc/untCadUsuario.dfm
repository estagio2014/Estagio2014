inherited frmCadUsuario: TfrmCadUsuario
  Caption = 'Cadastro de Usu'#225'rio'
  ClientHeight = 194
  ClientWidth = 557
  OnShow = FormShow
  ExplicitWidth = 573
  ExplicitHeight = 233
  PixelsPerInch = 96
  TextHeight = 13
  inherited btnConfirm: TSpeedButton
    Left = 201
    Top = 151
    OnClick = btnConfirmClick
    ExplicitLeft = 201
    ExplicitTop = 151
  end
  inherited btnCancelar: TSpeedButton
    Left = 310
    Top = 151
    ExplicitLeft = 310
    ExplicitTop = 151
  end
  object Label5: TLabel
    Left = 16
    Top = 159
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
  object GroupBox1: TGroupBox
    Left = -4
    Top = -1
    Width = 553
    Height = 138
    TabOrder = 0
    object Label1: TLabel
      Left = 48
      Top = 13
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
      Left = 146
      Top = 13
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
      Left = 14
      Top = 42
      Width = 53
      Height = 13
      Caption = 'Usu'#225'rio:*'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 20
      Top = 74
      Width = 45
      Height = 13
      Caption = 'Senha:*'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 282
      Top = 74
      Width = 97
      Height = 13
      Caption = 'N'#237'vel de Acesso:*'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label7: TLabel
      Left = 354
      Top = 104
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
    object Label8: TLabel
      Left = 19
      Top = 104
      Width = 45
      Height = 13
      Caption = 'Senha:*'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object edtId: TEdit
      Left = 66
      Top = 10
      Width = 75
      Height = 21
      Enabled = False
      TabOrder = 5
    end
    object edtNome: TEdit
      Left = 192
      Top = 10
      Width = 336
      Height = 21
      TabOrder = 0
    end
    object edtSenha: TEdit
      Left = 66
      Top = 71
      Width = 170
      Height = 21
      PasswordChar = '*'
      TabOrder = 2
    end
    object edtUsuario: TEdit
      Left = 66
      Top = 39
      Width = 210
      Height = 21
      TabOrder = 1
    end
    object cboNivelAcc: TComboBox
      Left = 385
      Top = 71
      Width = 144
      Height = 21
      Style = csDropDownList
      TabOrder = 4
      Items.Strings = (
        'Adminstrador'
        'Colaborador')
    end
    object edtDataCad: TMaskEdit
      Left = 461
      Top = 101
      Width = 67
      Height = 21
      Enabled = False
      EditMask = '99/99/9999;1;_'
      MaxLength = 10
      TabOrder = 6
      Text = '  /  /    '
    end
    object edtConfSenha: TEdit
      Left = 66
      Top = 101
      Width = 168
      Height = 21
      PasswordChar = '*'
      TabOrder = 3
    end
  end
end
