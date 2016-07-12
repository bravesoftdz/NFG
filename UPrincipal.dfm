object FPrincipal: TFPrincipal
  Left = 0
  Top = 0
  BorderIcons = []
  Caption = 'Exporta'#231#227'o de Nota Fiscal Ga'#250'cha'
  ClientHeight = 471
  ClientWidth = 484
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object PGCGeral: TPageControl
    Left = 8
    Top = 55
    Width = 473
    Height = 366
    ActivePage = TabSheet2
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Exporta'#231#227'o de NFG'
      object Label3: TLabel
        Left = 16
        Top = 38
        Width = 57
        Height = 13
        Caption = 'Data Inicial:'
      end
      object Label4: TLabel
        Left = 200
        Top = 38
        Width = 52
        Height = 13
        Caption = 'Data Final:'
      end
      object lbStatusECF: TLabel
        Left = 71
        Top = 146
        Width = 113
        Height = 29
        Caption = 'ECF offline'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -24
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object shpStatusECF: TShape
        Left = 3
        Top = 138
        Width = 62
        Height = 47
        Brush.Color = clRed
        Shape = stCircle
      end
      object lbRZPendente: TLabel
        Left = 187
        Top = 114
        Width = 120
        Height = 14
        Caption = 'Redu'#231#227'o-Z pendente:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lbCOO: TLabel
        Left = 3
        Top = 72
        Width = 29
        Height = 14
        Hint = 'Contador de Ordem de Opera'#231#227'o'
        Caption = 'COO:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = False
      end
      object lbCCF: TLabel
        Left = 3
        Top = 94
        Width = 24
        Height = 14
        Hint = 'Contador de Cupom Fiscal'
        Caption = 'CCF:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = False
      end
      object lbCRZ: TLabel
        Left = 3
        Top = 114
        Width = 25
        Height = 14
        Hint = 'Contador de Redu'#231#245'es-Z'
        Caption = 'CRZ:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = False
      end
      object lbModeloECF: TLabel
        Left = 187
        Top = 75
        Width = 85
        Height = 14
        Caption = 'Modelo do ECF:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lbNumSerie: TLabel
        Left = 187
        Top = 94
        Width = 96
        Height = 14
        Caption = 'N'#250'mero de S'#233'rie:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label13: TLabel
        Left = 16
        Top = 11
        Width = 57
        Height = 13
        Caption = 'Data Inicial:'
      end
      object lConnectionInfo: TLabel
        Left = 3
        Top = 314
        Width = 119
        Height = 18
        Caption = 'lConnectionInfo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DTPDataInicial: TDateTimePicker
        Left = 79
        Top = 35
        Width = 110
        Height = 21
        Date = 42557.521666284720000000
        Time = 42557.521666284720000000
        TabOrder = 0
      end
      object DTPDataFinal: TDateTimePicker
        Left = 255
        Top = 35
        Width = 110
        Height = 21
        Date = 42557.521666284720000000
        Time = 42557.521666284720000000
        TabOrder = 1
      end
      object BtnExportarNFG: TBitBtn
        Left = 368
        Top = 3
        Width = 96
        Height = 25
        Caption = 'Exportar NFG'
        TabOrder = 2
        OnClick = BtnExportarNFGClick
      end
      object cbData: TComboBox
        Left = 79
        Top = 8
        Width = 145
        Height = 21
        Style = csDropDownList
        ItemIndex = 0
        TabOrder = 3
        Text = 'Selecionar Data'
        OnChange = cbDataChange
        Items.Strings = (
          'Selecionar Data'
          'Janeiro'
          'Fevereiro'
          'Mar'#231'o'
          'Abril'
          'Maio'
          'Junho'
          'Julho'
          'Agosto'
          'Setembro'
          'Outubro'
          'Novembro'
          'Dezembro')
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Configura'#231#227'o'
      ImageIndex = 1
      object Label1: TLabel
        Left = 0
        Top = 11
        Width = 93
        Height = 13
        Caption = 'Fabricante/Modelo:'
      end
      object Label2: TLabel
        Left = 256
        Top = 11
        Width = 102
        Height = 13
        Caption = 'Porta da Impressora:'
      end
      object Label5: TLabel
        Left = 28
        Top = 37
        Width = 64
        Height = 13
        Caption = 'Raz'#227'o Social:'
      end
      object Label6: TLabel
        Left = 43
        Top = 62
        Width = 49
        Height = 13
        Caption = 'Endere'#231'o:'
      end
      object Label141: TLabel
        Left = 224
        Top = 110
        Width = 30
        Height = 13
        Caption = 'Senha'
      end
      object Label140: TLabel
        Left = 63
        Top = 110
        Width = 36
        Height = 13
        Caption = 'Usu'#225'rio'
      end
      object Label138: TLabel
        Left = 67
        Top = 86
        Width = 26
        Height = 13
        Caption = 'SMTP'
      end
      object Label142: TLabel
        Left = 28
        Top = 159
        Width = 66
        Height = 13
        Caption = 'Assunto email'
      end
      object Label143: TLabel
        Left = 3
        Top = 181
        Width = 97
        Height = 13
        Caption = 'Mensagem do E-Mail'
      end
      object Label14: TLabel
        Left = 369
        Top = 86
        Width = 30
        Height = 13
        Caption = 'Porta:'
      end
      object Label15: TLabel
        Left = 7
        Top = 134
        Width = 87
        Height = 13
        Caption = 'Nome Remetente:'
      end
      object Label16: TLabel
        Left = 226
        Top = 134
        Width = 92
        Height = 13
        Caption = 'E-mail destinat'#225'rio:'
      end
      object CBFabricanteModelo: TComboBox
        Left = 103
        Top = 8
        Width = 145
        Height = 21
        Style = csDropDownList
        TabOrder = 0
        OnChange = CBFabricanteModeloChange
        Items.Strings = (
          'Procurar'
          'ecfNaoFiscal'
          'ecfBematech'
          'ecfSweda'
          'ecfDaruma'
          'ecfSchalter'
          'ecfMecaf'
          'ecfYanco'
          'ecfDataRegis'
          'ecfUrano'
          'ecfICash'
          'ecfQuattro')
      end
      object CBPorta: TComboBox
        Left = 364
        Top = 8
        Width = 93
        Height = 21
        TabOrder = 1
        OnChange = CBPortaChange
      end
      object EdtRazaoSocial: TEdit
        Left = 103
        Top = 34
        Width = 353
        Height = 21
        TabOrder = 2
      end
      object EdtEndereco: TEdit
        Left = 103
        Top = 59
        Width = 353
        Height = 21
        TabOrder = 3
      end
      object GroupBox1: TGroupBox
        Left = 3
        Top = 233
        Width = 454
        Height = 104
        Caption = 'Configura'#231#245'es Avan'#231'adas (Utilize somente se tiver certeza)'
        TabOrder = 4
        object Label7: TLabel
          Left = 5
          Top = 17
          Width = 139
          Height = 13
          Caption = '&Baud rate (Bits por Segundo)'
          FocusControl = cmbBaudRate
        end
        object Label8: TLabel
          Left = 150
          Top = 18
          Width = 119
          Height = 13
          Caption = '&Data Bits (Bits de Dados)'
          FocusControl = cmbDataBits
        end
        object Label9: TLabel
          Left = 295
          Top = 17
          Width = 81
          Height = 13
          Caption = '&Parity (Paridade)'
          FocusControl = cmbParity
        end
        object Label11: TLabel
          Left = 5
          Top = 57
          Width = 122
          Height = 13
          Caption = '&Stop Bits (Bits de Parada)'
          FocusControl = cmbStopBits
        end
        object Label10: TLabel
          Left = 150
          Top = 57
          Width = 157
          Height = 13
          Caption = '&Handshaking (Controle de Fluxo)'
          FocusControl = cmbHandShaking
        end
        object cmbBaudRate: TComboBox
          Left = 5
          Top = 35
          Width = 139
          Height = 21
          TabOrder = 0
          Text = '9600'
          OnChange = cmbBaudRateChange
          Items.Strings = (
            '110'
            '300'
            '600'
            '1200'
            '2400'
            '4800'
            '9600'
            '14400'
            '19200'
            '38400'
            '56000'
            '57600'
            '115200')
        end
        object cmbDataBits: TComboBox
          Left = 150
          Top = 34
          Width = 139
          Height = 21
          Style = csDropDownList
          ItemIndex = 3
          TabOrder = 1
          Text = '8'
          OnChange = cmbDataBitsChange
          Items.Strings = (
            '5'
            '6'
            '7'
            '8')
        end
        object cmbParity: TComboBox
          Left = 295
          Top = 34
          Width = 139
          Height = 21
          Style = csDropDownList
          ItemIndex = 0
          TabOrder = 2
          Text = 'None'
          OnChange = cmbParityChange
          Items.Strings = (
            'None'
            'Odd'
            'Even'
            'Mark'
            'Space')
        end
        object cmbStopBits: TComboBox
          Left = 5
          Top = 75
          Width = 139
          Height = 21
          Style = csDropDownList
          ItemIndex = 0
          TabOrder = 3
          Text = '1'
          OnChange = cmbStopBitsChange
          Items.Strings = (
            '1'
            '1,5'
            '2')
        end
        object cmbHandShaking: TComboBox
          Left = 150
          Top = 75
          Width = 139
          Height = 21
          Style = csDropDownList
          ItemIndex = 0
          TabOrder = 4
          Text = 'Nenhum'
          OnChange = cmbHandShakingChange
          Items.Strings = (
            'Nenhum'
            'XON/XOFF'
            'RTS/CTS'
            'DTR/DSR')
        end
        object chHardFlow: TCheckBox
          Left = 309
          Top = 76
          Width = 66
          Height = 17
          Caption = 'HardFlow'
          TabOrder = 5
          OnClick = chHardFlowClick
        end
        object chSoftFlow: TCheckBox
          Left = 378
          Top = 76
          Width = 61
          Height = 17
          Caption = 'SoftFlow'
          TabOrder = 6
          OnClick = chSoftFlowClick
        end
      end
      object edtSmtpHost: TEdit
        Left = 103
        Top = 83
        Width = 257
        Height = 21
        Color = clWhite
        MaxLength = 60
        TabOrder = 5
      end
      object edtSmtpUser: TEdit
        Left = 103
        Top = 108
        Width = 115
        Height = 21
        Color = clWhite
        MaxLength = 60
        TabOrder = 6
      end
      object edtSmtpPass: TEdit
        Left = 259
        Top = 108
        Width = 101
        Height = 21
        Color = clWhite
        MaxLength = 60
        PasswordChar = '#'
        TabOrder = 7
      end
      object edtSmtpPort: TEdit
        Left = 403
        Top = 83
        Width = 51
        Height = 21
        Color = clWhite
        MaxLength = 60
        TabOrder = 8
      end
      object cbEmailSSL: TCheckBox
        Left = 365
        Top = 105
        Width = 93
        Height = 30
        Caption = 'SMTP exige conex'#227'o segura'
        TabOrder = 9
        WordWrap = True
      end
      object edtEmailAssunto: TEdit
        Left = 103
        Top = 156
        Width = 354
        Height = 21
        Color = clWhite
        MaxLength = 50
        TabOrder = 10
      end
      object mmEmailMsg: TMemo
        Left = 103
        Top = 179
        Width = 354
        Height = 50
        Color = clWhite
        MaxLength = 1024
        ScrollBars = ssVertical
        TabOrder = 11
      end
      object EdtNomeRemetente: TEdit
        Left = 103
        Top = 132
        Width = 115
        Height = 21
        Color = clWhite
        MaxLength = 60
        TabOrder = 12
      end
      object EdtEmailDestinatario: TEdit
        Left = 322
        Top = 132
        Width = 132
        Height = 21
        Color = clWhite
        MaxLength = 60
        TabOrder = 13
      end
    end
  end
  object PTitulo: TPanel
    AlignWithMargins = True
    Left = 8
    Top = 6
    Width = 473
    Height = 41
    Margins.Right = 0
    Margins.Bottom = 0
    BevelOuter = bvNone
    BorderStyle = bsSingle
    Caption = 'Exporta'#231#227'o de Nota Fiscal Ga'#250'cha'
    Color = clWhite
    Ctl3D = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 1
  end
  object PBotao: TPanel
    Left = 8
    Top = 424
    Width = 469
    Height = 41
    BevelOuter = bvNone
    BorderStyle = bsSingle
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 2
    object BtnSair: TBitBtn
      Left = 363
      Top = 4
      Width = 96
      Height = 27
      Caption = 'Sair'
      TabOrder = 0
      OnClick = BtnSairClick
    end
    object BtnAtivarImpressora: TBitBtn
      Left = 126
      Top = 4
      Width = 231
      Height = 27
      Caption = 'Ativar Impressora e Salvar Configura'#231#227'o'
      TabOrder = 1
      OnClick = BtnAtivarImpressoraClick
    end
  end
  object ACBrECF1: TACBrECF
    QuebraLinhaRodape = False
    Porta = 'COM1'
    TimeOut = 5
    MsgAguarde = 'Aguardando a resposta da Impressora: %d segundos'
    MsgTrabalhando = 'Impressora est'#225' trabalhando'
    MsgRelatorio = 'Imprimindo %s  %d'#170' Via '
    MsgPausaRelatorio = 'Destaque a %d'#170' via, <ENTER> proxima, %d seg.'
    PaginaDeCodigo = 0
    MemoParams.Strings = (
      '[Cabecalho]'
      'LIN000=<center><b>Nome da Empresa</b></center>'
      'LIN001=<center>Nome da Rua , 1234  -  Bairro</center>'
      'LIN002=<center>Cidade  -  UF  -  99999-999</center>'
      
        'LIN003=<center>CNPJ: 01.234.567/0001-22    IE: 012.345.678.90</c' +
        'enter>'
      
        'LIN004=<table width=100%><tr><td align=left><code>Data</code> <c' +
        'ode>Hora</code></td><td align=right>COO: <b><code>NumCupom</code' +
        '></b></td></tr></table>'
      'LIN005=<hr>'
      ' '
      '[Cabecalho_Item]'
      'LIN000=ITEM   CODIGO      DESCRICAO'
      'LIN001=QTD         x UNITARIO       Aliq     VALOR (R$)'
      'LIN002=<hr>'
      
        'MascaraItem=III CCCCCCCCCCCCCC DDDDDDDDDDDDDDDDDDDDDDDDDDDDDQQQQ' +
        'QQQQ UU x VVVVVVVVVVVVV AAAAAA TTTTTTTTTTTTT'
      ' '
      '[Rodape]'
      'LIN000=<hr>'
      
        'LIN001=<table width=100%><tr><td align=left><code>Data</code> <c' +
        'ode>Hora</code></td><td align=right>Projeto ACBr: <b><code>ACBR<' +
        '/code></b></td></tr></table>'
      'LIN002=<center>Obrigado Volte Sempre</center>'
      'LIN003=<hr>'
      ' '
      '[Formato]'
      'Colunas=48'
      'HTML=1'
      'HTML_Title_Size=2'
      'HTML_Font=<font size="2" face="Lucida Console">')
    ConfigBarras.MostrarCodigo = True
    ConfigBarras.LarguraLinha = 0
    ConfigBarras.Altura = 0
    ConfigBarras.Margem = 0
    InfoRodapeCupom.Imposto.ModoCompacto = False
    Left = 404
    Top = 7
  end
  object ACBrMail: TACBrMail
    Host = '127.0.0.1'
    Port = '25'
    SetSSL = False
    SetTLS = False
    Attempts = 3
    DefaultCharset = UTF_8
    IDECharset = CP1252
    Left = 332
    Top = 7
  end
  object ACBrDownload: TACBrDownload
    SizeRecvBuffer = 0
    OnHookMonitor = ACBrDownloadHookMonitor
    Left = 264
    Top = 14
  end
  object ImageList: TImageList
    Left = 180
    Top = 7
    Bitmap = {
      494C010103000800380010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000404
      68B44C4CDFFF0000040600000000000000000000000000000000000000000000
      57856161E7FF0000111900000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000E5B72BFFDBAC37F60000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000005055AA02727
      FCFF0000EDFF4242ECFF0000050800000000000000000000000000004E7B4B4B
      F6FF4343EFFF9090F7FF0000121B000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000E6B728FFE4B114FFE5B31BFFDCAE3BF600000000000000000000
      0000000000000000000000000000000000000000000000000000000000020000
      00070000000C000000120000002607AE4DFF0000001A000000100000000C0000
      00080000000400000002000000010000000000000000000000004444FFFF0000
      F5FF0000EDFF0000E6FF2C2CEFFF000004060000000002024C7B3131F0FF3232
      E7FF4343EFFF5353F6FF8F8FEAFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000E9BB31FFE6B51EFFE6B41AFFE6B41BFFE7B826FFDEB141F6000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000DB654FF19C561FF0000000000000000000000000000
      000000000000000000000000000000000000000000000000000012128AF50101
      F6FF0000EDFF0000E6FF0000DDFF1414EBFF060661A21A1AEDFF2222E0FF3232
      E7FF4343EFFF8080FFFF00005785000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000EBC0
      3CFFE9BA29FFE9BA28FFEABB2BFFE9BA29FFE9B927FFEABD31FFE1B348F60000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000DBF58FF0DC159FF0DC159FF0DC058FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000001111
      8DFB0101EEFF0000E6FF0000DDFF0000D6FF0202E5FF1212D8FF2222E0FF3232
      E7FF6363FAFF00004F7B00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000EEC548FFECC0
      36FFECC035FFEEC443FF00000000EDC44AFFEDC138FFECBF34FFEDC23EFFE3B8
      50F6000000000000000000000000000000000000000000000000000000000004
      02060CC058FF0CC158FF0CC058FF000000000CC158FF0CBF57FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000F0F87F60000E5FF0000DDFF0000D6FF0202CFFF1212D8FF2222E0FF4D4D
      F6FF01014C7B0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000EFCA63FFF0C74BFFEFC5
      42FFF0C950FF000000000000000000000000F0C957FFEFC645FFEFC542FFF0C8
      4BFFE5BC58F60000000000000000000000000000000000000000000000000000
      000003A246FF1FC666FF000000000000000019C361FF22C768FF0FB756FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000011118DFF0000DEFF7373FFFF7777FFFF6F6FFDFF3030EFFF0404
      62A3000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F1CB65FFF4D0
      62FF0000000000000000000000000000000000000000F3CE62FFF2CB52FFF2CA
      4FFFF3CD57FFE8C060F600000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000050D388FF53D48BFF33CA
      73FF000000000000000000000000000000000000000000000000000000000000
      00000909427B1B1BF4FF8F8FFFFF8B8BFFFF8B8BFFFF8B8BFFFF8C8CFFFF5050
      ECFF000004060000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F5D26DFFF5D0
      5FFFF5D05CFFF6D263FFE9C467F6000000000000000000000000000000000000
      0000000000000000000000000000000000000000000011AE53FF77DDA3FF77DD
      A3FF51D288FF0000000000000000000000000000000000000000000000000B0B
      4A8E2222F8FFA6A6FFFFA2A2FFFFA8A8FFFF1414D4FFA2A2FFFFA2A2FFFFA2A2
      FEFF7070F0FF0000040600000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F8D7
      76FFF8D56AFFF8D567FFF9D872FFEDCC76F60000000000000000000000000000
      00000000000000000000000000000000000000000000000000004FD086FF82DF
      ABFF39C977FF00000000000000000000000000000000000000000B0B3E7B2D2D
      FEFFBFBFFFFFB8B8FFFFBEBEFFFF0101EAFF12128DFF2525DCFFB8B8FFFFB8B8
      FFFFBABAFFFF8585EDFF00000406000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FADA7FFFFADB78FFFADC82FF000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000052D1
      88FF001B0B2D00000000000000000000000000000000000000004D4DFFFFD7D7
      FFFFD1D1FFFFD9D9FFFF0808EEFF0A0A427B00000000101087F53636E3FFD0D0
      FFFFD1D1FFFFD5D5FFFF8989E0FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F9D986FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000292987FF4343
      F8FFEFEFFFFF1313F4FF0C0C4A8E00000000000000000000000011118CF95151
      ECFFEAEAFFFF6868FDFF020268B4000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000002727
      87FF2C2CFEFF0C0C3E7B00000000000000000000000000000000000000001111
      8AF55B5BFBFF05055AA000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000}
  end
end
