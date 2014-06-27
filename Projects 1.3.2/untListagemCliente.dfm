inherited frmListagemCliente: TfrmListagemCliente
  Caption = 'Listagem de Cliente'
  ClientWidth = 813
  OnClose = FormClose
  OnShow = FormShow
  ExplicitWidth = 829
  ExplicitHeight = 436
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 813
    ExplicitWidth = 813
    inherited Speedbutton1: TSpeedButton
      OnClick = SpeedButton1Click
    end
    inherited Speedbutton2: TSpeedButton
      OnClick = Speedbutton2Click
    end
    inherited Speedbutton3: TSpeedButton
      OnClick = Speedbutton3Click
    end
    inherited Label1: TLabel
      Left = 19
      Top = 11
      Width = 102
      Caption = 'Pesquisar Cliente:'
      ExplicitLeft = 19
      ExplicitTop = 11
      ExplicitWidth = 102
    end
    inherited edtPesquisar: TEdit
      Left = 127
      Top = 9
      Width = 226
      OnChange = edtPesquisarChange
      ExplicitLeft = 127
      ExplicitTop = 9
      ExplicitWidth = 226
    end
    object rdbNome: TRadioButton
      Left = 19
      Top = 35
      Width = 50
      Height = 17
      Caption = 'Nome'
      TabOrder = 1
    end
    object rdbCPFCNPJ: TRadioButton
      Left = 83
      Top = 35
      Width = 73
      Height = 17
      Caption = 'CPF/CNPJ'
      TabOrder = 2
    end
  end
  inherited Panel2: TPanel
    Width = 813
    ExplicitWidth = 813
    inherited Quantidade: TLabel
      Left = 607
      Width = 103
      Caption = 'Total de Registros:'
      ExplicitLeft = 607
      ExplicitWidth = 103
    end
    inherited edtTotaldeReg: TEdit
      Top = 7
      ExplicitTop = 7
    end
  end
  inherited DBGrid1: TDBGrid
    Width = 813
    DataSource = dsListagem
    Columns = <
      item
        Expanded = False
        FieldName = 'IDCLI'
        Title.Caption = 'C'#243'digo'
        Width = 81
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOMECLI'
        Title.Alignment = taCenter
        Title.Caption = 'Nome/Nome Fantasia'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'APELIDO'
        Title.Alignment = taCenter
        Title.Caption = 'Apelido/Raz'#227'o Social'
        Width = 267
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TIPOPESSOA'
        Title.Alignment = taCenter
        Title.Caption = 'Pessoa'
        Width = 46
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CPFCNPJ'
        Title.Alignment = taCenter
        Title.Caption = 'CPF/CNPJ'
        Width = 138
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'RG'
        Title.Alignment = taCenter
        Title.Caption = 'RG/Inscri'#231#227'o Estadual'
        Width = 131
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DATANASC'
        Title.Alignment = taCenter
        Title.Caption = 'Data Nascimento'
        Width = 107
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ESTADOCIVIL'
        Title.Alignment = taCenter
        Title.Caption = 'Estado Civil'
        Width = 74
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'GENERO'
        Title.Alignment = taCenter
        Title.Caption = 'G'#234'nero'
        Width = 52
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
        Width = 75
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
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TELEFONE'
        Title.Alignment = taCenter
        Title.Caption = 'Telefone'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CELULAR'
        Title.Alignment = taCenter
        Title.Caption = 'Celular'
        Width = 87
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'EMAIL'
        Title.Alignment = taCenter
        Title.Caption = 'Email'
        Width = 169
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MIDIASOCIAL'
        Title.Alignment = taCenter
        Title.Caption = 'M'#237'dia Social/Site'
        Width = 269
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
        FieldName = 'OBSERVACAO'
        Title.Alignment = taCenter
        Title.Caption = 'Observa'#231#245'es'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SITUACAO'
        Title.Alignment = taCenter
        Title.Caption = 'Situa'#231#227'o'
        Width = 66
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DATACADASTRO'
        Title.Alignment = taCenter
        Title.Caption = 'Data Cadastro'
        Width = 99
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DATACADASTRO_1'
        Visible = False
      end>
  end
  inherited dsListagem: TDataSource
    DataSet = dm.cdsCliente
    OnDataChange = dsListagemDataChange
    Left = 728
    Top = 96
  end
end