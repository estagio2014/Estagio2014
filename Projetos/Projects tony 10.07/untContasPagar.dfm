inherited frmContasPagar: TfrmContasPagar
  Caption = 'Contas a Pagar'
  ClientHeight = 373
  ClientWidth = 604
  ExplicitWidth = 620
  ExplicitHeight = 407
  PixelsPerInch = 96
  TextHeight = 13
  inherited btnConfirm: TSpeedButton
    Left = 190
    Top = 330
    ExplicitLeft = 190
    ExplicitTop = 330
  end
  inherited btnCancelar: TSpeedButton
    Left = 310
    Top = 330
    ExplicitLeft = 310
    ExplicitTop = 330
  end
  object Label14: TLabel
    Left = 20
    Top = 340
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
    Left = 0
    Top = 0
    Width = 601
    Height = 321
    TabOrder = 0
    object Label1: TLabel
      Left = 208
      Top = 16
      Width = 67
      Height = 13
      Caption = 'Fornecedor:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 43
      Top = 43
      Width = 44
      Height = 13
      Caption = 'Parcelas:'
    end
    object Label3: TLabel
      Left = 14
      Top = 16
      Width = 75
      Height = 13
      Caption = 'Num Compra:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 160
      Top = 43
      Width = 39
      Height = 13
      Caption = 'Parcela:'
    end
    object Label5: TLabel
      Left = 277
      Top = 43
      Width = 68
      Height = 13
      Caption = 'Data Emiss'#227'o:'
    end
    object Label6: TLabel
      Left = 421
      Top = 43
      Width = 85
      Height = 13
      Caption = 'Data Vencimento:'
    end
    object Label7: TLabel
      Left = 38
      Top = 70
      Width = 49
      Height = 13
      Caption = 'Desconto:'
    end
    object Label8: TLabel
      Left = 185
      Top = 70
      Width = 30
      Height = 13
      Caption = 'Multa:'
    end
    object Label9: TLabel
      Left = 311
      Top = 70
      Width = 25
      Height = 13
      Caption = 'Juro:'
    end
    object Label10: TLabel
      Left = 32
      Top = 104
      Width = 55
      Height = 13
      Caption = 'Valor Pago:'
    end
    object Label11: TLabel
      Left = 208
      Top = 104
      Width = 99
      Height = 13
      Caption = 'Data do Pagamento:'
    end
    object Label12: TLabel
      Left = 441
      Top = 70
      Width = 45
      Height = 13
      Caption = 'Situa'#231#227'o:'
    end
    object Label13: TLabel
      Left = 14
      Top = 124
      Width = 67
      Height = 13
      Caption = 'Observa'#231#245'es:'
    end
    object edtFornecedor: TEdit
      Left = 281
      Top = 13
      Width = 295
      Height = 21
      TabOrder = 0
    end
    object edtParcelas: TEdit
      Left = 93
      Top = 40
      Width = 60
      Height = 21
      TabOrder = 1
    end
    object edtNumCompra: TEdit
      Left = 93
      Top = 13
      Width = 100
      Height = 21
      TabOrder = 2
    end
    object edtParcela: TEdit
      Left = 205
      Top = 40
      Width = 59
      Height = 21
      TabOrder = 3
    end
    object edtDataEmi: TMaskEdit
      Left = 351
      Top = 40
      Width = 65
      Height = 21
      EditMask = '99/99/9999;1;_'
      MaxLength = 10
      TabOrder = 4
      Text = '  /  /    '
    end
    object edtDataVenc: TMaskEdit
      Left = 510
      Top = 40
      Width = 66
      Height = 21
      EditMask = '99/99/9999;1;_'
      MaxLength = 10
      TabOrder = 5
      Text = '  /  /    '
    end
    object edtDesconto: TEdit
      Left = 93
      Top = 67
      Width = 84
      Height = 21
      TabOrder = 6
    end
    object edtMulta: TEdit
      Left = 217
      Top = 67
      Width = 84
      Height = 21
      TabOrder = 7
    end
    object edtJuro: TEdit
      Left = 339
      Top = 67
      Width = 84
      Height = 21
      TabOrder = 8
    end
    object edtValorPago: TEdit
      Left = 93
      Top = 101
      Width = 100
      Height = 21
      TabOrder = 9
    end
    object edtDataPag: TMaskEdit
      Left = 313
      Top = 101
      Width = 72
      Height = 21
      EditMask = '99/99/9999;1;_'
      MaxLength = 10
      TabOrder = 10
      Text = '  /  /    '
    end
    object cboSituacao: TComboBox
      Left = 492
      Top = 67
      Width = 84
      Height = 21
      TabOrder = 11
      Items.Strings = (
        'Em aberto'
        'Estornado'
        'Liquidado')
    end
    object Memo1: TMemo
      Left = 14
      Top = 143
      Width = 562
      Height = 161
      TabOrder = 12
    end
  end
end
