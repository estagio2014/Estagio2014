inherited frmListagemMarca: TfrmListagemMarca
  Caption = 'Listagem de Marca'
  OnClose = FormClose
  OnShow = FormShow
  ExplicitWidth = 821
  ExplicitHeight = 436
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    ExplicitWidth = 805
    inherited Speedbutton1: TSpeedButton
      OnClick = Speedbutton1Click
    end
    inherited Speedbutton2: TSpeedButton
      OnClick = Speedbutton2Click
    end
    inherited Speedbutton3: TSpeedButton
      OnClick = Speedbutton3Click
    end
    inherited Label1: TLabel
      Top = 21
      Width = 97
      Caption = 'Pesquisar Marca:'
      ExplicitTop = 21
      ExplicitWidth = 97
    end
    inherited edtPesquisar: TEdit
      Left = 118
      Top = 19
      Width = 227
      CharCase = ecUpperCase
      OnChange = edtPesquisarChange
      ExplicitLeft = 118
      ExplicitTop = 19
      ExplicitWidth = 227
    end
  end
  inherited Panel2: TPanel
    ExplicitWidth = 805
    inherited Quantidade: TLabel
      Top = 11
      ExplicitTop = 11
    end
    inherited edtTotaldeReg: TEdit
      Left = 719
      Top = 9
      ExplicitLeft = 719
      ExplicitTop = 9
    end
  end
  inherited DBGrid1: TDBGrid
    DataSource = dsListagem
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'ID'
        Title.Alignment = taCenter
        Title.Caption = 'C'#243'digo'
        Width = 135
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'DESCRICAO'
        Title.Alignment = taCenter
        Title.Caption = 'Descri'#231#227'o'
        Width = 639
        Visible = True
      end>
  end
  inherited dsListagem: TDataSource
    DataSet = dm.cdsMarca
    OnDataChange = dsListagemDataChange
    Left = 728
    Top = 96
  end
end
