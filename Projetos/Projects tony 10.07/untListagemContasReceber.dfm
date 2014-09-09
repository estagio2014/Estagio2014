inherited frmListagemContasReceber: TfrmListagemContasReceber
  Caption = 'Listagem de Contas a Receber'
  ClientWidth = 754
  OnClose = FormClose
  OnShow = FormShow
  ExplicitWidth = 770
  ExplicitHeight = 416
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 754
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
      Left = 469
      Top = 9
      Width = 84
      OnClick = btnBaixaClick
      ExplicitLeft = 469
      ExplicitTop = 9
      ExplicitWidth = 84
    end
    inherited btnEstorno: TSpeedButton
      Left = 553
      Top = 9
      Width = 85
      ExplicitLeft = 553
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
      Left = 352
      Top = 33
      Width = 27
      Height = 13
      Caption = 'Data:'
    end
    inherited edtPesquisar: TEdit
      Left = 9
      Top = 30
      Width = 337
      NumbersOnly = True
      ExplicitLeft = 9
      ExplicitTop = 30
      ExplicitWidth = 337
    end
    object rdbNumConta: TRadioButton
      Left = 177
      Top = 7
      Width = 102
      Height = 17
      Caption = 'N'#250'mero da Venda'
      TabOrder = 1
      OnClick = rdbNumContaClick
    end
    object rdbData: TRadioButton
      Left = 285
      Top = 7
      Width = 42
      Height = 17
      Caption = 'Data'
      TabOrder = 2
      OnClick = rdbDataClick
    end
    object edtData: TMaskEdit
      Left = 385
      Top = 30
      Width = 66
      Height = 21
      Enabled = False
      EditMask = '99/99/9999;1;_'
      MaxLength = 10
      TabOrder = 3
      Text = '  /  /    '
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
        Expanded = False
        FieldName = 'ID_VENDA'
        Title.Alignment = taCenter
        Title.Caption = 'N'#250'mero Venda'
        Width = 80
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'TIPO_LANC'
        Title.Alignment = taCenter
        Title.Caption = 'Tipo Pagamento'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'FORMA_PAGAMENTO'
        Title.Alignment = taCenter
        Title.Caption = 'Forma Pagamento'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'NUM_PARCELA'
        Title.Alignment = taCenter
        Title.Caption = 'Parcela'
        Width = 72
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'QTDE_PARC'
        Title.Alignment = taCenter
        Title.Caption = 'N'#176' Parcelas'
        Width = 76
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'VLR_PARCELA'
        Title.Alignment = taCenter
        Title.Caption = 'Valor Parcela'
        Width = 104
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'VLR_RECEBER'
        Title.Alignment = taCenter
        Title.Caption = 'Valor Receber'
        Width = 88
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'DATA_VENC'
        Title.Alignment = taCenter
        Title.Caption = 'Data Vencimento'
        Width = 93
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'DATA_EMISSAO'
        Title.Alignment = taCenter
        Title.Caption = 'Data Emiss'#227'o'
        Width = 99
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
