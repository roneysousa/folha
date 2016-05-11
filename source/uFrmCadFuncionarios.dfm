object frmCadFuncionarios: TfrmCadFuncionarios
  Left = 212
  Top = 193
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Cadastro de Funcion'#225'rios'
  ClientHeight = 450
  ClientWidth = 683
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  ShowHint = True
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel4: TPanel
    Left = 0
    Top = 0
    Width = 683
    Height = 29
    Align = alTop
    BevelInner = bvRaised
    Color = clBlue
    TabOrder = 0
    Visible = False
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 29
    Width = 683
    Height = 361
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 1
    OnChange = PageControl1Change
    object TabSheet1: TTabSheet
      Caption = '&Dados'
      object DBText1: TDBText
        Left = 8
        Top = 24
        Width = 79
        Height = 22
        AutoSize = True
        DataField = 'FUN_MATRICULA'
        DataSource = dsMatricula
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label1: TLabel
        Left = 8
        Top = 8
        Width = 43
        Height = 13
        Caption = 'Matricula'
        Transparent = True
      end
      object Label2: TLabel
        Left = 8
        Top = 49
        Width = 28
        Height = 13
        Caption = 'Nome'
        FocusControl = dbeNMFUNC
        Transparent = True
      end
      object Label3: TLabel
        Left = 8
        Top = 90
        Width = 35
        Height = 13
        Caption = 'Apelido'
        FocusControl = DBEdit2
        Transparent = True
      end
      object Label4: TLabel
        Left = 192
        Top = 90
        Width = 46
        Height = 13
        Caption = 'Endere'#231'o'
        FocusControl = DBEdit3
        Transparent = True
      end
      object Label5: TLabel
        Left = 8
        Top = 129
        Width = 37
        Height = 13
        Caption = 'N'#250'mero'
        FocusControl = DBEdit4
        Transparent = True
      end
      object Label6: TLabel
        Left = 104
        Top = 129
        Width = 64
        Height = 13
        Caption = 'Complemento'
        FocusControl = DBEdit5
      end
      object Label7: TLabel
        Left = 429
        Top = 129
        Width = 21
        Height = 13
        Caption = 'CEP'
        FocusControl = DBEdit6
        Transparent = True
      end
      object Label8: TLabel
        Left = 8
        Top = 170
        Width = 52
        Height = 13
        Caption = 'Refer'#234'ncia'
        FocusControl = DBEdit7
        Transparent = True
      end
      object Label9: TLabel
        Left = 336
        Top = 170
        Width = 33
        Height = 13
        Caption = 'Cidade'
        FocusControl = dbcmbCidade
        Transparent = True
      end
      object Label10: TLabel
        Left = 8
        Top = 208
        Width = 27
        Height = 13
        Caption = 'Bairro'
        Transparent = True
      end
      object Label11: TLabel
        Left = 400
        Top = 209
        Width = 82
        Height = 13
        Caption = 'Fone Resid'#234'ncial'
        FocusControl = DBEdit9
        Transparent = True
      end
      object Label12: TLabel
        Left = 8
        Top = 249
        Width = 32
        Height = 13
        Caption = 'Celular'
        FocusControl = DBEdit10
        Transparent = True
      end
      object Label13: TLabel
        Left = 117
        Top = 249
        Width = 82
        Height = 13
        Caption = 'Data Nascimento'
        Transparent = True
      end
      object Label14: TLabel
        Left = 8
        Top = 289
        Width = 52
        Height = 13
        Caption = 'Nome M'#227'e'
        FocusControl = DBEdit12
        Transparent = True
      end
      object Label15: TLabel
        Left = 8
        Top = 329
        Width = 46
        Height = 13
        Caption = 'Nome Pai'
        FocusControl = DBEdit13
        Transparent = True
      end
      object imgFotoFunc: TImage
        Left = 548
        Top = 6
        Width = 105
        Height = 105
        Stretch = True
      end
      object Label23: TLabel
        Left = 391
        Top = 10
        Width = 45
        Height = 13
        Caption = 'Categoria'
        Transparent = True
      end
      object Label35: TLabel
        Left = 226
        Top = 249
        Width = 77
        Height = 13
        Caption = 'Quant. de Filhos'
        FocusControl = dbeQTFilhos
        Transparent = True
      end
      object Label37: TLabel
        Left = 336
        Top = 249
        Width = 61
        Height = 13
        Caption = 'Escolaridade'
        Transparent = True
      end
      object spbCidade: TSpeedButton
        Left = 536
        Top = 185
        Width = 23
        Height = 22
        Hint = 'Cadastrar Cidade'
        Enabled = False
        Flat = True
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF03
          5D05035D05FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FF035D055BF791058C0D035D05FF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF035D055B
          F79105950E035D05FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FF035D055BF79105920D035D05FF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF035D055B
          F79106950F035D05FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          035D05035D05035D05035D05035D055BF7910C9C18035D05035D05035D05035D
          05035D05FF00FFFF00FFFF00FF035D055BF7913BDA6930CF572AC64D21B83C17
          A62B119F210D9E1C0A9A1506920E05930D058B0D035D05FF00FFFF00FF035D05
          5BF7915BF7915BF7915BF7915BF7915BF79118A92F5BF7915BF7915BF7915BF7
          915BF791035D05FF00FFFF00FFFF00FF035D05035D05035D05035D05035D055B
          F79125BC42035D05035D05035D05035D05035D05FF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FF035D055BF79130CE57035D05FF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF035D055B
          F7913BD968035D05FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FF035D055BF79148EB7F035D05FF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF035D055B
          F7915BF791035D05FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FF035D05035D05FF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
        OnClick = spbCidadeClick
      end
      object spbBairro: TSpeedButton
        Left = 364
        Top = 223
        Width = 23
        Height = 22
        Hint = 'Cadastrar Bairro'
        Enabled = False
        Flat = True
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF03
          5D05035D05FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FF035D055BF791058C0D035D05FF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF035D055B
          F79105950E035D05FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FF035D055BF79105920D035D05FF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF035D055B
          F79106950F035D05FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          035D05035D05035D05035D05035D055BF7910C9C18035D05035D05035D05035D
          05035D05FF00FFFF00FFFF00FF035D055BF7913BDA6930CF572AC64D21B83C17
          A62B119F210D9E1C0A9A1506920E05930D058B0D035D05FF00FFFF00FF035D05
          5BF7915BF7915BF7915BF7915BF7915BF79118A92F5BF7915BF7915BF7915BF7
          915BF791035D05FF00FFFF00FFFF00FF035D05035D05035D05035D05035D055B
          F79125BC42035D05035D05035D05035D05035D05FF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FF035D055BF79130CE57035D05FF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF035D055B
          F7913BD968035D05FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FF035D055BF79148EB7F035D05FF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF035D055B
          F7915BF791035D05FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FF035D05035D05FF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
        OnClick = spbBairroClick
      end
      object dbeNMFUNC: TDBEdit
        Left = 8
        Top = 65
        Width = 528
        Height = 21
        CharCase = ecUpperCase
        DataField = 'FUN_NOME'
        DataSource = dsMatricula
        TabOrder = 1
      end
      object DBEdit2: TDBEdit
        Left = 7
        Top = 106
        Width = 178
        Height = 21
        CharCase = ecUpperCase
        DataField = 'FUN_APELIDO'
        DataSource = dsMatricula
        TabOrder = 2
      end
      object DBEdit3: TDBEdit
        Left = 192
        Top = 106
        Width = 343
        Height = 21
        CharCase = ecUpperCase
        DataField = 'FUN_ENDERECO'
        DataSource = dsMatricula
        TabOrder = 3
      end
      object DBEdit4: TDBEdit
        Left = 7
        Top = 145
        Width = 90
        Height = 21
        DataField = 'FUN_NUMERO'
        DataSource = dsMatricula
        TabOrder = 4
      end
      object DBEdit5: TDBEdit
        Left = 104
        Top = 145
        Width = 318
        Height = 21
        CharCase = ecUpperCase
        DataField = 'FUN_COMPLEMENTO'
        DataSource = dsMatricula
        TabOrder = 5
      end
      object DBEdit6: TDBEdit
        Left = 429
        Top = 145
        Width = 106
        Height = 21
        DataField = 'FUN_CEP'
        DataSource = dsMatricula
        MaxLength = 9
        TabOrder = 6
      end
      object DBEdit7: TDBEdit
        Left = 8
        Top = 186
        Width = 318
        Height = 21
        CharCase = ecUpperCase
        DataField = 'FUN_REFERENCIA'
        DataSource = dsMatricula
        TabOrder = 7
      end
      object dbcmbCidade: TDBLookupComboBox
        Left = 336
        Top = 186
        Width = 200
        Height = 21
        DataField = 'FUN_NMCIDADE'
        DataSource = dsMatricula
        TabOrder = 8
        OnExit = dbcmbCidadeExit
      end
      object DBEdit9: TDBEdit
        Left = 400
        Top = 224
        Width = 134
        Height = 21
        DataField = 'FUN_FONERES'
        DataSource = dsMatricula
        MaxLength = 13
        TabOrder = 10
      end
      object DBEdit10: TDBEdit
        Left = 8
        Top = 265
        Width = 100
        Height = 21
        DataField = 'FUN_FONECEL'
        DataSource = dsMatricula
        MaxLength = 13
        TabOrder = 11
      end
      object DBEdit12: TDBEdit
        Left = 8
        Top = 305
        Width = 417
        Height = 21
        CharCase = ecUpperCase
        DataField = 'FUN_NOMEMAE'
        DataSource = dsMatricula
        TabOrder = 15
      end
      object DBEdit13: TDBEdit
        Left = 8
        Top = 345
        Width = 417
        Height = 21
        CharCase = ecUpperCase
        DataField = 'FUN_NOMEPAI'
        DataSource = dsMatricula
        TabOrder = 16
      end
      object btLocalizar: TBitBtn
        Left = 560
        Top = 120
        Width = 75
        Height = 25
        Hint = 'Abrir foto do funcion'#225'rio'
        Caption = '&Foto'
        Enabled = False
        TabOrder = 17
        OnClick = btLocalizarClick
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FF1696CB1F9FD11293CBFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF1696CB
          9AF3FB6CEAF830B1DC30B1DC30B1DC1FA0D31395CBFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FF1696CB90E2F287FFFF7FFBFF81FAFF7DF4FF74
          EEFE69E3F830B1DC30B1DC23A5D5FF00FFFF00FFFF00FFFF00FFFF00FF1696CB
          72CBE696FEFF77F6FF78F3FF77F2FF76F2FF76F0FF77F0FF7DF3FF5AD3F2199A
          D0FF00FFFF00FFFF00FFFF00FF1696CB1696CB95EBF878F8FF78F3FF77F2FF75
          F0FF74EEFE72EDFE73EDFF5CD5F33CBBE3FF00FFFF00FFFF00FFFF00FF1696CB
          60DDF01696CB87FEFF74F4FF75F3FF73F0FF74EEFE72EDFE73EDFF57D3F25ED8
          F3189CCFFF00FFFF00FFFF00FF1696CB7AF7FC1696CB92E2F292EBF88EEDFA8A
          F4FF73EFFF70EDFE73EDFF55CFEF0159043EBFE3FF00FFFF00FFFF00FF1696CB
          86FEFF6CEEFA1696CB1696CB1696CB1696CB9AEEFA77F0FF6EEEFF01590441E0
          730159040F92CAFF00FFFF00FF1696CB82FBFF7EFAFF7DFAFF7DF8FF77F4FF51
          D4EF1696CB88DAF001590436CB5F2DC5511CB035015904FF00FFFF00FF1696CB
          83FCFF7BF8FF79F6FF78F3FF79F4FF7AF7FF6AEAFC1696CB1696CB0A73121CB0
          330A80131F9ACFFF00FFFF00FF1696CB8EFFFF7BFBFF79F7FF7AF6FF76E7F877
          E6F87DE9FB7EEDFC82F0FF04670A0C9A18036906FF00FFFF00FFFF00FF1392CA
          1696CB87F2FA88F4FC6CE3F61899CE1392CA1696CB1797CC1D9CCF04770A0589
          0CFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF1696CB1C99CE1898CCFF00FFFF
          00FFFF00FFFF00FF036F07058A0C036706FF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FF015603035E06046F0A037308025F05FF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
      end
      object dbeDTNASC: TDBDateEdit
        Left = 117
        Top = 265
        Width = 100
        Height = 21
        DataField = 'FUN_DATANASC'
        DataSource = dsMatricula
        NumGlyphs = 2
        TabOrder = 12
        OnExit = dbeDTNASCExit
      end
      object dbcmbCategoria: TDBLookupComboBox
        Left = 391
        Top = 26
        Width = 147
        Height = 21
        DataField = 'CAT_DESCRICAO'
        DataSource = dsMatricula
        TabOrder = 0
      end
      object dbcmbBairro: TDBLookupComboBox
        Left = 8
        Top = 224
        Width = 355
        Height = 21
        DataField = 'FUN_NMBAIRRO'
        DataSource = dsMatricula
        TabOrder = 9
      end
      object dbeQTFilhos: TDBEdit
        Left = 226
        Top = 265
        Width = 100
        Height = 21
        DataField = 'FUN_QTFILHOS'
        DataSource = dsMatricula
        MaxLength = 2
        TabOrder = 13
      end
      object btnCaptura: TButton
        Left = 560
        Top = 155
        Width = 75
        Height = 25
        Hint = 'Capturar foto da WebCam'
        Caption = 'Capturar'
        Enabled = False
        TabOrder = 18
        Visible = False
        OnClick = btnCapturaClick
      end
      object DBLookupComboBox1: TDBLookupComboBox
        Left = 336
        Top = 265
        Width = 200
        Height = 21
        DataField = 'FUN_NMESCOLARIDADE'
        DataSource = dsMatricula
        TabOrder = 14
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Co&mplemento'
      ImageIndex = 2
      object Label16: TLabel
        Left = 16
        Top = 16
        Width = 20
        Height = 13
        Caption = 'CPF'
        FocusControl = dbeNRCPF
        Transparent = True
      end
      object Label17: TLabel
        Left = 16
        Top = 56
        Width = 50
        Height = 13
        Caption = 'Identidade'
        FocusControl = dbeNRIDENT
        Transparent = True
      end
      object Label18: TLabel
        Left = 183
        Top = 56
        Width = 68
        Height = 13
        Caption = #211'rg'#227'o Emissor'
        FocusControl = DBEdit16
        Transparent = True
      end
      object Label19: TLabel
        Left = 336
        Top = 56
        Width = 68
        Height = 13
        Caption = 'UF do Emissor'
        Transparent = True
      end
      object Label20: TLabel
        Left = 16
        Top = 96
        Width = 57
        Height = 13
        Caption = 'PIS/PASEP'
        FocusControl = DBEdit17
        Transparent = True
      end
      object Label21: TLabel
        Left = 184
        Top = 96
        Width = 28
        Height = 13
        Caption = 'CTPS'
        FocusControl = DBEdit18
        Transparent = True
      end
      object Label22: TLabel
        Left = 336
        Top = 96
        Width = 55
        Height = 13
        Caption = 'S'#233'rie CTPS'
        FocusControl = DBEdit19
        Transparent = True
      end
      object Label24: TLabel
        Left = 16
        Top = 135
        Width = 58
        Height = 13
        Caption = 'Titulo Eleitor'
        FocusControl = DBEdit21
        Transparent = True
      end
      object Label25: TLabel
        Left = 184
        Top = 135
        Width = 31
        Height = 13
        Caption = 'Se'#231#227'o'
        FocusControl = DBEdit22
        Transparent = True
      end
      object Label26: TLabel
        Left = 336
        Top = 136
        Width = 25
        Height = 13
        Caption = 'Zona'
        FocusControl = DBEdit23
      end
      object Label27: TLabel
        Left = 16
        Top = 255
        Width = 71
        Height = 13
        Caption = 'Data Admiss'#227'o'
        Transparent = True
      end
      object Label28: TLabel
        Left = 184
        Top = 255
        Width = 65
        Height = 13
        Caption = 'Data Recis'#227'o'
        Transparent = True
      end
      object Label29: TLabel
        Left = 16
        Top = 295
        Width = 131
        Height = 13
        Caption = 'Optante de Vale Transporte'
        Transparent = True
      end
      object Label30: TLabel
        Left = 184
        Top = 295
        Width = 59
        Height = 13
        Caption = 'Sal'#225'rio Atual'
        FocusControl = dbeVLSALARIO
        Transparent = True
      end
      object Label32: TLabel
        Left = 336
        Top = 256
        Width = 68
        Height = 13
        Caption = 'Data Cadastro'
      end
      object Label33: TLabel
        Left = 16
        Top = 175
        Width = 41
        Height = 13
        Caption = 'Empresa'
        FocusControl = dbcbxEmpresa
        Transparent = True
      end
      object Label34: TLabel
        Left = 16
        Top = 215
        Width = 22
        Height = 13
        Caption = 'CBO'
        FocusControl = dbeCBO
        Transparent = True
      end
      object lbl_CBO: TLabel
        Left = 128
        Top = 235
        Width = 13
        Height = 13
        Caption = '...'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object spLocalizarCBO: TSpeedButton
        Left = 96
        Top = 231
        Width = 23
        Height = 22
        Hint = 'Localizar CBO'
        Enabled = False
        Flat = True
        Glyph.Data = {
          F6000000424DF600000000000000760000002800000010000000100000000100
          0400000000008000000000000000000000001000000000000000000000000000
          80000080000000808000800000008000800080800000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
          7777777777777777777777770077777777777770FF077777777777077FF07777
          7777770777FF077777777770777FFF00777777790777F1111077777790771117
          0B77777770799170B77777777709990B77777777770990B77777777777090B77
          777777777770B777777777777777777777777777777777777777}
        OnClick = spLocalizarCBOClick
      end
      object Label36: TLabel
        Left = 337
        Top = 295
        Width = 88
        Height = 13
        Caption = 'Horas de Trabalho'
        FocusControl = dbeHoras
      end
      object Label38: TLabel
        Left = 16
        Top = 336
        Width = 116
        Height = 13
        Caption = 'Ultimo Per'#237'odo de F'#233'rias'
      end
      object dbeNRCPF: TDBEdit
        Left = 16
        Top = 32
        Width = 147
        Height = 21
        DataField = 'FUN_CPF'
        DataSource = dsMatricula
        MaxLength = 14
        TabOrder = 0
        OnExit = dbeNRCPFExit
      end
      object dbeNRIDENT: TDBEdit
        Left = 16
        Top = 72
        Width = 147
        Height = 21
        DataField = 'FUN_IDENTIDADE'
        DataSource = dsMatricula
        TabOrder = 1
        OnExit = dbeNRIDENTExit
      end
      object DBEdit16: TDBEdit
        Left = 183
        Top = 72
        Width = 134
        Height = 21
        CharCase = ecUpperCase
        DataField = 'FUN_EMISSORIDENT'
        DataSource = dsMatricula
        TabOrder = 2
      end
      object DBEdit17: TDBEdit
        Left = 16
        Top = 112
        Width = 147
        Height = 21
        DataField = 'FUN_PISPASEP'
        DataSource = dsMatricula
        TabOrder = 4
        OnKeyPress = DBEdit17KeyPress
      end
      object DBEdit18: TDBEdit
        Left = 184
        Top = 112
        Width = 134
        Height = 21
        DataField = 'FUN_CTPS'
        DataSource = dsMatricula
        TabOrder = 5
        OnKeyPress = DBEdit18KeyPress
      end
      object DBEdit19: TDBEdit
        Left = 336
        Top = 112
        Width = 134
        Height = 21
        DataField = 'FUN_CTPSSERIE'
        DataSource = dsMatricula
        TabOrder = 6
        OnKeyPress = DBEdit19KeyPress
      end
      object DBEdit21: TDBEdit
        Left = 16
        Top = 151
        Width = 147
        Height = 21
        DataField = 'FUN_TITULO'
        DataSource = dsMatricula
        TabOrder = 7
        OnKeyPress = DBEdit21KeyPress
      end
      object DBEdit22: TDBEdit
        Left = 184
        Top = 151
        Width = 134
        Height = 21
        DataField = 'FUN_TITULOSECAO'
        DataSource = dsMatricula
        TabOrder = 8
      end
      object DBEdit23: TDBEdit
        Left = 336
        Top = 151
        Width = 134
        Height = 21
        DataField = 'FUN_TITULOZONA'
        DataSource = dsMatricula
        TabOrder = 9
        OnKeyPress = DBEdit23KeyPress
      end
      object dbeVLSALARIO: TDBEdit
        Left = 184
        Top = 311
        Width = 134
        Height = 21
        DataField = 'FUN_SALARIO'
        DataSource = dsMatricula
        TabOrder = 16
      end
      object cmbVLTRANS: TComboBox
        Left = 16
        Top = 311
        Width = 147
        Height = 22
        Style = csOwnerDrawFixed
        Enabled = False
        ItemHeight = 16
        TabOrder = 15
        Items.Strings = (
          'SIM'
          'N'#195'O')
      end
      object DBComboBox2: TDBComboBox
        Left = 336
        Top = 72
        Width = 73
        Height = 22
        Style = csOwnerDrawFixed
        DataField = 'FUN_UFIDEN'
        DataSource = dsMatricula
        ItemHeight = 16
        Items.Strings = (
          'AC'
          'AL'
          'AM'
          'AP'
          'BA'
          'CE'
          'DF'
          'ES'
          'GO'
          'MA'
          'MG'
          'MS'
          'MT'
          'PA'
          'PE'
          'PR'
          'PI'
          'RJ'
          'RN'
          'RO'
          'RR'
          'RS'
          'SC'
          'SE'
          'SP'
          'TO')
        TabOrder = 3
      end
      object dbeDTADMI: TDBDateEdit
        Left = 16
        Top = 271
        Width = 147
        Height = 21
        DataField = 'FUN_ADMISSAO'
        DataSource = dsMatricula
        NumGlyphs = 2
        TabOrder = 12
        OnExit = dbeDTADMIExit
      end
      object dbeRECISAO: TDBDateEdit
        Left = 184
        Top = 271
        Width = 134
        Height = 21
        DataField = 'FUN_RECISAO'
        DataSource = dsMatricula
        NumGlyphs = 2
        TabOrder = 13
        OnExit = dbeRECISAOExit
      end
      object dbeDTCADA: TDBDateEdit
        Left = 336
        Top = 271
        Width = 147
        Height = 21
        TabStop = False
        DataField = 'FUN_DATACADASTRO'
        DataSource = dsMatricula
        ReadOnly = True
        NumGlyphs = 2
        TabOrder = 14
      end
      object dbcbxEmpresa: TDBLookupComboBox
        Left = 16
        Top = 191
        Width = 457
        Height = 21
        DataField = 'FUN_NMEMPR'
        DataSource = dsMatricula
        TabOrder = 10
      end
      object dbeCBO: TDBEdit
        Left = 16
        Top = 231
        Width = 81
        Height = 21
        Hint = 'CBO - Classifica'#231#227'o Brasileira de Ocupa'#231#245'es'
        DataField = 'FUN_CBO'
        DataSource = dsMatricula
        TabOrder = 11
        OnChange = dbeCBOChange
        OnExit = dbeCBOExit
        OnKeyPress = dbeCBOKeyPress
      end
      object dbeHoras: TDBEdit
        Left = 337
        Top = 311
        Width = 145
        Height = 21
        DataField = 'FUN_HORAS_TRABALHO'
        DataSource = dsMatricula
        TabOrder = 17
      end
      object DBDateEdit1: TDBDateEdit
        Left = 16
        Top = 352
        Width = 147
        Height = 21
        TabStop = False
        DataField = 'FUN_DTINICIO_FERIAS'
        DataSource = dsMatricula
        ReadOnly = True
        NumGlyphs = 2
        TabOrder = 18
      end
      object DBDateEdit2: TDBDateEdit
        Left = 184
        Top = 352
        Width = 134
        Height = 21
        TabStop = False
        DataField = 'FUN_DTFIM_FERIAS'
        DataSource = dsMatricula
        ReadOnly = True
        NumGlyphs = 2
        TabOrder = 19
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'De&pendentes'
      ImageIndex = 3
      OnShow = TabSheet4Show
      object Label31: TLabel
        Left = 120
        Top = 80
        Width = 53
        Height = 13
        Caption = 'FIL_NOME'
      end
      object dbGridFilhos: TDBGrid
        Left = 0
        Top = 0
        Width = 675
        Height = 331
        Align = alClient
        DataSource = dsFilhos
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnKeyPress = dbGridFilhosKeyPress
        Columns = <
          item
            Expanded = False
            FieldName = 'FIL_NOME'
            Title.Caption = 'NOME'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FIL_DATANASC'
            Title.Caption = 'DATA NASCIMENTO'
            Visible = True
          end>
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'C&onsulta'
      ImageIndex = 1
      OnShow = TabSheet2Show
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 675
        Height = 59
        Align = alTop
        TabOrder = 0
        object lblConsultar: TLabel
          Left = 136
          Top = 5
          Width = 84
          Height = 13
          Caption = 'Nome/Descri'#231#227'o:'
        end
        object rgConsultar: TRadioGroup
          Left = 4
          Top = 1
          Width = 127
          Height = 55
          Caption = 'Consultar por:'
          ItemIndex = 1
          Items.Strings = (
            '&C'#243'digo'
            '&Nome/Descri'#231#227'o')
          TabOrder = 0
          OnClick = rgConsultarClick
        end
        object edtConsultar: TEdit
          Left = 135
          Top = 21
          Width = 434
          Height = 19
          CharCase = ecUpperCase
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 1
          OnChange = edtConsultarChange
          OnKeyPress = edtConsultarKeyPress
        end
        object btnAlterar: TBitBtn
          Left = 577
          Top = 16
          Width = 75
          Height = 25
          Hint = 'Ir para registro'
          Caption = '&Ir'
          Enabled = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 2
          OnClick = btnAlterarClick
          Glyph.Data = {
            36050000424D3605000000000000360400002800000010000000100000000100
            080000000000000100000000000000000000000100000000000000000000FFFF
            FF005441B100614EBE00C0C0C000FCD7DA00ECC8CA00F0CCCE00EFCBCD00EECA
            CC00FDD9DB00FBD7D900EAC5C700EEC9CB00F9D4D600FAD5D700E1BABB00ECC4
            C500EDC6C700E6C0C100E4BEBF00E3BDBE00E9C3C400E7C2C300F4CECF00F8D3
            D400F6D1D200FFCFCF00D6AEAE00D9B2B200D8B1B100E7BFBF00E8C1C100EAC3
            C300F6D0D000CAA09F00CCA2A100D4AAA900E0B6B500DEB5B400DCB3B200D7B0
            AF00E1B9B800C3999700CDA4A200D3AAA80046C6C50053D3D2004D8DB900ADAF
            D900BABCE600F2F2F200C3C3C300B6B6B6008F8F8F008B8B8B00282828001B1B
            1B000D0D0D000000000000000000000000000000000000000000000000000000
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
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000040404040404
            0404040404040404040404040404040439010404040404040404040401330133
            38390133013304040404043A003A003A392F3936330104040404040001070B16
            382E0339013304040404043A330F07050C382E03390104040404040001170E08
            0A392F02383304040404043A33121319090A392F0238330404040400011D1114
            1A0D382E033901040404043A332A1E21152206382E03390104040400012C2629
            201018392F3938330404043A332524271C1F003A3930023833040400012B2D23
            28001B00383132390104043A330133013301000135383138330404003A003A00
            3A003A3534393837010404040404040404040404040404040404}
        end
      end
      object grdConsultar: TDBGrid
        Left = 0
        Top = 59
        Width = 641
        Height = 274
        Align = alClient
        Ctl3D = False
        DataSource = dsConsultar
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnDblClick = grdConsultarDblClick
        Columns = <
          item
            Expanded = False
            FieldName = 'FUN_MATRICULA'
            Title.Caption = 'MATRICULA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FUN_NOME'
            Title.Caption = 'FUNCION'#193'RIO'
            Width = 468
            Visible = True
          end>
      end
      object Panel3: TPanel
        Left = 641
        Top = 59
        Width = 34
        Height = 274
        Align = alRight
        TabOrder = 2
        object sbProximo: TSpeedButton
          Left = 5
          Top = 83
          Width = 25
          Height = 35
          Hint = 'Pr'#243'ximo registro'
          Enabled = False
          Flat = True
          Glyph.Data = {
            76060000424D7606000000000000360400002800000018000000180000000100
            0800000000004002000000000000000000000001000000000000FFFFFF00FFE6
            E600FEE5E500FCE3E300FBE1E100F9DFE000F7DDDE00F7DDDD00F5DBDB00F4DB
            DB00F2D9D900E6D9D900F0D6D700EED4D400EBD2D200E9D0D000E9CFD000E7CD
            CD00E5CBCB00E3C9C900E0C7C700DEC4C400DCC2C200CCC0C000D9C0BF00D7BE
            BD00D4BBBB00D3B9B900D0B7B700CFB5B500CEB4B400CCB3B300C9B0B000C7AE
            AE00C5ACAC00C3AAAA00C1A8A800C1A7A700BFA5A500BDA3A300BCA3A300BAA0
            A100BAA1A000B89E9E00B59C9C00B39A9A00AF969600AD949400A88F8F00A68D
            8D00A18888009F8686009B8382009A818100998080006633330000000000C0C0
            C000000000000000000000000000000000000000000000000000000000000000
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
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000393939393939
            3939393939393939393939393939393939393939393939393939393939393939
            3939393939393939393939393939393939393939393939393939393939393939
            3939393939393939393939393939393939393939393939393939393939393939
            3939393939393939393939393939393939393939393939393939393939003939
            3939393939393939393939393939393939393939000037393939393939393939
            39393939393939393939390000370D3839393939393939393939393939393939
            39390000370D260D383939393939393939393939393939393900003706260D2E
            1138393939393939393939393939393900003706260D2C112E15383939393939
            3939393939393900003705210D2B112E15311938393939393939393939390000
            3706210D261038143019331D383939393939393939000037012106260D383938
            18331D331D38393939393939000037012106260D3839393938193321331D3839
            393939393937011D05250C3839393939393821331D170B383939393939393801
            25063839393939393939381D170B383939393939393939380638393939393939
            393939380B383939393939393939393938393939393939393939393938393939
            3939393939393939393939393939393939393939393939393939393939393939
            3939393939393939393939393939393939393939393939393939393939393939
            3939393939393939393939393939393939393939393939393939393939393939
            3939393939393939393939393939393939393939393939393939}
          ParentShowHint = False
          ShowHint = True
          OnClick = sbProximoClick
        end
        object sbUltimo: TSpeedButton
          Left = 5
          Top = 122
          Width = 25
          Height = 35
          Hint = #218'ltimo registro'
          Enabled = False
          Flat = True
          Glyph.Data = {
            96010000424D9601000000000000760000002800000018000000180000000100
            0400000000002001000000000000000000001000000000000000FFFFFF006130
            30006E3D3D00916161009E6E6E00C2919100CF9E9E00C0C0C000000000000000
            0000000000000000000000000000000000000000000000000000777777777777
            7777777777777777777777777777777777777777777777777777777777777777
            7777777777777777777777777777777077777777777777777777770027777777
            7777777777777002327777777777777777770023432777777777777777700234
            3432777777777777770023434343277777777777700234343434327777777777
            0025656565656547777777700256565656565654777777772121212121212121
            2777777777777777777777777777777000000000000000007777777034343434
            3434343617777770456565656565656527777770365656565656565617777770
            4565656565656565277777771212121212121212177777777777777777777777
            7777777777777777777777777777777777777777777777777777}
          ParentShowHint = False
          ShowHint = True
          OnClick = sbUltimoClick
        end
        object sbAnterior: TSpeedButton
          Left = 5
          Top = 44
          Width = 25
          Height = 35
          Hint = 'Registro anterior'
          Enabled = False
          Flat = True
          Glyph.Data = {
            76060000424D7606000000000000360400002800000018000000180000000100
            0800000000004002000000000000000000000001000000000000FFFFFF00FEE5
            E400FDE3E300FBE1E100F9DFE000F7DEDD00F4DBDB00F2D9D900E6D9D900F0D7
            D700EED4D400EBD2D200E9CFCF00E7CECD00E5CBCB00E3C9C900E0C6C700DEC4
            C500DBC2C200D9C0C000CDC0C000CCC0C000D7BDBD00D5BBBB00D3B9B900D1B7
            B700CFB6B500CFB5B500CDB4B400CCB3B300C7AEAE00C6ACAC00C1A8A800BFA6
            A600BAA0A100B89E9E00B39A9A00B1989800AD949400AA919100A68D8D00A38A
            8A009F8686009D8484009C8283009A818100998080006633330000000000C0C0
            C000000000000000000000000000000000000000000000000000000000000000
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
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000313131313131
            3131313131313131313131313131313131313131313131313131313131313131
            3131313131313131313131313131313131313131313131313131313131313131
            3131313131313131313131313131313131313131313131313131313131313131
            3131313131313131313131313131313131313131313131003131313131313131
            313131003131313131313131313100002F31313131313131313100002F313131
            313131313100002F01303131313131313100002F1A3031313131313100002F01
            1E0530313131313100002F1A2A1A303131313131312F011E05210A3031313100
            002F1E2A1A1408303131313131313004210A230D303100002F1E2A1A14083031
            313131313131313005210D241130002F1A2A1A16083031313131313131313131
            300A240D26162F1A2A1A140830313131313131313131313131300D2611281A2A
            1A1408303131313131313131313131313131301128162A1A1408303131313131
            313131313131313131313130162A1A1408303131313131313131313131313131
            3131313130191408303131313131313131313131313131313131313131300830
            3131313131313131313131313131313131313131313130313131313131313131
            3131313131313131313131313131313131313131313131313131313131313131
            3131313131313131313131313131313131313131313131313131313131313131
            3131313131313131313131313131313131313131313131313131313131313131
            3131313131313131313131313131313131313131313131313131}
          ParentShowHint = False
          ShowHint = True
          OnClick = sbAnteriorClick
        end
        object sbPrimeiro: TSpeedButton
          Left = 5
          Top = 6
          Width = 25
          Height = 35
          Hint = 'Primeiro registro'
          Enabled = False
          Flat = True
          Glyph.Data = {
            96010000424D9601000000000000760000002800000018000000180000000100
            0400000000002001000000000000000000001000000000000000FFFFFF006130
            30006E3D3D00916161009E6E6E00C2919100CF9E9E00C0C0C000000000000000
            0000000000000000000000000000000000000000000000000000777777777777
            7777777777777777777777777777777777777777777777777777777777777770
            0000000000000000777777703434343434343436177777704565656565656565
            2777777036565656565656561777777045656565656565652777777712121212
            1212121217777777777777777777777777777777777777777777777777777770
            0000000000000000777777771212121212121212177777777143434343434341
            7777777777143434343656177777777777714343436561777777777777771434
            3656177777777777777771436561777777777777777777165617777777777777
            7777777161777777777777777777777717777777777777777777777777777777
            7777777777777777777777777777777777777777777777777777}
          ParentShowHint = False
          ShowHint = True
          OnClick = sbPrimeiroClick
        end
      end
    end
  end
  object pnlBotoes: TPanel
    Left = 0
    Top = 390
    Width = 683
    Height = 41
    Align = alBottom
    Color = clNavy
    TabOrder = 2
    object BtAdicionar: TBitBtn
      Left = 8
      Top = 8
      Width = 75
      Height = 25
      Caption = '&Adicionar'
      TabOrder = 0
      OnClick = BtAdicionarClick
      Glyph.Data = {
        36050000424D3605000000000000360400002800000010000000100000000100
        08000000000000010000E30E0000E30E0000000100000001000031319C003131
        A5003131AD003131B5003131BD003131C6003131CE003131D6003131DE003131
        E7003131EF003131F700FF00FF003131FF003139FF003939FF003942FF00424A
        FF004A4AFF005252FF006363FF006B6BFF006B73FF007B84FF00848CFF009C9C
        FF00C6CEFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000C1B1B1B1B1B
        1B1B1B1B1B1B1B1B1B0C1B16030404040505040403030201141B1B05080A0B0B
        0A0B0A0A0A090805001B1B070A0E0E0E0E0E0E0E0E0E0906021B1B090E0E0E0E
        0E1B180E0E0E0B08031B1B0A0E0E0E0E0E1B180E0E0E0E09041B1B0E0E0E0E0E
        0E1B180E0E0E0E0A051B1B0E0E181818181B181818180B0A061B1B0E0E1B1B1B
        1B1B1B1B1B1B0A0A061B1B0E10100E0E0E1B180E0E0B0A0A061B1B0E1313100E
        0E1B180E0E0B0A0A061B1B1015141110101B180E0E0E0B0B061B1B1318151312
        111B180E0E0E0E0B061B1B1419181514131211100E0E0E0B041B1B1A1412100E
        0E0E0E0E0E0E0B08171B0C1B1B1B1B1B1B1B1B1B1B1B1B1B1B0C}
    end
    object BtEditar: TBitBtn
      Left = 88
      Top = 8
      Width = 75
      Height = 25
      Caption = '&Editar'
      TabOrder = 1
      OnClick = BtEditarClick
      Glyph.Data = {
        36050000424D3605000000000000360400002800000010000000100000000100
        08000000000000010000E30E0000E30E0000000100000001000031319C003131
        A5003131AD003131B5003131BD003131C6003131CE003131D6003131DE003131
        E7003131EF003131F700FF00FF003131FF003139FF003939FF003942FF00424A
        FF004A4AFF005252FF006363FF006B6BFF006B73FF007B84FF00848CFF009C9C
        FF00C6CEFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000C1B1B1B1B1B
        1B1B1B1B1B1B1B1B1B0C1B16030404040505040403030201141B1B05080A0B0B
        0A0B0A0A0A090805001B1B070A0E0E0E0E0E0E0E0E0E0906021B1B090E0E0E0E
        0E0E0E0E0E0E0B08031B1B0A0E1818181818181818181809041B1B0E0E181B1B
        1B1B1B1B1B1B180A051B1B0E0E0E181B1B1B1B1B1B180B0A061B1B0E0E0E0E18
        1B1B1B1B180B0A0A061B1B0E10100E0E181B1B180E0B0A0A061B1B0E1313100E
        0E18180E0E0B0A0A061B1B1015141110100E0E0E0E0E0B0B061B1B1318151312
        11110E0E0E0E0E0B061B1B1419181514131211100E0E0E0B041B1B1A1412100E
        0E0E0E0E0E0E0B08171B0C1B1B1B1B1B1B1B1B1B1B1B1B1B1B0C}
    end
    object BtExcluir: TBitBtn
      Left = 168
      Top = 8
      Width = 75
      Height = 25
      Caption = 'E&xcluir'
      TabOrder = 2
      OnClick = BtExcluirClick
      Glyph.Data = {
        36050000424D3605000000000000360400002800000010000000100000000100
        08000000000000010000E30E0000E30E0000000100000001000031319C003131
        A5003131AD003131B5003131BD003131C6003131CE003131D6003131DE003131
        E7003131EF003131F700FF00FF003131FF003139FF003939FF003942FF00424A
        FF004A4AFF005252FF006363FF006B6BFF006B73FF007B84FF00848CFF009C9C
        FF00C6CEFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000C1B1B1B1B1B
        1B1B1B1B1B1B1B1B1B0C1B16030404040505040403030201141B1B05080A0B0B
        0A0B0A0A0A090805001B1B070A0E0E0E0E0E0E0E0E0E0906021B1B090E0E0E0E
        0E0E0E0E0E0E0B08031B1B0A0E0E0E0E0E0E0E0E0E0E0E09041B1B0E0E0E0E0E
        0E0E0E0E0E0E0E0A051B1B0E0E1818181818181818180B0A061B1B0E0E1B1B1B
        1B1B1B1B1B1B0A0A061B1B0E10100E0E0E0E0E0E0E0B0A0A061B1B0E1313100E
        0E0E0E0E0E0B0A0A061B1B1015141110100E0E0E0E0E0B0B061B1B1318151312
        11110E0E0E0E0E0B061B1B1419181514131211100E0E0E0B041B1B1A1412100E
        0E0E0E0E0E0E0B08171B0C1B1B1B1B1B1B1B1B1B1B1B1B1B1B0C}
    end
    object BtPesquisar: TBitBtn
      Left = 248
      Top = 8
      Width = 75
      Height = 25
      Caption = 'C&onsulta'
      TabOrder = 3
      OnClick = BtPesquisarClick
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00840000008400
        0000840000008400000084000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF008400000084000000840000008400000084000000FF00FF008400000000FF
        FF00840000008400000084000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF008400000000FFFF00840000008400000084000000FF00FF008400000000FF
        FF00840000008400000084000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF008400000000FFFF00840000008400000084000000FF00FF00840000008400
        00008400000084000000840000008400000084000000FF00FF00840000008400
        00008400000084000000840000008400000084000000FF00FF00840000008400
        000000FFFF0084000000840000008400000084000000840000008400000000FF
        FF008400000084000000840000008400000084000000FF00FF00840000008400
        000000FFFF00840000008400000084000000FF00FF00840000008400000000FF
        FF008400000084000000840000008400000084000000FF00FF00840000008400
        000000FFFF00840000008400000084000000FF00FF00840000008400000000FF
        FF008400000084000000840000008400000084000000FF00FF00FF00FF008400
        0000840000008400000084000000840000008400000084000000840000008400
        000084000000840000008400000084000000FF00FF00FF00FF00FF00FF00FF00
        FF008400000000FFFF00840000008400000084000000FF00FF008400000000FF
        FF00840000008400000084000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF008400000084000000840000008400000084000000FF00FF00840000008400
        0000840000008400000084000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00840000008400000084000000FF00FF00FF00FF00FF00FF008400
        00008400000084000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF008400000000FFFF0084000000FF00FF00FF00FF00FF00FF008400
        000000FFFF0084000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00840000008400000084000000FF00FF00FF00FF00FF00FF008400
        00008400000084000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
    end
    object BtCancelar: TBitBtn
      Left = 433
      Top = 8
      Width = 75
      Height = 25
      Caption = '&Cancelar'
      Enabled = False
      TabOrder = 4
      OnClick = BtCancelarClick
      Glyph.Data = {
        36050000424D3605000000000000360400002800000010000000100000000100
        08000000000000010000E30E0000E30E00000001000000010000104A7B00184A
        840018528C0018529400185A9C00185AA5001863AD001863B500186BBD00186B
        C6001873CE001873D600187BDE00187BE7001884E7001884EF001884F700188C
        F700FF00FF00188CFF001894FF002194FF00299CFF00319CFF0039A5FF004AAD
        FF0052ADFF0063B5FF006BBDFF0084C6FF00ADDEFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00121F1F1F1F1F
        1F1F1F1F1F1F1F1F1F121F1A030404040505040403030201191F1F05080A0A0A
        0A0A0A0A0A090805001F1F060A0C0C0D0E111111110C0906021F1F090C0F1F1D
        111111111D1F0A08031F1F0A0E11131F1D11111D1F0E0B09041F1F0C11131111
        1F1D1D1F110E0B0A051F1F0E13111111111F1D110F0C0A0A061F1F0F13131111
        1D1F1F1D0E0B0A0A061F1F131515131D1F100F1F1D0A0A0A061F1F1318181D1F
        13130F0E1F1D0A0A061F1F151A191F151514110F0E1F0A0A061F1F181C1A1817
        16161513100F0C0A061F1F191D1C1A191817161514110F0A041F1F1E19171513
        1311110F0E0C0A081B1F121F1F1F1F1F1F1F1F1F1F1F1F1F1F12}
    end
    object BtGravar: TBitBtn
      Left = 513
      Top = 8
      Width = 75
      Height = 25
      Caption = '&Gravar'
      Enabled = False
      TabOrder = 5
      OnClick = BtGravarClick
      Glyph.Data = {
        36050000424D3605000000000000360400002800000010000000100000000100
        08000000000000010000E30E0000E30E00000001000000010000104A7B00184A
        840018528C0018529400185A9C00185AA5001863AD001863B500186BBD00186B
        C6001873CE001873D600187BDE00187BE7001884E7001884EF001884F700188C
        F700FF00FF00188CFF001894FF002194FF00299CFF00319CFF0039A5FF004AAD
        FF0052ADFF0063B5FF006BBDFF0084C6FF00ADDEFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00121F1F1F1F1F
        1F1F1F1F1F1F1F1F1F121F1A030404040505040403030201191F1F05080A0A0A
        0A0A0A0A0A090805001F1F060A0C0C0D0E111111110C0906021F1F090C0F0F0F
        1D111111110E0A08031F1F0A0E11131D1F1D1111110E0B09041F1F0C11131D1F
        1D1F1D11110E0B0A051F1F0E131D1F1D11111F1D0F0C0A0A061F1F0F13131D11
        1111111F1D0B0A0A061F1F131515131311100F0F1F1D0A0A061F1F1318181514
        13130F0E0C1F1D0A061F1F151A1916151514110F0E0C1F0A061F1F181C1A1817
        16161513100F0C0A061F1F191D1C1A191817161514110F0A041F1F1E19171513
        1311110F0E0C0A081B1F121F1F1F1F1F1F1F1F1F1F1F1F1F1F12}
    end
    object BtSair: TBitBtn
      Left = 599
      Top = 8
      Width = 75
      Height = 25
      Caption = '&Sair'
      TabOrder = 6
      OnClick = BtSairClick
      Glyph.Data = {
        36050000424D3605000000000000360400002800000010000000100000000100
        08000000000000010000220B0000220B00000001000000010000006400004242
        42008C6363009A666600B9666600BB686800B0717200C3686900C66A6B00C76A
        6D00CF6C6E00D2686900D16D6E00CC6E7100C0797A00D2707200D4707100D572
        7300D0727500D3747600D9757600D8767700E37D7E000080000000960000DC7F
        8000FF00FF00D7868700DA888800D8888A00DA888A00DF898A00E6808100E085
        8500E9818200EE868700E3888900E78C8D00F0878800F18B8C00F28B8C00F18D
        8E00F48C8D00F48E8F00EB8F9000EC969700E49A9800F3919200F7909100F791
        9200F2939400F9909200F9949500FA949500F9969700F0999A00FC999A00FF9D
        9E00F7B58400F5A7A500FACCAA00FBD6BB00FADCDC00FFFFFF00000000000000
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
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000001A1A1A1A1A1A
        1A02011A1A1A1A1A1A1A1A1A1A1A02030405011A1A1A1A1A1A1A1A1A0203080B
        0B07010303030303031A1A1A030C0C0C0A09010E1F323B3B031A1A1A030C0C10
        0F0D01181818183B031A1A1A03111114151201181818183B031A1A1A03161616
        201301181717173B031A1A1A0326222D3E1D01171700003B031A1A1A03262337
        3F1E013C3A3A3A3B031A1A1A03272B282A19013C3D3D3D3B031A1A1A03273031
        2921013C3D3D3D3B031A1A1A032734352F24013C3D3D3D3B031A1A1A03273338
        3625013C3D3D3D3B031A1A1A03032E33392C013C3D3D3D3B031A1A1A1A1A0306
        1B1C010303030303031A1A1A1A1A1A1A0303011A1A1A1A1A1A1A}
    end
    object btHorarios: TBitBtn
      Left = 342
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Hor'#225'rios'
      TabOrder = 7
      OnClick = btHorariosClick
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFBC4E03BC4E03BC4E03BC4E03BC4E03BC4E03BC
        4E03BC4E03BC4E03BC4E03BC4E03BC4E03BC4E03BC4E03FF00FFFF00FFBC4D02
        FFFFFFFFFFFFFFFFFF68BA5BFFEACFFFEACFFFEACFB47B41726A1EFFCFA0FFCF
        A0FFCFA0BC4C01FF00FFFF00FFBC4E03FFFFFFFFFFFFFFFFFF68BA5BFFEACFFF
        EBD3FFE9C57D706D0E485F73685BD4AC83FFCFA0BD4D02FF00FFFF00FFBA4C01
        70B76067B65967B65B3D9F2D63AF4B67AF4B67AF484E99413C636F9F676D5A4A
        36527732BA4D01FF00FFFF00FFBC4D02EDF3E5EDF7EBEDF7EB62B555DAE5C4ED
        E6C9EDE0BBE1D8A65A7D3FE5959AA06869604838C14900FF00FFFF00FFBC4D02
        FFFFF8FCFCFFF7F7FF63B460F0F4E1FFFCEEFFF2E6FAE6C767AC47DE9D9AD993
        99B164626B5B33FF00FFFF00FFC64E008B8AF24445EE3232E3222BC76363F7A7
        BACEA6D48896C57B4EA7399FC47884834F7580890897C90018A0FF00FF66479D
        4647CC9790B6A099B4A7A1C15B59C11B2BBB6E9D9A9ED3874DA73CA0CE8CAFC2
        7D6EADA70559E0040CA54141FA545AF0D4D4C5FFEFACF4BF81FBC788FFFAD16D
        6BBD5952FFEDEDF26DBA59FFFCFFFFEFDDFFE5B85D446CFF00FF4141FA9F9ED7
        FFFFD4FEFCCAFBF4C4F4D196EEBB7DD5C4B1393ACEB4B8E979C15BFFF8F0FEEB
        D4FEE1BAB0490AFF00FF4D4CF4AFBAE3FFFFF6FFFFD9868775313434544B3EA3
        96964145D4924637CE5801C75602C75602C75602FF00FFFF00FF4545F8B2B2E0
        FFFFFFFFFFF3D8D8B75F6053B2976BE7CBA9353EE58E4030FF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FF4545F87E79E3F8F4EBFFFFFFFFFFFFF2F2DEA7A17993
        8FB52D30FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF4647FB
        827FE0DDD8E5EAF4F0EEF3F6A6A5DC3839E9FF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FF3536FE403EF04A49E93C3CED2828FAFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 431
    Width = 683
    Height = 19
    Panels = <>
    Visible = False
  end
  object dsMatricula: TDataSource
    AutoEdit = False
    DataSet = dmFolha.cdsFuncionarios
    OnDataChange = dsMatriculaDataChange
    Left = 552
    Top = 288
  end
  object dsFilhos: TDataSource
    DataSet = dmFolha.cdsFilhos
    Left = 592
    Top = 288
  end
  object dsConsultar: TDataSource
    DataSet = cdsConsultar
    OnStateChange = dsConsultarStateChange
    OnDataChange = dsConsultarDataChange
    Left = 116
    Top = 58
  end
  object datasetConsultar: TSQLDataSet
    CommandText = 'select FUN_MATRICULA, FUN_NOME from FUNCIONARIOS'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmFolha.sqlCon_Folha
    Left = 148
    Top = 58
  end
  object dspConsultar: TDataSetProvider
    DataSet = datasetConsultar
    Options = [poAllowCommandText]
    Left = 180
    Top = 58
  end
  object cdsConsultar: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'dspConsultar'
    Left = 212
    Top = 58
    object cdsConsultarFUN_MATRICULA: TIntegerField
      FieldName = 'FUN_MATRICULA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      DisplayFormat = '00000'
    end
    object cdsConsultarFUN_NOME: TStringField
      FieldName = 'FUN_NOME'
      Size = 50
    end
  end
  object OpenPictureDialog1: TOpenPictureDialog
    Filter = 'JPEG Image File (*.jpg)|*.jpg|JPEG Image File (*.jpeg)|*.jpeg'
    Left = 420
    Top = 173
  end
end
