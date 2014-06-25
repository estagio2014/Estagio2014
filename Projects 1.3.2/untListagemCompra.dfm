inherited frmListagemCompra: TfrmListagemCompra
  Caption = 'Listagem de Compra'
  ExplicitWidth = 808
  ExplicitHeight = 436
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    inherited Speedbutton1: TSpeedButton
      OnClick = Speedbutton1Click
    end
    inherited Label1: TLabel
      Top = 12
      Width = 105
      Caption = 'Pesquisar Compra:'
      ExplicitTop = 12
      ExplicitWidth = 105
    end
    inherited edtPesquisar: TEdit
      Left = 122
      Top = 10
      Width = 231
      ExplicitLeft = 122
      ExplicitTop = 10
      ExplicitWidth = 231
    end
  end
end
