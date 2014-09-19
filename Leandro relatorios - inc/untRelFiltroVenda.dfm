inherited frmfiltrovenda: Tfrmfiltrovenda
  Caption = 'Filtros Para Impress'#227'o'
  ExplicitWidth = 451
  ExplicitHeight = 143
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    ExplicitLeft = 4
    ExplicitTop = -6
    object Label2: TLabel
      Left = 258
      Top = 44
      Width = 52
      Height = 13
      Caption = 'Data Final:'
    end
    object Label1: TLabel
      Left = 258
      Top = 12
      Width = 57
      Height = 13
      Caption = 'Data Inicial:'
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
    object rdbVendas: TRadioButton
      Left = 12
      Top = 40
      Width = 111
      Height = 17
      Caption = 'Todas vendas'
      TabOrder = 2
      OnClick = rdbVendasClick
    end
    object rdbVendaCliente: TRadioButton
      Left = 12
      Top = 63
      Width = 111
      Height = 17
      Caption = 'Vendas / Cliente'
      TabOrder = 3
      OnClick = rdbVendaClienteClick
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
end
