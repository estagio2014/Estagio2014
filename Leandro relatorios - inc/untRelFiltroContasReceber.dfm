inherited frmfiltroContasReceber: TfrmfiltroContasReceber
  Caption = 'Filtros Para Impress'#227'o'
  ExplicitWidth = 451
  ExplicitHeight = 143
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    object Label1: TLabel
      Left = 258
      Top = 12
      Width = 57
      Height = 13
      Caption = 'Data Inicial:'
    end
    object Label2: TLabel
      Left = 258
      Top = 40
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
    end
    object RadioGroup1: TRadioGroup
      Left = 4
      Top = 1
      Width = 181
      Height = 88
      Caption = 'Filtrar'
      TabOrder = 0
    end
    object rdbData: TRadioButton
      Left = 12
      Top = 17
      Width = 101
      Height = 17
      Caption = 'Data'
      TabOrder = 1
    end
    object rdbContasPagar: TRadioButton
      Left = 12
      Top = 40
      Width = 109
      Height = 17
      Caption = 'Todas contas'
      TabOrder = 2
    end
    object rdbContasCliente: TRadioButton
      Left = 12
      Top = 63
      Width = 109
      Height = 17
      Caption = 'Contas / Cliente'
      TabOrder = 3
    end
    object edtDataInicio: TMaskEdit
      Left = 321
      Top = 9
      Width = 80
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
