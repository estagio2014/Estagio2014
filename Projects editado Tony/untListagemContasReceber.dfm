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
      ExplicitLeft = 9
      ExplicitTop = 30
      ExplicitWidth = 337
    end
    object rdbNumConta: TRadioButton
      Left = 361
      Top = 7
      Width = 102
      Height = 17
      Caption = 'N'#250'mero da Conta'
      TabOrder = 1
    end
    object rdbSituacao: TRadioButton
      Left = 296
      Top = 7
      Width = 61
      Height = 17
      Caption = 'Situa'#231#227'o'
      TabOrder = 2
    end
    object rdbData: TRadioButton
      Left = 249
      Top = 7
      Width = 42
      Height = 17
      Caption = 'Data'
      TabOrder = 3
    end
    object rdbFornecedor: TRadioButton
      Left = 173
      Top = 7
      Width = 74
      Height = 17
      Caption = 'Fornecedor'
      TabOrder = 4
    end
    object edtData: TMaskEdit
      Left = 385
      Top = 30
      Width = 66
      Height = 21
      EditMask = '99/99/9999;1;_'
      MaxLength = 10
      TabOrder = 5
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
        Width = 83
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ID_LANCAMENTO'
        Width = 103
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NUM_PARCELA'
        Title.Alignment = taCenter
        Title.Caption = 'Parcela(s)'
        Width = 92
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NUM_FATURA'
        Title.Alignment = taCenter
        Title.Caption = 'Num Parcela(s)'
        Width = 93
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VLR_PARCELA'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VLR_RECEBER'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DATA_EMISSAO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DATA_VENC'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DATA_RECEBIDO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VLR_RESTANTE'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TIPO_PAGAMENTO'
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
    DataSet = dm.cdsFatura
    OnDataChange = dsListagemDataChange
  end
end