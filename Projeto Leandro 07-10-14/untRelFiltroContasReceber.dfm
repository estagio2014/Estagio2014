inherited frmfiltroContasReceber: TfrmfiltroContasReceber
  Caption = 'Filtros Para Impress'#227'o'
  ClientHeight = 96
  ClientWidth = 412
  OnShow = FormShow
  ExplicitWidth = 428
  ExplicitHeight = 135
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 412
    Height = 96
    ExplicitWidth = 412
    ExplicitHeight = 96
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
      OnClick = btnConfirmarClick
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
      Top = 26
      Width = 133
      Height = 17
      Caption = 'Compras / Fornecedor'
      TabOrder = 1
      OnClick = rdbDataClick
    end
    object rdbContasReceber: TRadioButton
      Left = 12
      Top = 57
      Width = 109
      Height = 17
      Caption = 'Todas contas'
      TabOrder = 2
    end
    object edtDataInicio: TMaskEdit
      Left = 321
      Top = 9
      Width = 80
      Height = 21
      Enabled = False
      EditMask = '99/99/9999;1;_'
      MaxLength = 10
      TabOrder = 3
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
      TabOrder = 4
      Text = '  /  /    '
    end
  end
end
