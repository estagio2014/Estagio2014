inherited frmContasPagar: TfrmContasPagar
  Caption = 'Contas a Pagar'
  ClientHeight = 373
  ClientWidth = 604
  OnShow = FormShow
  ExplicitWidth = 620
  ExplicitHeight = 407
  PixelsPerInch = 96
  TextHeight = 13
  inherited btnConfirm: TSpeedButton
    Left = 213
    Top = 330
    OnClick = btnConfirmClick
    ExplicitLeft = 213
    ExplicitTop = 330
  end
  inherited btnCancelar: TSpeedButton
    Left = 333
    Top = 330
    ExplicitLeft = 333
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
      Left = 189
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
      Left = 148
      Top = 43
      Width = 44
      Height = 13
      Caption = 'Parcelas:'
    end
    object Label3: TLabel
      Left = 10
      Top = 16
      Width = 63
      Height = 13
      Caption = 'N'#176' Compra:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 34
      Top = 43
      Width = 39
      Height = 13
      Caption = 'Parcela:'
    end
    object Label5: TLabel
      Left = 263
      Top = 43
      Width = 68
      Height = 13
      Caption = 'Data Emiss'#227'o:'
    end
    object Label6: TLabel
      Left = 407
      Top = 43
      Width = 100
      Height = 13
      Caption = 'Data Vencimento:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label7: TLabel
      Left = 23
      Top = 70
      Width = 49
      Height = 13
      Caption = 'Desconto:'
    end
    object Label8: TLabel
      Left = 170
      Top = 70
      Width = 30
      Height = 13
      Caption = 'Multa:'
    end
    object Label9: TLabel
      Left = 310
      Top = 70
      Width = 25
      Height = 13
      Caption = 'Juro:'
    end
    object Label10: TLabel
      Left = 17
      Top = 100
      Width = 55
      Height = 13
      Caption = 'Valor Pago:'
    end
    object Label11: TLabel
      Left = 193
      Top = 100
      Width = 115
      Height = 13
      Caption = 'Data do Pagamento:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label12: TLabel
      Left = 442
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
      Left = 261
      Top = 13
      Width = 316
      Height = 21
      Enabled = False
      TabOrder = 0
    end
    object edtParcelas: TEdit
      Left = 198
      Top = 40
      Width = 60
      Height = 21
      Enabled = False
      TabOrder = 1
    end
    object edtNumCompra: TEdit
      Left = 79
      Top = 13
      Width = 92
      Height = 21
      Enabled = False
      TabOrder = 2
    end
    object edtParcela: TEdit
      Left = 79
      Top = 40
      Width = 59
      Height = 21
      Enabled = False
      TabOrder = 3
    end
    object edtDataEmi: TMaskEdit
      Left = 337
      Top = 40
      Width = 65
      Height = 21
      Enabled = False
      EditMask = '99/99/9999;1;_'
      MaxLength = 10
      TabOrder = 4
      Text = '  /  /    '
    end
    object edtDataVenc: TMaskEdit
      Left = 512
      Top = 40
      Width = 66
      Height = 21
      Enabled = False
      EditMask = '99/99/9999;1;_'
      MaxLength = 10
      TabOrder = 5
      Text = '  /  /    '
    end
    object edtDesconto: TEdit
      Left = 78
      Top = 67
      Width = 84
      Height = 21
      TabOrder = 6
    end
    object edtMulta: TEdit
      Left = 202
      Top = 67
      Width = 84
      Height = 21
      TabOrder = 7
    end
    object edtJuro: TEdit
      Left = 338
      Top = 67
      Width = 84
      Height = 21
      TabOrder = 8
    end
    object edtValorPago: TEdit
      Left = 78
      Top = 97
      Width = 100
      Height = 21
      TabOrder = 9
    end
    object edtDataPag: TMaskEdit
      Left = 314
      Top = 97
      Width = 72
      Height = 21
      Enabled = False
      EditMask = '99/99/9999;1;_'
      MaxLength = 10
      TabOrder = 10
      Text = '  /  /    '
    end
    object cboSituacao: TComboBox
      Left = 493
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
