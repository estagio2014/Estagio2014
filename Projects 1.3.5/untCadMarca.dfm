inherited frmCadMarca: TfrmCadMarca
  Caption = 'Cadastro de Marca'
  ClientHeight = 112
  ClientWidth = 403
  OnShow = FormShow
  ExplicitWidth = 419
  ExplicitHeight = 151
  PixelsPerInch = 96
  TextHeight = 13
  inherited btnConfirm: TSpeedButton
    Left = 96
    Top = 75
    Height = 29
    OnClick = btnConfirmClick
    ExplicitLeft = 96
    ExplicitTop = 75
    ExplicitHeight = 29
  end
  inherited btnCancelar: TSpeedButton
    Left = 216
    Top = 77
    Height = 29
    ExplicitLeft = 216
    ExplicitTop = 77
    ExplicitHeight = 29
  end
  object Label1: TLabel
    Left = 50
    Top = 18
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
    Left = 8
    Top = 49
    Width = 58
    Height = 13
    Caption = 'Descri'#231#227'o:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object edtId: TEdit
    Left = 70
    Top = 14
    Width = 75
    Height = 21
    Enabled = False
    TabOrder = 0
  end
  object edtDesc: TEdit
    Left = 70
    Top = 43
    Width = 323
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 1
  end
end
