inherited frmListagemContaPagar: TfrmListagemContaPagar
  Caption = 'Listagem de Contas a Pagar'
  ClientWidth = 754
  OnClose = FormClose
  OnShow = FormShow
  ExplicitWidth = 770
  ExplicitHeight = 421
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 754
    ExplicitWidth = 754
    inherited btnVoltar: TSpeedButton
      Left = 655
      Top = 9
      Width = 87
      ExplicitLeft = 655
      ExplicitTop = 9
      ExplicitWidth = 87
    end
    inherited btnBaixa: TSpeedButton
      Left = 378
      Top = 9
      Width = 87
      OnClick = btnBaixaClick
      ExplicitLeft = 378
      ExplicitTop = 9
      ExplicitWidth = 87
    end
    inherited btnEstorno: TSpeedButton
      Left = 464
      Top = 9
      ExplicitLeft = 464
      ExplicitTop = 9
    end
    inherited Label2: TLabel
      Left = 13
      Top = 9
      Width = 146
      Caption = 'Pesquisar Contas a Pagar:'
      ExplicitLeft = 13
      ExplicitTop = 9
      ExplicitWidth = 146
    end
    object Label3: TLabel [4]
      Left = 182
      Top = 34
      Width = 27
      Height = 13
      Caption = 'Data:'
    end
    object btnRelatorio: TSpeedButton [5]
      Left = 552
      Top = 9
      Width = 89
      Height = 42
      Caption = 'Relat'#243'rio'
      OnClick = btnRelatorioClick
    end
    inherited edtPesquisar: TEdit
      Left = 17
      Top = 31
      Width = 152
      ExplicitLeft = 17
      ExplicitTop = 31
      ExplicitWidth = 152
    end
    object edtData: TMaskEdit
      Left = 215
      Top = 31
      Width = 66
      Height = 21
      Enabled = False
      EditMask = '99/99/9999;1;_'
      MaxLength = 10
      TabOrder = 1
      Text = '  /  /    '
    end
    object cboPesquisar: TComboBox
      Left = 165
      Top = 4
      Width = 116
      Height = 21
      Style = csDropDownList
      TabOrder = 2
      OnChange = cboPesquisarChange
      Items.Strings = (
        'N'#250'mero Compra'
        'Data'
        'Situa'#231#227'o')
    end
  end
  inherited DBGrid1: TDBGrid
    Width = 754
    DataSource = dsListagem
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    Columns = <
      item
        Expanded = False
        FieldName = 'ID'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'ID_LANCAMENTO'
        Visible = False
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'ID_COMPRA'
        Title.Alignment = taCenter
        Title.Caption = 'N'#250'mero Compra'
        Width = 95
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'SITUACAO'
        Title.Alignment = taCenter
        Title.Caption = 'Situa'#231#227'o'
        Width = 96
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'DATA_VENC'
        Title.Alignment = taCenter
        Title.Caption = 'Data Vencimento'
        Width = 100
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'TIPO_LANC'
        Title.Alignment = taCenter
        Title.Caption = 'Tipo Pagamento'
        Visible = False
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'FORMA_PAGAMENTO'
        Title.Alignment = taCenter
        Title.Caption = 'Forma Pagamento'
        Visible = False
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'NUM_PARCELA'
        Title.Alignment = taCenter
        Title.Caption = 'Parcela'
        Width = 60
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'QTDE_PARC'
        Title.Alignment = taCenter
        Title.Caption = 'N'#176' Parcelas'
        Width = 74
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'VLR_PARCELA'
        Title.Alignment = taCenter
        Title.Caption = 'Valor Parcela'
        Width = 93
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'VLR_RECEBER'
        Title.Alignment = taCenter
        Title.Caption = 'Valor Receber'
        Visible = False
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'DATA_RECEBIDO'
        Title.Alignment = taCenter
        Title.Caption = 'Data Recebido'
        Width = 105
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'DATA_EMISSAO'
        Title.Alignment = taCenter
        Title.Caption = 'Data Emiss'#227'o'
        Visible = False
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'VLR_RESTANTE'
        Title.Alignment = taCenter
        Title.Caption = 'Valor Restante'
        Visible = False
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'TIPO_PAGAMENTO'
        Title.Alignment = taCenter
        Title.Caption = 'Tipo Pagamento'
        Visible = False
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'VLR_RECEBIDO'
        Title.Alignment = taCenter
        Title.Caption = 'Valor Recebido'
        Width = 103
        Visible = True
      end>
  end
  inherited Panel2: TPanel
    Width = 754
    ExplicitTop = 341
    ExplicitWidth = 754
    inherited Label1: TLabel
      Left = 557
      ExplicitLeft = 557
    end
    inherited edtTotalReg: TEdit
      Left = 669
      ExplicitLeft = 669
    end
  end
  inherited dsListagem: TDataSource
    DataSet = dm.cdsContasPagar
    OnDataChange = dsListagemDataChange
    Left = 688
    Top = 280
  end
end
