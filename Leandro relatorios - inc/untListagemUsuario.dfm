inherited frmListagemUsuario: TfrmListagemUsuario
  Caption = 'Listagem de Usu'#225'rio'
  ClientWidth = 802
  OnClose = FormClose
  OnShow = FormShow
  ExplicitWidth = 818
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 802
    ExplicitWidth = 802
    inherited btnIncluir: TSpeedButton
      OnClick = Speedbutton1Click
    end
    inherited btnAlterar: TSpeedButton
      OnClick = Speedbutton3Click
    end
    inherited Label1: TLabel
      Top = 12
      Width = 105
      Caption = 'Pesquisar Usu'#225'rio:'
      ExplicitTop = 12
      ExplicitWidth = 105
    end
  end
  inherited Panel2: TPanel
    Width = 802
    ExplicitWidth = 802
    inherited Quantidade: TLabel
      Left = 627
      ExplicitLeft = 627
    end
    inherited edtTotaldeReg: TEdit
      Left = 730
      ExplicitLeft = 730
    end
  end
  inherited DBGrid1: TDBGrid
    Width = 802
    DataSource = dsListagem
    Columns = <
      item
        Expanded = False
        FieldName = 'ID_USUARIO'
        Title.Alignment = taCenter
        Title.Caption = 'C'#243'digo'
        Width = 111
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME'
        Title.Alignment = taCenter
        Title.Caption = 'Nome'
        Width = 233
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'LOGIN'
        Title.Alignment = taCenter
        Title.Caption = 'Usu'#225'rio'
        Width = 219
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SENHA'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'NIVELACESS'
        Title.Alignment = taCenter
        Title.Caption = 'N'#237'vel de Acesso'
        Width = 106
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DATACADASTRO'
        Title.Alignment = taCenter
        Title.Caption = 'Data Cadastro'
        Width = 102
        Visible = True
      end>
  end
  inherited edtPesquisar: TMaskEdit
    Left = 121
    Top = 10
    Width = 208
    ExplicitLeft = 121
    ExplicitTop = 10
    ExplicitWidth = 208
  end
  inherited dsListagem: TDataSource
    DataSet = dm.cdsUsuario
    OnDataChange = dsListagemDataChange
  end
end
