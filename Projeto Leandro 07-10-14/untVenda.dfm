inherited frmVenda: TfrmVenda
  Caption = 'Venda'
  ClientHeight = 551
  ClientWidth = 698
  OnShow = FormShow
  ExplicitWidth = 714
  ExplicitHeight = 590
  PixelsPerInch = 96
  TextHeight = 13
  inherited btnConfirm: TSpeedButton
    Left = 255
    Top = 505
    OnClick = btnConfirmClick
    ExplicitLeft = 255
    ExplicitTop = 505
  end
  inherited btnCancelar: TSpeedButton
    Left = 372
    Top = 505
    ExplicitLeft = 372
    ExplicitTop = 505
  end
  object Label5: TLabel
    Left = 42
    Top = 514
    Width = 150
    Height = 16
    Caption = '* CAMPO OBRIGAT'#211'RIO'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold, fsUnderline]
    ParentFont = False
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 701
    Height = 81
    TabOrder = 0
    object Label3: TLabel
      Left = 19
      Top = 48
      Width = 49
      Height = 13
      Caption = 'Cliente:*'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object btnLocalizarCli: TSpeedButton
      Left = 571
      Top = 42
      Width = 87
      Height = 26
      Caption = 'Pesquisar'
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        33033333333333333F7F3333333333333000333333333333F777333333333333
        000333333333333F777333333333333000333333333333F77733333333333300
        033333333FFF3F777333333700073B703333333F7773F77733333307777700B3
        33333377333777733333307F8F8F7033333337F333F337F3333377F8F9F8F773
        3333373337F3373F3333078F898F870333337F33F7FFF37F333307F99999F703
        33337F377777337F3333078F898F8703333373F337F33373333377F8F9F8F773
        333337F3373337F33333307F8F8F70333333373FF333F7333333330777770333
        333333773FF77333333333370007333333333333777333333333}
      NumGlyphs = 2
      OnClick = btnLocalizarCliClick
    end
    object Label6: TLabel
      Left = 188
      Top = 14
      Width = 64
      Height = 13
      Caption = 'Vendedor:*'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label12: TLabel
      Left = 387
      Top = 48
      Width = 63
      Height = 13
      Caption = 'CPF/CNPJ:*'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label1: TLabel
      Left = 12
      Top = 12
      Width = 77
      Height = 16
      Caption = 'Num Venda:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object dblCliente: TDBLookupComboBox
      Left = 70
      Top = 45
      Width = 303
      Height = 21
      KeyField = 'IDCLI'
      ListField = 'NOMECLI'
      ListSource = dsCliente
      TabOrder = 1
      OnClick = dblClienteClick
    end
    object edtVendedor: TEdit
      Left = 255
      Top = 12
      Width = 403
      Height = 21
      TabOrder = 0
      OnChange = edtVendedorChange
    end
    object edtCpf: TMaskEdit
      Left = 453
      Top = 45
      Width = 112
      Height = 21
      EditMask = '99.999.999/9999-99;1;_'
      MaxLength = 18
      TabOrder = 2
      Text = '  .   .   /    -  '
      OnEnter = edtCpfEnter
      OnExit = edtCpfExit
    end
    object edtIdVenda: TEdit
      Left = 95
      Top = 11
      Width = 87
      Height = 24
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
  end
  object GroupBox2: TGroupBox
    Left = -5
    Top = 87
    Width = 702
    Height = 412
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object btnAdicionar: TSpeedButton
      Left = 491
      Top = 50
      Width = 95
      Height = 33
      Caption = 'Adicionar'
      Glyph.Data = {
        B60D0000424DB60D000000000000360000002800000030000000180000000100
        180000000000800D000000000000000000000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF58A47158A47158A47158A47158A4
        7158A47158A47158A471FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9E9E9E9E9E9E
        9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9EFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFF58A37085BD9D85BD9D85BD9D85BD9D85BD9D85BD9D56A26EFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFF9E9E9EA7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A79D
        9D9DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF56A26C84D5B15ED09D5ED09D5ED0
        9D5ED09D70C79C53A06AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F9F9FABABAB
        A6A6A6A6A6A6A6A6A6A6A6A6A6A6A69D9D9DFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFF53A0698CD8B662D19F62D19F62D19F62D19F73C89E509E67FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFF9E9E9EACACACA6A6A6A6A6A6A6A6A6A6A6A6A7A7A79C
        9C9CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF509D6592DBBA67D2A267D2A267D2
        A267D2A275C9A04D9B63FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9D9D9DADADAD
        A7A7A7A7A7A7A7A7A7A7A7A7A7A7A79B9B9BFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFF4D9A6097DDBE6CD3A56CD3A56CD3A56CD3A57ACBA24A985EFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFF9C9C9CAEAEAEA8A8A8A8A8A8A8A8A8A8A8A8A8A8A89A
        9A9AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF49975C99DEC072D5A872D5A872D5
        A872D5A87FCBA546955AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9B9B9BAFAFAF
        A9A9A9A9A9A9A9A9A9A9A9A9A9A9A9999999FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFF4593579ADFC078D6AC78D6AC78D6AC78D6AC84CDA9429155FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFF9A9A9AAFAFAFAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA98
        9898FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF58A47158A370
        56A26C53A069509D654D9A6049975C4593573E8E5098DEBF7ED8B07ED8B07ED8
        B07ED8B08ACFAB3E8E5042915546955A4A985E4D9B63509E6753A06A56A26E58
        A4719E9E9E9E9E9E9F9F9F9E9E9E9D9D9D9C9C9C9B9B9B9A9A9A979797AFAFAF
        ABABABABABABABABABABABABABABAB9797979898989999999A9A9A9B9B9B9C9C
        9C9D9D9D9D9D9D9E9E9E58A471A7E6CA74CAA072C89D74C99F78CBA17ECBA482
        CCA888CFAA8ED0AD85DAB485DAB485DAB485DAB477C9A072C89D74C99F78CBA1
        7ECBA482CCA888CFAA8ED0AD85BD9D58A4719E9E9EB1B1B1A7A7A7A7A7A7A7A7
        A7A8A8A8A9A9A9A9A9A9AAAAAAABABABACACACACACACACACACACACACA8A8A8A7
        A7A7A7A7A7A8A8A8A9A9A9A9A9A9AAAAAAABABABA7A7A79E9E9E58A471A7E6CA
        8CDCB88CDCB88CDCB88CDCB88CDCB88CDCB88CDCB88CDCB88CDCB88CDCB88CDC
        B88CDCB88CDCB88CDCB88CDCB88CDCB88CDCB88CDCB88CDCB88CDCB885BD9D58
        A4719E9E9EB1B1B1ADADADADADADADADADADADADADADADADADADADADADADADAD
        ADADADADADADADADADADADADADADADADADADADADADADADADADADADADADADADAD
        ADADADADA7A7A79E9E9E58A471A7E6CA93DDBC93DDBC93DDBC93DDBC93DDBC93
        DDBC93DDBC93DDBC93DDBC93DDBC93DDBC93DDBC93DDBC93DDBC93DDBC93DDBC
        93DDBC93DDBC93DDBC93DDBC85BD9D58A4719E9E9EB1B1B1AEAEAEAEAEAEAEAE
        AEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAE
        AEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEA7A7A79E9E9E58A471A7E6CA
        99DFC099DFC099DFC099DFC099DFC099DFC099DFC099DFC099DFC099DFC099DF
        C099DFC099DFC099DFC099DFC099DFC099DFC099DFC099DFC099DFC085BD9D58
        A4719E9E9EB1B1B1AFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF
        AFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF
        AFAFAFAFA7A7A79E9E9E58A471A7E6CAA0E1C4A0E1C4A0E1C4A0E1C4A0E1C4A0
        E1C4A0E1C4A0E1C4A0E1C4A0E1C4A0E1C4A0E1C4A0E1C4A0E1C4A0E1C4A0E1C4
        A0E1C4A0E1C4A0E1C4A0E1C485BD9D58A4719E9E9EB1B1B1B0B0B0B0B0B0B0B0
        B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0
        B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0A7A7A79E9E9E58A471A7E6CA
        94DDBD98DEBF9ADFC099DEC097DDBE92DBBA8CD8B684D5B1A7E3C8A7E3C8A7E3
        C8A7E3C87AD0A69ADFC09ADFC099DEC097DDBE92DBBA8CD8B684D5B185BD9D58
        A4719E9E9EB1B1B1AEAEAEAFAFAFAFAFAFAFAFAFAEAEAEADADADACACACABABAB
        B1B1B1B1B1B1B1B1B1B1B1B1A9A9A9AFAFAFAFAFAFAFAFAFAEAEAEADADADACAC
        ACABABABA7A7A79E9E9E58A47156A26E53A06A509E674D9B634A985E46955A42
        91553E8E508CD8B6ADE5CCADE5CCADE5CCADE5CC80D1A93E8E5045935749975C
        4D9A60509D6553A06956A26C58A37058A4719E9E9E9D9D9D9D9D9D9C9C9C9B9B
        9B9A9A9A999999989898979797ACACACB2B2B2B2B2B2B2B2B2B2B2B2AAAAAA97
        97979A9A9A9B9B9B9C9C9C9D9D9D9E9E9E9F9F9F9E9E9E9E9E9EFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF45935792DBBAB3E6D0B3E6D0B3E6
        D0B3E6D087D1AC429155FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9A9A9AADADAD
        B3B3B3B3B3B3B3B3B3B3B3B3ABABAB989898FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFF49975C97DDBEB9E8D3B9E8D3B9E8D3B9E8D38CD2AE46955AFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFF9B9B9BAEAEAEB4B4B4B4B4B4B4B4B4B4B4B4ABABAB99
        9999FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4D9A6099DEC0BEE9D6BEE9D6BEE9
        D6BEE9D691D3B14A985EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9C9C9CAFAFAF
        B5B5B5B5B5B5B5B5B5B5B5B5ACACAC9A9A9AFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFF509D659ADFC0C3EAD9C3EAD9C3EAD9C3EAD996D3B24D9B63FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFF9D9D9DAFAFAFB5B5B5B5B5B5B5B5B5B5B5B5ACACAC9B
        9B9BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF53A06998DEBFC7EBDBC7EBDBC7EB
        DBC7EBDB9BD4B5509E67FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9E9E9EAFAFAF
        B6B6B6B6B6B6B6B6B6B6B6B6ADADAD9C9C9CFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFF56A26C94DDBDCAECDDCAECDDCAECDDCAECDD9ED5B753A06AFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFF9F9F9FAEAEAEB6B6B6B6B6B6B6B6B6B6B6B6AEAEAE9D
        9D9DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF58A370A7E6CAA7E6CAA7E6CAA7E6
        CAA7E6CAA7E6CA56A26EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9E9E9EB1B1B1
        B1B1B1B1B1B1B1B1B1B1B1B1B1B1B19D9D9DFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFF58A47158A47158A47158A47158A47158A47158A47158A471FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFF9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E
        9E9EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      NumGlyphs = 2
      OnClick = btnAdicionarClick
    end
    object btnRemover: TSpeedButton
      Left = 592
      Top = 50
      Width = 95
      Height = 33
      Caption = 'Remover'
      Glyph.Data = {
        B60D0000424DB60D000000000000360000002800000030000000180000000100
        180000000000800D000000000000000000000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFE0E0E0ABABABB8B8B8C6C6C6CECECECECECECACA
        CAC3C3C3BABABAB0B0B0AAAAAAE0E0E0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFC9C9C9BABABAB3B3B3
        B3B3B3B3B3B3B2B2B2B0B0B0B0B0B0B8B8B8C9C9C9EFEFEFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF919191EB
        EBEBFCFCFCF4F4F4ECECECE2E2E2DADADAD1D1D1CACACAC5C5C5C6C6C68B8B8B
        AEAEAEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFA5A5A5BBBBBBBFBFBFBDBDBDBBBBBBB8B8B8B7B7B7B5B5B5B3B3B3B1
        B1B1B2B2B2A4A4A4CBCBCBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFCFCFCC0C0C0B3B3B3A8CEB23DB6633DBB6944C07497CAAC61C7
        8B47C37842BE6F4DB770A2AEA6ACACAC959595B3B3B3FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEDBDBDBACACACAEAEAE9C9C9C9D9D9D
        9F9F9FABABABA4A4A4A0A0A09E9E9E9F9F9FA9A9A9ABABABA6A6A6D0D0D0FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE6E6E6AEAEAEE0E0E04F
        B4683AB45C39B6613FBC6A91C3A35CC18241BE6E3DBA6740B3635CAE72D9D9D9
        A2A2A29F9F9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1F1
        F1B7B7B7B8B8B89F9F9F9C9C9C9C9C9C9E9E9EA9A9A9A3A3A39F9F9F9D9D9D9C
        9C9CA0A0A0B6B6B6A8A8A8B6B6B6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFBCBCBCCACACAC7D5CA44B15C69C280B0D9BCA6CFB3BACABFA6C3
        B06FBD8883BE954BB1672CA94ABCCBBFCACACA838383F9F9F9FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFD8D8D8B2B2B2B3B3B39C9C9CA3A3A3B0B0B0
        AEAEAEB0B0B0ACACACA4A4A4A7A7A79D9D9D979797B0B0B0B2B2B2A1A1A1FCFC
        FCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F9F9A0A0A0D4D4D49CC6A330
        A74736AC50C7E3CDE3E9E4E2E2E2DADADAC9CFCBADC4B22DA94A27A5428ABE93
        D4D4D4858585BDBDBDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCFCBEBE
        BEB5B5B5ABABAB9898989A9A9AB4B4B4BABABAB8B8B8B7B7B7B3B3B3AEAEAE98
        9898979797A8A8A8B5B5B5A1A1A1DCDCDCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFDFDFDFA8A8A8D5D5D596C59D2FA4412FA64543AF59E2E8E4E2E2E2DADA
        DAD0D1D051AF6524A23D23A0398ABA91D5D5D59B9B9BA9A9A9FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFEEEEEEB6B6B6B5B5B5AAAAAA9797979898989B9B9B
        B9B9B9B8B8B8B7B7B7B4B4B49E9E9E959595959595A7A7A7B5B5B5A6A6A6CECE
        CEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC9C9C9B9B9B9D5D5D5C1D6C431
        A13F279F39A1D2A9EBEBEBE2E2E2D9D9D9D0D0D09ABDA038A2482F9F3EBBC3BC
        D5D5D5B3B3B3939393FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE0E0E0B3B3
        B3B5B5B5B2B2B2969696959595ADADADBABABAB8B8B8B6B6B6B4B4B4A9A9A998
        9898969696AFAFAFB5B5B5ACACACBDBDBDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFABABABC8C8C8D8D8D8D1DDD2D0E3D2D5EBD8A5D2AA59B164DDE0DEB5CE
        B943A6513BA1488EB292A3BAA6C6C6C6D8D8D8C7C7C77E7E7EFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFCACACAB2B2B2B6B6B6B5B5B5B6B6B6B8B8B8ADADAD
        9F9F9FB7B7B7B0B0B09A9A9A999999A6A6A6ABABABB2B2B2B6B6B6B1B1B1ADAD
        ADFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F8F8A0A0A0D3D3D3DADADAE6E6E6F0
        F0F064B569108F1A11911D89BF8E8ABD8F12911E11901C309737BEC0BEC8C8C8
        D9D9D9D3D3D3888888F8F8F8FFFFFFFFFFFFFFFFFFFFFFFFFBFBFBB9B9B9B4B4
        B4B6B6B6B9B9B9BCBCBCA0A0A08F8F8F8F8F8FA7A7A7A7A7A79090908F8F8F95
        9595AFAFAFB2B2B2B6B6B6B4B4B4A7A7A7FBFBFBFFFFFFFFFFFFFFFFFFFFFFFF
        ECECECA5A5A5D6D6D6DCDCDCE6E6E6F2F2F2ACD6AE08880D0B8A111A90202896
        2E0B8B120A8A1063A365ACBDACCCCCCCDADADAD6D6D69D9D9DECECECFFFFFFFF
        FFFFFFFFFFFFFFFFF0F0F0AFAFAFB5B5B5B7B7B7B9B9B9BDBDBDAFAFAF8D8D8D
        8E8E8E9090909494948E8E8E8E8E8E9E9E9EADADADB3B3B3B6B6B6B5B5B5A8A8
        A8F0F0F0FFFFFFFFFFFFFFFFFFFFFFFFDFDFDFB3B3B3D7D7D7DDDDDDE6E6E6F3
        F3F3FBFCFB4FA64F038304038305188C191A8C1B439A44BCBEBCC4C4C4CECECE
        DADADAD7D7D7B3B3B3DFDFDFFFFFFFFFFFFFFFFFFFFFFFFFE1E1E1ACACACB5B5
        B5B7B7B7B9B9B9BDBDBDBFBFBF9B9B9B8C8C8C8B8B8B909090909090989898AF
        AFAFB1B1B1B4B4B4B6B6B6B5B5B5ACACACE1E1E1FFFFFFFFFFFFFFFFFFFFFFFF
        D3D3D3BCBCBCDADADADDDDDDE5E5E5F4F4F4FCFCFCF0F2F0C9DCC9C6D6C6C3D1
        C3CACECAC8C8C8BFBFBFC5C5C5D1D1D1DBDBDBDADADABCBCBCD3D3D3FFFFFFFF
        FFFFFFFFFFFFFFFFD2D2D2AFAFAFB6B6B6B7B7B7B9B9B9BDBDBDBFBFBFBCBCBC
        B4B4B4B2B2B2B2B2B2B3B3B3B2B2B2AFAFAFB2B2B2B5B5B5B6B6B6B6B6B6AFAF
        AFD2D2D2FFFFFFFFFFFFFFFFFFFFFFFFC8C8C8C2C2C2DEDEDEDBDBDBE8E8E8E2
        EDE3ABD5B181C18D7BBC8959AC6D5AAB6F79B7897EB88C9BC2A4C8D3CAD8D8D8
        DBDBDBDEDEDEC2C2C2C8C8C8FFFFFFFFFFFFFFFFFFFFFFFFC5C5C5B0B0B0B7B7
        B7B6B6B6BABABAB9B9B9AEAEAEA6A6A6A5A5A59E9E9E9F9F9FA4A4A4A5A5A5AA
        AAAAB3B3B3B6B6B6B6B6B6B7B7B7B0B0B0C5C5C5FFFFFFFFFFFFFFFFFFFFFFFF
        C1C1C1C9C9C9E9ECE98BBC9050A85A359D455CAE695EAE6D5DAC6E50A4654EA3
        6459A46C5AA36B57A068459856569D6394BD99E6EAE7C9C9C9C1C1C1FFFFFFFF
        FFFFFFFFFFFFFFFFB9B9B9B2B2B2BABABAA7A7A79C9C9C9797979E9E9E9F9F9F
        9F9F9F9C9C9C9C9C9C9E9E9E9E9E9E9D9D9D9999999C9C9CA8A8A8B9B9B9B2B2
        B2B9B9B9FFFFFFFFFFFFFFFFFFFFFFFFC8C8C8C6D9C62F98364CA9545AAD6447
        A7556FB47A86B89089B3929EB2A395AA9B79A0836F9B7A569665368F49549B5F
        5097582F8236BDCFBEC8C8C8FFFFFFFFFFFFFFFFFFFFFFFFB3B3B3B3B3B39595
        95A2A2A29E9E9E9A9A9AA2A2A2A6A6A6A6A6A6A9A9A9A7A7A7A2A2A2A0A0A09C
        9C9C9696969B9B9B9A9A9A939393B0B0B0B3B3B3FFFFFFFFFFFFFFFFFFFFFFFF
        D0D9D01C8F2151AA5769B66F9FC7A4D5DBD6DDDDDDD5D5D5CBCBCBC1C1C1B6B6
        B6ACACACA1A1A19898988F93906B8D7057975E4B935117731DC8D2C8FFFFFFFF
        FFFFFFFFFFFFFFFFB4B4B49191919C9C9CA6A6A6ABABABB5B5B5B7B7B7B5B5B5
        B2B2B2B0B0B0ADADADABABABA8A8A8A6A6A6A4A4A49E9E9E9B9B9B9999998D8D
        8DB2B2B2FFFFFFFFFFFFFFFFFFFFFFFF76B3792B98318FC392E7E9E7DFDFDFE2
        E2E2E4E4E4DCDCDCD4D4D4CACACABFBFBFB5B5B5AAAAAAA1A1A1999999959595
        93939382A7852F8234649A66FFFFFFFFFFFFFFFFFFFFFFFFA2A2A2949494ACAC
        ACD5D5D5B7B7B7B8B8B8B9B9B9B7B7B7B5B5B5B2B2B2AFAFAFADADADAAAAAAA8
        A8A8A6A6A6A5A5A5A4A4A4A3A3A39393939D9D9DFFFFFFFFFFFFFFFFFFFFFFFF
        439C4638953C5A935EEAEAEAE2E2E2E5E5E5E8E8E8E3E3E3DBDBDBD2D2D2C8C8
        C8BEBEBEB3B3B3A9A9A9A1A1A19B9B9B9797975A835E3E8242307C32FFFFFFFF
        FFFFFFFFFFFFFFFF989898969696A0A0A0D6D6D6B8B8B8B9B9B9BABABAB8B8B8
        B6B6B6B4B4B4B2B2B2AFAFAFACACACAAAAAAA8A8A8A6A6A6A5A5A59A9A9A9595
        95929292FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF428D450A640F2A7931C2D1C4E6
        E6E6E9E9E9E6E6E6E0E0E0D8D8D8CFCFCFC5C5C5BABABAB0B0B0A7A7A78E9A90
        307139125C19356F37FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9C9C9C8A8A
        8A919191B1B1B1B9B9B9BABABAB9B9B9B8B8B8B6B6B6B3B3B3B1B1B1AEAEAEAC
        ACACA9A9A9A4A4A49292928B8B8B989898FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFF4F8F42B772F0B68130E6E19227D30559B6184B68E99C0A2CFD7D1CCD0
        CC8CB49576A7824C915D267C38166E2614651F286A2EEFF3EFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFAFAFA9A9A9A8B8B8B8C8C8C9191919C9C9CA6A6A6
        AAAAAAB4B4B4B3B3B3A7A7A7A2A2A29A9A9A9292928E8E8E8C8C8C969696F7F7
        F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF66A16B10701B10
        741F127A2515802B1785301988341A8A371B8A371A8635197F3118772C176F27
        5F9667FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFB7B7B78D8D8D8D8D8D8E8E8E90909091919191919192929292929291919190
        90908F8F8F8F8F8FB1B1B1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFF4F9F584B88C3F944F278A3B218A391988341A8A
        37248F3F2A8F4343975784B78FEFF5F0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFAFAC4C4C4A4A4A4999999
        969696919191929292979797999999A5A5A5C4C4C4F8F8F8FFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFEFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFE
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      NumGlyphs = 2
      OnClick = btnRemoverClick
    end
    object Label7: TLabel
      Left = 495
      Top = 377
      Width = 61
      Height = 19
      Caption = 'TOTAL:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label8: TLabel
      Left = 10
      Top = 20
      Width = 55
      Height = 13
      Caption = 'Produto:*'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label9: TLabel
      Left = 22
      Top = 49
      Width = 43
      Height = 13
      Caption = 'Estoque:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label10: TLabel
      Left = 150
      Top = 50
      Width = 37
      Height = 13
      Caption = 'Qtde:*'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label11: TLabel
      Left = 277
      Top = 49
      Width = 31
      Height = 13
      Caption = 'Pre'#231'o:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object SpeedButton1: TSpeedButton
      Left = 608
      Top = 15
      Width = 83
      Height = 25
      Caption = 'Pesquisar'
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        33033333333333333F7F3333333333333000333333333333F777333333333333
        000333333333333F777333333333333000333333333333F77733333333333300
        033333333FFF3F777333333700073B703333333F7773F77733333307777700B3
        33333377333777733333307F8F8F7033333337F333F337F3333377F8F9F8F773
        3333373337F3373F3333078F898F870333337F33F7FFF37F333307F99999F703
        33337F377777337F3333078F898F8703333373F337F33373333377F8F9F8F773
        333337F3373337F33333307F8F8F70333333373FF333F7333333330777770333
        333333773FF77333333333370007333333333333777333333333}
      NumGlyphs = 2
      OnClick = SpeedButton1Click
    end
    object Label2: TLabel
      Left = 22
      Top = 379
      Width = 101
      Height = 16
      Caption = 'Data da Venda:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label13: TLabel
      Left = 399
      Top = 20
      Width = 97
      Height = 16
      Caption = 'C'#243'd de Barra:*'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label14: TLabel
      Left = 397
      Top = 312
      Width = 149
      Height = 16
      Caption = 'Forma de Pagamento:*'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label15: TLabel
      Left = 11
      Top = 312
      Width = 116
      Height = 16
      Caption = 'Tipo de pagamento:'
    end
    object Label18: TLabel
      Left = 285
      Top = 377
      Width = 81
      Height = 19
      Caption = 'Desconto:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 475
      Top = 344
      Width = 69
      Height = 16
      Caption = 'Situa'#231#227'o:*'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBGrid1: TDBGrid
      Left = 11
      Top = 89
      Width = 681
      Height = 211
      DataSource = dsItemVenda
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      TabOrder = 8
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -13
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'ID_VENDA'
          Visible = False
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'IDPRODUTO'
          Title.Alignment = taCenter
          Title.Caption = 'C'#243'digo Produto'
          Width = 124
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DESCRICAO'
          Title.Alignment = taCenter
          Title.Caption = 'Produto'
          Width = 251
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'QUANTIDADE'
          Title.Alignment = taCenter
          Title.Caption = 'Quantidade'
          Width = 101
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'PRECO'
          Title.Alignment = taCenter
          Title.Caption = 'Pre'#231'o'
          Width = 82
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'SUBTOTAL'
          Title.Alignment = taCenter
          Title.Caption = 'SubTotal'
          Width = 82
          Visible = True
        end>
    end
    object edtTotal: TEdit
      Left = 564
      Top = 374
      Width = 118
      Height = 27
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 9
    end
    object dblProduto: TDBLookupComboBox
      Left = 66
      Top = 15
      Width = 327
      Height = 24
      KeyField = 'IDPRODUTO'
      ListField = 'DESCRICAO'
      ListSource = dsProduto
      TabOrder = 1
      OnClick = dblProdutoClick
      OnEnter = dblProdutoEnter
    end
    object edtEstoque: TEdit
      Left = 69
      Top = 45
      Width = 74
      Height = 24
      Enabled = False
      TabOrder = 10
    end
    object edtQtdade: TEdit
      Left = 189
      Top = 45
      Width = 71
      Height = 24
      NumbersOnly = True
      TabOrder = 2
    end
    object edtPreco: TEdit
      Left = 312
      Top = 45
      Width = 84
      Height = 24
      Enabled = False
      TabOrder = 7
    end
    object edtDataVenda: TMaskEdit
      Left = 129
      Top = 376
      Width = 92
      Height = 24
      Enabled = False
      EditMask = '99/99/9999;1;_'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      MaxLength = 10
      ParentFont = False
      TabOrder = 11
      Text = '  /  /    '
    end
    object cboFormPag: TComboBox
      Left = 552
      Top = 309
      Width = 130
      Height = 24
      Style = csDropDownList
      TabOrder = 5
      Items.Strings = (
        'Boleto'
        'Cart'#227'o de Cr'#233'dito'
        'Cheque'
        'Dinheiro')
    end
    object rdbVista: TRadioButton
      Left = 133
      Top = 313
      Width = 66
      Height = 17
      Caption = 'a vista'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
    end
    object rdbParcelado: TRadioButton
      Left = 205
      Top = 313
      Width = 89
      Height = 17
      Caption = 'parcelado'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
    end
    object edtDesconto: TEdit
      Left = 372
      Top = 374
      Width = 117
      Height = 27
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
      OnKeyPress = edtDescontoKeyPress
    end
    object edtCodBarra: TEdit
      Left = 498
      Top = 16
      Width = 105
      Height = 24
      TabOrder = 0
      OnExit = edtCodBarraExit
    end
    object cboSituacao: TComboBox
      Left = 552
      Top = 341
      Width = 112
      Height = 24
      Style = csDropDownList
      TabOrder = 12
      Items.Strings = (
        'Pago'
        'Em Aberto')
    end
  end
  object dsCliente: TDataSource
    DataSet = dm.cdsCliente
    Left = 600
    Top = 8
  end
  object dsProduto: TDataSource
    DataSet = dm.cdsProduto
    Left = 424
    Top = 128
  end
  object dsItemVenda: TDataSource
    DataSet = dm.cdsItemVenda
    Left = 600
    Top = 328
  end
end
