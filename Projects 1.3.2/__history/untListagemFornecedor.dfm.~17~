inherited frmListagemFornecedor: TfrmListagemFornecedor
  Caption = 'Listagem de Fornecedor'
  OnClose = FormClose
  OnShow = FormShow
  ExplicitWidth = 808
  ExplicitHeight = 436
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
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
      Left = 8
      Top = 14
      Width = 124
      Caption = 'Pesquisar Fornecedor:'
      ExplicitLeft = 8
      ExplicitTop = 14
      ExplicitWidth = 124
    end
    inherited edtPesquisar: TEdit
      Left = 135
      Top = 12
      Width = 210
      OnChange = edtPesquisarChange
      ExplicitLeft = 135
      ExplicitTop = 12
      ExplicitWidth = 210
    end
    object rdbRazao: TRadioButton
      Left = 12
      Top = 38
      Width = 159
      Height = 17
      Caption = 'Raz'#227'o Social/Nome Fantasia'
      TabOrder = 1
    end
    object rdbCnpj: TRadioButton
      Left = 177
      Top = 38
      Width = 50
      Height = 17
      Caption = 'CNPJ'
      TabOrder = 2
    end
  end
  inherited DBGrid1: TDBGrid
    DataSource = dsListagem
    Columns = <
      item
        Expanded = False
        FieldName = 'IDFORNECEDOR'
        Title.Alignment = taCenter
        Title.Caption = 'C'#243'digo'
        Width = 88
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOMEFANT_'
        Title.Alignment = taCenter
        Title.Caption = 'Nome Fantasia'
        Width = 214
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'RAZAOSOCIAL'
        Title.Alignment = taCenter
        Title.Caption = 'Raz'#227'o Social'
        Width = 264
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CNPJ'
        Title.Alignment = taCenter
        Width = 112
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'INSCEST'
        Title.Alignment = taCenter
        Title.Caption = 'Inscri'#231#227'o Estadual'
        Width = 108
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DATAFUND'
        Title.Alignment = taCenter
        Title.Caption = 'Data Funda'#231#227'o'
        Width = 105
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ENDERECO'
        Title.Alignment = taCenter
        Title.Caption = 'Endere'#231'o'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'BAIRRO'
        Title.Alignment = taCenter
        Title.Caption = 'Bairro'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CEP'
        Title.Alignment = taCenter
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'REPRES'
        Title.Alignment = taCenter
        Title.Caption = 'Representante'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TELEFONE'
        Title.Alignment = taCenter
        Title.Caption = 'Telefone'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CELULAR'
        Title.Alignment = taCenter
        Title.Caption = 'Celular'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'EMAIL'
        Title.Alignment = taCenter
        Title.Caption = 'Email'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'OBSERVACOES'
        Title.Alignment = taCenter
        Title.Caption = 'Obs'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME_CID'
        Title.Alignment = taCenter
        Title.Caption = 'Cidade'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'UF'
        Title.Alignment = taCenter
        Width = 46
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DATACADASTRO_'
        Title.Alignment = taCenter
        Title.Caption = 'Data Cadastro'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ID_CID'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'ID_CID_1'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'BAIRRO'
        Visible = False
      end>
  end
  inherited dsListagem: TDataSource
    DataSet = dm.cdsFornecedor
    OnDataChange = dsListagemDataChange
    Left = 728
    Top = 248
  end
end
