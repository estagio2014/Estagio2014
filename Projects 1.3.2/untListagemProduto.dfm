inherited frmListagemProduto: TfrmListagemProduto
  Caption = 'Listagem de Produto'
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
      Top = 12
      Width = 105
      Caption = 'Pesquisar Produto:'
      ExplicitTop = 12
      ExplicitWidth = 105
    end
    inherited edtPesquisar: TEdit
      Left = 122
      Top = 10
      Width = 231
      OnChange = edtPesquisarChange
      ExplicitLeft = 122
      ExplicitTop = 10
      ExplicitWidth = 231
    end
    object rdbCodBarra: TRadioButton
      Left = 11
      Top = 37
      Width = 90
      Height = 17
      Caption = 'C'#243'd de Barra'
      TabOrder = 1
    end
    object rdbDescricao: TRadioButton
      Left = 107
      Top = 37
      Width = 70
      Height = 17
      Caption = 'Descri'#231#227'o'
      TabOrder = 2
    end
  end
  inherited DBGrid1: TDBGrid
    DataSource = dsListagem
    Columns = <
      item
        Expanded = False
        FieldName = 'IDPRODUTO'
        Title.Alignment = taCenter
        Title.Caption = 'C'#243'digo'
        Visible = True
      end
      item
        Alignment = taLeftJustify
        Expanded = False
        FieldName = 'CODBARRA'
        Title.Alignment = taCenter
        Title.Caption = 'C'#243'digo de Barra'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESCRICAO'
        Title.Alignment = taCenter
        Title.Caption = 'Descri'#231#227'o'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'COMPLEMENTO'
        Title.Alignment = taCenter
        Title.Caption = 'Especifica'#231#245'es'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESCRICAO_1'
        Title.Alignment = taCenter
        Title.Caption = 'Marca'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CATEGORIA'
        Title.Alignment = taCenter
        Title.Caption = 'Categoria'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'UNIDADE'
        Title.Alignment = taCenter
        Title.Caption = 'Unidade'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRECOCUSTO'
        Title.Alignment = taCenter
        Title.Caption = 'Pre'#231'o Custo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRECOVENDA'
        Title.Alignment = taCenter
        Title.Caption = 'Pre'#231'o Venda'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ESTOQUEATUAL'
        Title.Alignment = taCenter
        Title.Caption = 'Estoque'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'OBSERVACOES'
        Title.Alignment = taCenter
        Title.Caption = 'Observa'#231#245'es'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SITUACAO'
        Title.Alignment = taCenter
        Title.Caption = 'Situa'#231#227'o'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DATACADASTRO'
        Title.Alignment = taCenter
        Title.Caption = 'Data de Cadastro'
        Visible = True
      end>
  end
  inherited dsListagem: TDataSource
    DataSet = dm.cdsProduto
    OnDataChange = dsListagemDataChange
    Left = 704
    Top = 128
  end
end
