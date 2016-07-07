object Form1: TForm1
  Left = 0
  Top = 0
  BorderIcons = []
  Caption = 'Form1'
  ClientHeight = 501
  ClientWidth = 485
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
    Height = 410
    ActivePage = TabSheet1
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
        Top = 282
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
        Top = 274
        Width = 62
        Height = 47
        Brush.Color = clRed
        Shape = stCircle
      end
      object lbRZPendente: TLabel
        Left = 3
        Top = 238
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
      object lbDataUltMovto_ECF: TLabel
        Left = 3
        Top = 100
        Width = 149
        Height = 14
        Caption = 'Data do ultimo movimento:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lbDataHora_ECF: TLabel
        Left = 3
        Top = 78
        Width = 131
        Height = 14
        Caption = 'Data/Hora atual do ECF:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = False
      end
      object lbCOO: TLabel
        Left = 3
        Top = 120
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
        Top = 142
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
        Top = 162
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
        Left = 3
        Top = 179
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
        Left = 3
        Top = 198
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
      object lbPortaCOM: TLabel
        Left = 3
        Top = 219
        Width = 62
        Height = 14
        Caption = 'Porta COM:'
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
        Top = 64
        Width = 49
        Height = 13
        Caption = 'Endere'#231'o:'
      end
      object Label141: TLabel
        Left = 224
        Top = 109
        Width = 30
        Height = 13
        Caption = 'Senha'
      end
      object Label140: TLabel
        Left = 63
        Top = 109
        Width = 36
        Height = 13
        Caption = 'Usu'#225'rio'
      end
      object Label138: TLabel
        Left = 67
        Top = 87
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
        Top = 85
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
        Style = csDropDownList
        TabOrder = 1
        OnChange = CBPortaChange
      end
      object BtnAtivarImpressora: TBitBtn
        Left = 226
        Top = 356
        Width = 231
        Height = 25
        Caption = 'Ativar Impressora e Salvar Configura'#231#227'o'
        TabOrder = 2
        OnClick = BtnAtivarImpressoraClick
      end
      object EdtRazaoSocial: TEdit
        Left = 103
        Top = 34
        Width = 353
        Height = 21
        TabOrder = 3
      end
      object EdtEndereco: TEdit
        Left = 103
        Top = 61
        Width = 353
        Height = 21
        TabOrder = 4
      end
      object GroupBox1: TGroupBox
        Left = 3
        Top = 233
        Width = 454
        Height = 120
        Caption = 'Configura'#231#245'es Avan'#231'adas (Utilize somente se tiver certeza)'
        TabOrder = 5
        object Label7: TLabel
          Left = 150
          Top = 17
          Width = 139
          Height = 13
          Caption = '&Baud rate (Bits por Segundo)'
          FocusControl = cmbBaudRate
        end
        object Label8: TLabel
          Left = 295
          Top = 18
          Width = 119
          Height = 13
          Caption = '&Data Bits (Bits de Dados)'
          FocusControl = cmbDataBits
        end
        object Label9: TLabel
          Left = 5
          Top = 58
          Width = 81
          Height = 13
          Caption = '&Parity (Paridade)'
          FocusControl = cmbParity
        end
        object Label11: TLabel
          Left = 150
          Top = 57
          Width = 122
          Height = 13
          Caption = '&Stop Bits (Bits de Parada)'
          FocusControl = cmbStopBits
        end
        object Label10: TLabel
          Left = 295
          Top = 57
          Width = 157
          Height = 13
          Caption = '&Handshaking (Controle de Fluxo)'
          FocusControl = cmbHandShaking
        end
        object Label12: TLabel
          Left = 5
          Top = 19
          Width = 55
          Height = 13
          Caption = '&Porta Serial'
          FocusControl = cmbPortaSerial
        end
        object cmbBaudRate: TComboBox
          Left = 150
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
          Left = 295
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
          Left = 5
          Top = 75
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
          Left = 150
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
          Left = 295
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
        object cmbPortaSerial: TComboBox
          Left = 5
          Top = 35
          Width = 139
          Height = 21
          DropDownCount = 10
          TabOrder = 5
          Text = 'COM1'
          OnChange = cmbPortaSerialChange
          Items.Strings = (
            'COM1'
            'COM2'
            'COM3'
            'COM4'
            'COM5'
            'COM6'
            'COM7'
            'COM8'
            'COM9')
        end
        object chHardFlow: TCheckBox
          Left = 5
          Top = 98
          Width = 89
          Height = 17
          Caption = 'HardFlow'
          TabOrder = 6
          OnClick = chHardFlowClick
        end
        object chSoftFlow: TCheckBox
          Left = 93
          Top = 98
          Width = 81
          Height = 17
          Caption = 'SoftFlow'
          TabOrder = 7
          OnClick = chSoftFlowClick
        end
      end
      object edtSmtpHost: TEdit
        Left = 103
        Top = 85
        Width = 257
        Height = 21
        Color = clWhite
        MaxLength = 60
        TabOrder = 6
      end
      object edtSmtpUser: TEdit
        Left = 103
        Top = 107
        Width = 115
        Height = 21
        Color = clWhite
        MaxLength = 60
        TabOrder = 7
      end
      object edtSmtpPass: TEdit
        Left = 259
        Top = 107
        Width = 101
        Height = 21
        Color = clWhite
        MaxLength = 60
        TabOrder = 8
      end
      object edtSmtpPort: TEdit
        Left = 403
        Top = 85
        Width = 51
        Height = 21
        Color = clWhite
        MaxLength = 60
        TabOrder = 9
      end
      object cbEmailSSL: TCheckBox
        Left = 365
        Top = 104
        Width = 93
        Height = 30
        Caption = 'SMTP exige conex'#227'o segura'
        TabOrder = 10
        WordWrap = True
      end
      object edtEmailAssunto: TEdit
        Left = 103
        Top = 156
        Width = 354
        Height = 21
        Color = clWhite
        MaxLength = 50
        TabOrder = 11
      end
      object mmEmailMsg: TMemo
        Left = 103
        Top = 179
        Width = 354
        Height = 50
        Color = clWhite
        MaxLength = 1024
        ScrollBars = ssVertical
        TabOrder = 12
      end
      object EdtNomeRemetente: TEdit
        Left = 103
        Top = 132
        Width = 115
        Height = 21
        Color = clWhite
        MaxLength = 60
        TabOrder = 13
      end
      object EdtEmailDestinatario: TEdit
        Left = 322
        Top = 132
        Width = 132
        Height = 21
        Color = clWhite
        MaxLength = 60
        TabOrder = 14
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
  object BtnSair: TBitBtn
    Left = 382
    Top = 467
    Width = 96
    Height = 27
    Caption = 'Sair'
    TabOrder = 2
    OnClick = BtnSairClick
  end
  object Timer: TTimer
    OnTimer = TimerTimer
    Left = 20
    Top = 15
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
end
