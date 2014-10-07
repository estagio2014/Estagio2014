inherited frmListagemCidade: TfrmListagemCidade
  Caption = 'Listagem de Cidade'
  OnClose = FormClose
  OnShow = FormShow
  ExplicitWidth = 821
  ExplicitHeight = 441
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    inherited btnIncluir: TSpeedButton
      Left = 380
      Top = 9
      OnClick = SpeedButton1Click
      ExplicitLeft = 380
      ExplicitTop = 9
    end
    inherited btnExcluir: TSpeedButton
      Left = 479
      Top = 9
      OnClick = SpeedButton2Click
      ExplicitLeft = 479
      ExplicitTop = 9
    end
    inherited btnAlterar: TSpeedButton
      Left = 579
      Top = 9
      OnClick = SpeedButton3Click
      ExplicitLeft = 579
      ExplicitTop = 9
    end
    inherited btnVoltar: TSpeedButton
      Left = 684
      Top = 9
      ExplicitLeft = 684
      ExplicitTop = 9
    end
    inherited Label1: TLabel
      Left = 9
      Top = 21
      Width = 99
      Caption = 'Pesquisar Cidade:'
      ExplicitLeft = 9
      ExplicitTop = 21
      ExplicitWidth = 99
    end
  end
  inherited Panel2: TPanel
    inherited Quantidade: TLabel
      Left = 607
      Top = 6
      ExplicitLeft = 607
      ExplicitTop = 6
    end
    inherited edtTotaldeReg: TEdit
      Left = 711
      Width = 76
      ExplicitLeft = 711
      ExplicitWidth = 76
    end
  end
  inherited DBGrid1: TDBGrid
    DataSource = dsListagem
    OnDblClick = DBGrid1DblClick
    OnTitleClick = DBGrid1TitleClick
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'ID_CID'
        Title.Alignment = taCenter
        Title.Caption = 'C'#243'digo'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'NOME_CID'
        Title.Alignment = taCenter
        Title.Caption = 'Cidade'
        Width = 366
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'UF'
        Title.Alignment = taCenter
        Width = 44
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'DATACADASTRO'
        Title.Alignment = taCenter
        Title.Caption = 'Data de Cadastro'
        Width = 150
        Visible = True
      end>
  end
  inherited edtPesquisar: TMaskEdit
    Left = 113
    Top = 18
    Width = 184
    OnChange = edtPesquisarChange
    ExplicitLeft = 113
    ExplicitTop = 18
    ExplicitWidth = 184
  end
  inherited dsListagem: TDataSource
    DataSet = dm.cdsCidade
    Left = 728
    Top = 136
  end
end
