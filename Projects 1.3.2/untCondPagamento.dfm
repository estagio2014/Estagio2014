inherited frmCondPagamento: TfrmCondPagamento
  Caption = 'Condi'#231#227'o de Pagamento'
  ClientHeight = 343
  ExplicitWidth = 624
  ExplicitHeight = 377
  PixelsPerInch = 96
  TextHeight = 13
  inherited btnConfirm: TSpeedButton
    Left = 195
    Top = 296
    ExplicitLeft = 195
    ExplicitTop = 296
  end
  inherited btnCancelar: TSpeedButton
    Left = 315
    Top = 296
    ExplicitLeft = 315
    ExplicitTop = 296
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 609
    Height = 290
    TabOrder = 0
    object Label1: TLabel
      Left = 24
      Top = 18
      Width = 50
      Height = 13
      Caption = 'Parcelas:*'
    end
    object Label2: TLabel
      Left = 370
      Top = 17
      Width = 106
      Height = 13
      Caption = 'Forma de Pagamento:'
    end
    object cboParcelas: TComboBox
      Left = 80
      Top = 15
      Width = 73
      Height = 21
      TabOrder = 0
      Items.Strings = (
        'x2'
        'x3'
        'x4'
        'x5'
        'x6'
        'x7'
        'x8'
        'x9'
        'x10'
        'x11'
        'x12')
    end
    object DBGrid1: TDBGrid
      Left = 8
      Top = 47
      Width = 592
      Height = 217
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
    end
    object edtFormPag: TEdit
      Left = 479
      Top = 14
      Width = 121
      Height = 21
      TabOrder = 2
    end
  end
  object DataSource1: TDataSource
    Left = 544
    Top = 240
  end
end