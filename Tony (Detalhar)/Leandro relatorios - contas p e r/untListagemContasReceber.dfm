inherited frmListagemContasReceber: TfrmListagemContasReceber
  Caption = 'Listagem de Contas a Receber'
  ClientWidth = 754
  OnClose = FormClose
  OnShow = FormShow
  ExplicitWidth = 770
  ExplicitHeight = 421
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 754
    ExplicitTop = -6
    ExplicitWidth = 754
    inherited btnVoltar: TSpeedButton
      Left = 644
      Top = 10
      Width = 85
      ExplicitLeft = 644
      ExplicitTop = 10
      ExplicitWidth = 85
    end
    inherited btnBaixa: TSpeedButton
      Left = 373
      Top = 9
      Width = 84
      OnClick = btnBaixaClick
      ExplicitLeft = 373
      ExplicitTop = 9
      ExplicitWidth = 84
    end
    inherited btnEstorno: TSpeedButton
      Left = 457
      Top = 9
      Width = 85
      ExplicitLeft = 457
      ExplicitTop = 9
      ExplicitWidth = 85
    end
    inherited Label2: TLabel
      Left = 9
      Top = 9
      Width = 160
      Caption = 'Pesquisar Contas a Receber:'
      ExplicitLeft = 9
      ExplicitTop = 9
      ExplicitWidth = 160
    end
    object Label3: TLabel [4]
      Left = 187
      Top = 34
      Width = 27
      Height = 13
      Caption = 'Data:'
    end
    object btnRelatorio: TSpeedButton [5]
      Left = 542
      Top = 9
      Width = 89
      Height = 42
      Caption = 'Relat'#243'rio'
      OnClick = btnRelatorioClick
    end
    inherited edtPesquisar: TEdit
      Left = 9
      Top = 30
      Width = 168
      NumbersOnly = True
      ExplicitLeft = 9
      ExplicitTop = 30
      ExplicitWidth = 168
    end
    object edtData: TMaskEdit
      Left = 220
      Top = 30
      Width = 66
      Height = 21
      Enabled = False
      EditMask = '99/99/9999;1;_'
      MaxLength = 10
      TabOrder = 1
      Text = '  /  /    '
    end
    object cboPesquisar: TComboBox
      Left = 175
      Top = 6
      Width = 111
      Height = 21
      Style = csDropDownList
      TabOrder = 2
      OnChange = cboPesquisarChange
      Items.Strings = (
        'N'#250'mero venda'
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
        FieldName = 'ID_VENDA'
        Title.Alignment = taCenter
        Title.Caption = 'Num Venda'
        Width = 110
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'SITUACAO'
        Title.Alignment = taCenter
        Title.Caption = 'Situa'#231#227'o'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TIPO_LANC'
        Visible = False
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'FORMA_PAGAMENTO'
        Title.Alignment = taCenter
        Visible = False
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'DATA_VENC'
        Title.Alignment = taCenter
        Title.Caption = 'Data Vencimento'
        Width = 120
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'NUM_PARCELA'
        Title.Alignment = taCenter
        Title.Caption = 'Parcela'
        Width = 66
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'QTDE_PARC'
        Title.Alignment = taCenter
        Title.Caption = 'N'#176' Parcelas'
        Width = 80
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'VLR_PARCELA'
        Title.Alignment = taCenter
        Title.Caption = 'Valor'
        Width = 71
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'VLR_RECEBER'
        Title.Alignment = taCenter
        Title.Caption = 'Vlr receber'
        Visible = False
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'DATA_RECEBIDO'
        Title.Alignment = taCenter
        Title.Caption = 'Data Recebido'
        Width = 101
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'MULTA'
        Title.Alignment = taCenter
        Title.Caption = 'Multa'
        Width = 61
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'JUROS'
        Title.Alignment = taCenter
        Title.Caption = 'Juros'
        Width = 59
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'DESCONTO'
        Title.Alignment = taCenter
        Title.Caption = 'Desconto'
        Width = 73
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DATA_EMISSAO'
        Title.Caption = 'Emiss'#227'o'
        Visible = False
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'VLR_RECEBIDO'
        Title.Alignment = taCenter
        Title.Caption = 'Valor Recebido'
        Width = 94
        Visible = True
      end>
  end
  inherited Panel2: TPanel
    Width = 754
    ExplicitTop = 341
    ExplicitWidth = 754
    inherited Label1: TLabel
      Left = 553
      ExplicitLeft = 553
    end
    inherited edtTotalReg: TEdit
      Left = 665
      ExplicitLeft = 665
    end
  end
  inherited dsListagem: TDataSource
    DataSet = dm.cdsContasReceb
    OnDataChange = dsListagemDataChange
  end
end
