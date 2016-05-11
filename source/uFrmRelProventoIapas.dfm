inherited frmRelProvIapas: TfrmRelProvIapas
  Caption = 'Rela'#231#227'o de PROVENTOS e IAPAS'
  ClientWidth = 374
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel4: TPanel
    Width = 374
  end
  inherited Panel1: TPanel
    Width = 374
  end
  inherited Panel5: TPanel
    Width = 374
    inherited BtImprimir: TBitBtn
      Left = 16
      TabOrder = 2
      Visible = False
    end
    object BtImprimir2: TBitBtn
      Left = 192
      Top = 8
      Width = 75
      Height = 25
      Hint = 'Visualizar impress'#227'o'
      Caption = '&Imprimir'
      TabOrder = 0
      OnClick = BtImprimir2Click
      Glyph.Data = {
        36050000424D3605000000000000360400002800000010000000100000000100
        0800000000000001000000000000000000000001000000000000000000004000
        000080000000FF000000002000004020000080200000FF200000004000004040
        000080400000FF400000006000004060000080600000FF600000008000004080
        000080800000FF80000000A0000040A0000080A00000FFA0000000C0000040C0
        000080C00000FFC0000000FF000040FF000080FF0000FFFF0000000020004000
        200080002000FF002000002020004020200080202000FF202000004020004040
        200080402000FF402000006020004060200080602000FF602000008020004080
        200080802000FF80200000A0200040A0200080A02000FFA0200000C0200040C0
        200080C02000FFC0200000FF200040FF200080FF2000FFFF2000000040004000
        400080004000FF004000002040004020400080204000FF204000004040004040
        400080404000FF404000006040004060400080604000FF604000008040004080
        400080804000FF80400000A0400040A0400080A04000FFA0400000C0400040C0
        400080C04000FFC0400000FF400040FF400080FF4000FFFF4000000060004000
        600080006000FF006000002060004020600080206000FF206000004060004040
        600080406000FF406000006060004060600080606000FF606000008060004080
        600080806000FF80600000A0600040A0600080A06000FFA0600000C0600040C0
        600080C06000FFC0600000FF600040FF600080FF6000FFFF6000000080004000
        800080008000FF008000002080004020800080208000FF208000004080004040
        800080408000FF408000006080004060800080608000FF608000008080004080
        800080808000FF80800000A0800040A0800080A08000FFA0800000C0800040C0
        800080C08000FFC0800000FF800040FF800080FF8000FFFF80000000A0004000
        A0008000A000FF00A0000020A0004020A0008020A000FF20A0000040A0004040
        A0008040A000FF40A0000060A0004060A0008060A000FF60A0000080A0004080
        A0008080A000FF80A00000A0A00040A0A00080A0A000FFA0A00000C0A00040C0
        A00080C0A000FFC0A00000FFA00040FFA00080FFA000FFFFA0000000C0004000
        C0008000C000FF00C0000020C0004020C0008020C000FF20C0000040C0004040
        C0008040C000FF40C0000060C0004060C0008060C000FF60C0000080C0004080
        C0008080C000FF80C00000A0C00040A0C00080A0C000FFA0C00000C0C00040C0
        C00080C0C000FFC0C00000FFC00040FFC00080FFC000FFFFC0000000FF004000
        FF008000FF00FF00FF000020FF004020FF008020FF00FF20FF000040FF004040
        FF008040FF00FF40FF000060FF004060FF008060FF00FF60FF000080FF004080
        FF008080FF00FF80FF0000A0FF0040A0FF0080A0FF00FFA0FF0000C0FF0040C0
        FF0080C0FF00FFC0FF0000FFFF0040FFFF0080FFFF00FFFFFF00DBDBDBDBDBDB
        DBDBDBDBDBDBDBDBDBDBDBDB0000000000000000000000DBDBDBDB00DBDBDBDB
        DBDBDBDBDB00DB00DBDB00000000000000000000000000DB00DB00DBDBDBDBDB
        DBFCFCFCDBDB000000DB00DBDBDBDBDBDB929292DBDB00DB00DB000000000000
        00000000000000DBDB0000DBDBDBDBDBDBDBDBDBDB00DB00DB00DB0000000000
        0000000000DB00DB0000DBDB00FFFFFFFFFFFFFFFF00DB00DB00DBDBDB00FF00
        00000000FF00000000DBDBDBDB00FFFFFFFFFFFFFFFF00DBDBDBDBDBDBDB00FF
        0000000000FF00DBDBDBDBDBDBDB00FFFFFFFFFFFFFFFF00DBDBDBDBDBDBDB00
        0000000000000000DBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDB}
    end
  end
  object ppReport1: TppReport
    AutoStop = False
    DataPipeline = ppDBPipeline1
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 297000
    PrinterSetup.mmPaperWidth = 210000
    PrinterSetup.PaperSize = 9
    Template.FileName = 'C:\Empresa\FOLHA\Relatorios\rbProventosIAPAS2.rtm'
    Units = utMillimeters
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = False
    PreviewFormSettings.WindowState = wsMaximized
    PreviewFormSettings.ZoomSetting = zs100Percent
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 32
    Top = 149
    Version = '7.01'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBPipeline1'
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 45773
      mmPrintPosition = 0
      object ppImage1: TppImage
        UserName = 'Image1'
        MaintainAspectRatio = False
        Stretch = True
        mmHeight = 27252
        mmLeft = 3175
        mmTop = 2910
        mmWidth = 52652
        BandType = 0
      end
      object lbl_Empresa: TppLabel
        UserName = 'lbl_Empresa'
        Caption = 'EMPRESA :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 65352
        mmTop = 4233
        mmWidth = 19050
        BandType = 0
      end
      object txtRelatorio: TppLabel
        UserName = 'txtRelatorio'
        Caption = 'RELA'#199#195'O DE PROVENTOS E IAPAS DE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4022
        mmLeft = 65617
        mmTop = 9525
        mmWidth = 66082
        BandType = 0
      end
      object ppLabel1: TppLabel
        UserName = 'Label1'
        Caption = 'MATRIC.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3598
        mmLeft = 1058
        mmTop = 38894
        mmWidth = 12954
        BandType = 0
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        Caption = 'NOME'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3598
        mmLeft = 14817
        mmTop = 38894
        mmWidth = 9440
        BandType = 0
      end
      object ppLine3: TppLine
        UserName = 'Line3'
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 1323
        mmLeft = 0
        mmTop = 34660
        mmWidth = 197644
        BandType = 0
      end
      object ppLine1: TppLine
        UserName = 'Line1'
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 1323
        mmLeft = 0
        mmTop = 43392
        mmWidth = 197644
        BandType = 0
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        Caption = 'SALARIO NORMAL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        WordWrap = True
        mmHeight = 7197
        mmLeft = 82286
        mmTop = 35454
        mmWidth = 14647
        BandType = 0
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        Caption = 'SALARIO DE CONTRIBUI'#199#195'O'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        WordWrap = True
        mmHeight = 7197
        mmLeft = 97896
        mmTop = 35454
        mmWidth = 24257
        BandType = 0
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        Caption = 'SALARIO FAMILIA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        WordWrap = True
        mmHeight = 7197
        mmLeft = 123296
        mmTop = 35454
        mmWidth = 14647
        BandType = 0
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        Caption = 'SALARIO MATERNID.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        WordWrap = True
        mmHeight = 7197
        mmLeft = 138907
        mmTop = 35454
        mmWidth = 17357
        BandType = 0
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        Caption = 'OUTRAS REMUNERA'#199'.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        WordWrap = True
        mmHeight = 7197
        mmLeft = 157427
        mmTop = 35454
        mmWidth = 21251
        BandType = 0
      end
      object ppLabel8: TppLabel
        UserName = 'Label8'
        Caption = 'I A P A S'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 183357
        mmTop = 38894
        mmWidth = 12965
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 4498
      mmPrintPosition = 0
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        DataField = 'MATRICULA'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4022
        mmLeft = 529
        mmTop = 476
        mmWidth = 12954
        BandType = 4
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        DataField = 'NOME'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3979
        mmLeft = 14817
        mmTop = 476
        mmWidth = 65617
        BandType = 4
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        DataField = 'VALOR'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,##0.#0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3704
        mmLeft = 82286
        mmTop = 529
        mmWidth = 15610
        BandType = 4
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        DataField = 'SAL_FAMILIA'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,##0.#0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3598
        mmLeft = 123296
        mmTop = 476
        mmWidth = 14647
        BandType = 4
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        DataField = 'SAL_CONTRIBUICAO'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,##0.#0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3598
        mmLeft = 104775
        mmTop = 476
        mmWidth = 17198
        BandType = 4
      end
      object ppDBText6: TppDBText
        UserName = 'DBText6'
        DataField = 'SAL_MATERNIDADE'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,##0.#0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3598
        mmLeft = 139965
        mmTop = 476
        mmWidth = 17198
        BandType = 4
      end
      object ppDBText7: TppDBText
        UserName = 'DBText7'
        DataField = 'OUTRAS_REMUNERACOES'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,##0.#0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3598
        mmLeft = 159015
        mmTop = 476
        mmWidth = 17198
        BandType = 4
      end
      object ppDBText8: TppDBText
        UserName = 'DBText8'
        DataField = 'IAPAS'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,##0.#0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3598
        mmLeft = 178859
        mmTop = 476
        mmWidth = 17198
        BandType = 4
      end
    end
    object ppFooterBand1: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 64294
      mmPrintPosition = 0
      object ppLine2: TppLine
        UserName = 'Line2'
        Style = lsDouble
        Weight = 0.750000000000000000
        mmHeight = 1323
        mmLeft = 0
        mmTop = 51594
        mmWidth = 197644
        BandType = 8
      end
      object ppLabel12: TppLabel
        UserName = 'Label12'
        Caption = 'Data/Hora:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 143934
        mmTop = 53446
        mmWidth = 16933
        BandType = 8
      end
      object ppLabel13: TppLabel
        UserName = 'Label13'
        Caption = 'P'#225'gina:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 144198
        mmTop = 58208
        mmWidth = 11906
        BandType = 8
      end
      object ppSystemVariable2: TppSystemVariable
        UserName = 'SystemVariable2'
        VarType = vtPageNo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 162190
        mmTop = 58208
        mmWidth = 1852
        BandType = 8
      end
      object ppSystemVariable1: TppSystemVariable
        UserName = 'SystemVariable1'
        VarType = vtDateTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 161925
        mmTop = 53446
        mmWidth = 32015
        BandType = 8
      end
      object ppLabel11: TppLabel
        UserName = 'Label101'
        Caption = 'SALARIO CONTRIBUI'#199#195'O'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 20638
        mmTop = 14023
        mmWidth = 33073
        BandType = 8
      end
      object ppLabel14: TppLabel
        UserName = 'Label11'
        Caption = 'VALOR IAPAS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 56886
        mmTop = 14023
        mmWidth = 18785
        BandType = 8
      end
    end
    object ppSummaryBand1: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 73290
      mmPrintPosition = 0
      object ppDBCalc1: TppDBCalc
        UserName = 'DBCalc1'
        DataField = 'VALOR'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,##0.#0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3704
        mmLeft = 82286
        mmTop = 3969
        mmWidth = 15610
        BandType = 7
      end
      object ppDBCalc2: TppDBCalc
        UserName = 'DBCalc2'
        DataField = 'SAL_CONTRIBUICAO'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,##0.#0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3704
        mmLeft = 104775
        mmTop = 3969
        mmWidth = 17198
        BandType = 7
      end
      object ppDBCalc3: TppDBCalc
        UserName = 'DBCalc3'
        DataField = 'SAL_FAMILIA'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,##0.#0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3704
        mmLeft = 123296
        mmTop = 3969
        mmWidth = 14647
        BandType = 7
      end
      object ppDBCalc4: TppDBCalc
        UserName = 'DBCalc4'
        DataField = 'SAL_MATERNIDADE'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,##0.#0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3704
        mmLeft = 139965
        mmTop = 3969
        mmWidth = 17198
        BandType = 7
      end
      object ppDBCalc5: TppDBCalc
        UserName = 'DBCalc5'
        DataField = 'OUTRAS_REMUNERACOES'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,##0.#0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3704
        mmLeft = 159015
        mmTop = 3969
        mmWidth = 17198
        BandType = 7
      end
      object ppDBCalc6: TppDBCalc
        UserName = 'DBCalc6'
        DataField = 'IAPAS'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,##0.#0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3704
        mmLeft = 178859
        mmTop = 3969
        mmWidth = 17198
        BandType = 7
      end
      object ppLabel16: TppLabel
        UserName = 'Label14'
        Caption = '*** TOTAIS DE GER'#202'NCIA ***'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3598
        mmLeft = 16277
        mmTop = 3969
        mmWidth = 43265
        BandType = 7
      end
      object ppLabel9: TppLabel
        UserName = 'Label9'
        Caption = 'RESUMO DE POR FAIXAS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 20373
        mmTop = 19579
        mmWidth = 34925
        BandType = 7
      end
      object ppLine5: TppLine
        UserName = 'Line5'
        Pen.Style = psDot
        Style = lsDouble
        Weight = 0.750000000000000000
        mmHeight = 1058
        mmLeft = 2117
        mmTop = 24077
        mmWidth = 74348
        BandType = 7
      end
      object ppLabel10: TppLabel
        UserName = 'Label10'
        Caption = 'FAIXA IAPAS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 2117
        mmTop = 28046
        mmWidth = 17463
        BandType = 7
      end
      object ppLine4: TppLine
        UserName = 'Line4'
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 1058
        mmLeft = 1852
        mmTop = 32544
        mmWidth = 74348
        BandType = 7
      end
      object mnoFaixas: TppMemo
        UserName = 'mnoFaixas'
        CharWrap = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 23548
        mmLeft = 4498
        mmTop = 33602
        mmWidth = 13494
        BandType = 7
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmLeading = 0
      end
      object txtSalContrib: TppMemo
        UserName = 'txtSalContrib'
        CharWrap = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 23548
        mmLeft = 21167
        mmTop = 33602
        mmWidth = 33073
        BandType = 7
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmLeading = 0
      end
      object txtValorIAPAS: TppMemo
        UserName = 'txtValorIAPAS'
        CharWrap = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 23548
        mmLeft = 57415
        mmTop = 33602
        mmWidth = 17992
        BandType = 7
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmLeading = 0
      end
    end
  end
  object ppDBPipeline1: TppDBPipeline
    DataSource = dsDados
    UserName = 'DBPipeline1'
    Left = 64
    Top = 149
  end
  object dstProventoIAPAS: TSQLDataSet
    CommandText = 
      'select FUN_MATRICULA, FUN_NOME, FUN_SALARIO, FUN_EMPRESA, FUN_QT' +
      'FILHOS, FUN_DTINICIO_FERIAS, FUN_DTFIM_FERIAS, FUN_DTDIREITO_FER' +
      'IAS from FUNCIONARIOS '#13#10'Where (FUN_EMPRESA = :pEMPRESA)'#13#10'order b' +
      'y FUN_MATRICULA'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'pEMPRESA'
        ParamType = ptInput
        Value = 0
      end>
    SQLConnection = dmFolha.sqlCon_Folha
    Left = 192
    Top = 37
    object dstProventoIAPASFUN_MATRICULA: TIntegerField
      FieldName = 'FUN_MATRICULA'
      Required = True
    end
    object dstProventoIAPASFUN_NOME: TStringField
      FieldName = 'FUN_NOME'
      Size = 50
    end
    object dstProventoIAPASFUN_SALARIO: TFMTBCDField
      FieldName = 'FUN_SALARIO'
      Precision = 15
      Size = 2
    end
    object dstProventoIAPASFUN_EMPRESA: TIntegerField
      FieldName = 'FUN_EMPRESA'
    end
    object dstProventoIAPASFUN_QTFILHOS: TIntegerField
      FieldName = 'FUN_QTFILHOS'
    end
    object dstProventoIAPASFUN_DTINICIO_FERIAS: TDateField
      FieldName = 'FUN_DTINICIO_FERIAS'
    end
    object dstProventoIAPASFUN_DTFIM_FERIAS: TDateField
      FieldName = 'FUN_DTFIM_FERIAS'
    end
    object dstProventoIAPASFUN_DTDIREITO_FERIAS: TDateField
      FieldName = 'FUN_DTDIREITO_FERIAS'
    end
  end
  object dspProventoIAPAS: TDataSetProvider
    DataSet = dstProventoIAPAS
    Options = [poAllowCommandText]
    Left = 232
    Top = 37
  end
  object cdsProventoIAPAS: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'pEMPRESA'
        ParamType = ptInput
        Value = 0
      end>
    ProviderName = 'dspProventoIAPAS'
    OnCalcFields = cdsProventoIAPASCalcFields
    Left = 272
    Top = 37
    object cdsProventoIAPASFUN_MATRICULA: TIntegerField
      FieldName = 'FUN_MATRICULA'
      Required = True
    end
    object cdsProventoIAPASFUN_NOME: TStringField
      FieldName = 'FUN_NOME'
      Size = 50
    end
    object cdsProventoIAPASFUN_SALARIO: TFMTBCDField
      FieldName = 'FUN_SALARIO'
      Precision = 15
      Size = 2
    end
    object cdsProventoIAPASFUN_EMPRESA: TIntegerField
      FieldName = 'FUN_EMPRESA'
    end
    object cdsProventoIAPASFUN_QTFILHOS: TIntegerField
      FieldName = 'FUN_QTFILHOS'
    end
    object cdsProventoIAPASFUN_DTINICIO_FERIAS: TDateField
      FieldName = 'FUN_DTINICIO_FERIAS'
    end
    object cdsProventoIAPASFUN_DTFIM_FERIAS: TDateField
      FieldName = 'FUN_DTFIM_FERIAS'
    end
    object cdsProventoIAPASFUN_DTDIREITO_FERIAS: TDateField
      FieldName = 'FUN_DTDIREITO_FERIAS'
    end
    object cdsProventoIAPASMATRICULA: TStringField
      FieldKind = fkCalculated
      FieldName = 'MATRICULA'
      Size = 7
      Calculated = True
    end
    object cdsProventoIAPASFUN_SALFAM: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'FUN_SALFAM'
      Calculated = True
    end
  end
  object dsProventos: TDataSource
    DataSet = cdsProventoIAPAS
    Left = 320
    Top = 37
  end
  object dstFuncionarios: TSQLDataSet
    CommandText = 
      'Select F.FOL_CODIGO, F.FUN_MATRICULA, FU.FUN_NOME, FU.FUN_SALARI' +
      'O, F.FOL_BENEFICIO,'#13#10'F.FOL_QTBENEFICIO, F.FOL_PEBENEFICIO, F.FOL' +
      '_DESBEN,'#13#10'F.FOL_VLBENEFICIO'#13#10'from FOLHA F'#13#10'INNER join FUNCIONARI' +
      'OS FU ON FU.FUN_MATRICULA = F.FUN_MATRICULA'#13#10'Where (F.FUN_MATRIC' +
      'ULA = :pMATRICULA)'#13#10'and (F.FOL_CODIGO = :pCODIGO) and (F.FOL_EMP' +
      'RESA = :pEMPRESA)'#13#10'order by F.FUN_MATRICULA, F.FOL_BENEFICIO;'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'pMATRICULA'
        ParamType = ptInput
        Value = 0
      end
      item
        DataType = ftInteger
        Name = 'pCODIGO'
        ParamType = ptInput
        Value = 0
      end
      item
        DataType = ftInteger
        Name = 'pEMPRESA'
        ParamType = ptInput
        Value = 0
      end>
    SQLConnection = dmFolha.sqlCon_Folha
    Left = 192
    Top = 96
    object dstFuncionariosFOL_CODIGO: TStringField
      FieldName = 'FOL_CODIGO'
      Required = True
      FixedChar = True
      Size = 6
    end
    object dstFuncionariosFUN_MATRICULA: TIntegerField
      FieldName = 'FUN_MATRICULA'
      Required = True
    end
    object dstFuncionariosFUN_NOME: TStringField
      FieldName = 'FUN_NOME'
      Size = 50
    end
    object dstFuncionariosFUN_SALARIO: TFMTBCDField
      FieldName = 'FUN_SALARIO'
      Precision = 15
      Size = 2
    end
    object dstFuncionariosFOL_BENEFICIO: TIntegerField
      FieldName = 'FOL_BENEFICIO'
    end
    object dstFuncionariosFOL_QTBENEFICIO: TBCDField
      FieldName = 'FOL_QTBENEFICIO'
      Precision = 9
      Size = 2
    end
    object dstFuncionariosFOL_DESBEN: TStringField
      FieldName = 'FOL_DESBEN'
      FixedChar = True
      Size = 1
    end
    object dstFuncionariosFOL_VLBENEFICIO: TFMTBCDField
      FieldName = 'FOL_VLBENEFICIO'
      Precision = 15
      Size = 2
    end
    object dstFuncionariosFOL_PEBENEFICIO: TBCDField
      FieldName = 'FOL_PEBENEFICIO'
      Precision = 9
    end
  end
  object dspFuncionarios: TDataSetProvider
    DataSet = dstFuncionarios
    Options = [poAllowCommandText]
    Left = 224
    Top = 96
  end
  object cdsFuncionarios: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'pMATRICULA'
        ParamType = ptInput
        Value = 0
      end
      item
        DataType = ftInteger
        Name = 'pCODIGO'
        ParamType = ptInput
        Value = 0
      end
      item
        DataType = ftInteger
        Name = 'pEMPRESA'
        ParamType = ptInput
        Value = 0
      end>
    ProviderName = 'dspFuncionarios'
    Left = 256
    Top = 96
    object cdsFuncionariosFOL_CODIGO: TStringField
      FieldName = 'FOL_CODIGO'
      Required = True
      FixedChar = True
      Size = 6
    end
    object cdsFuncionariosFUN_MATRICULA: TIntegerField
      FieldName = 'FUN_MATRICULA'
      Required = True
    end
    object cdsFuncionariosFUN_NOME: TStringField
      FieldName = 'FUN_NOME'
      Size = 50
    end
    object cdsFuncionariosFOL_QTBENEFICIO: TBCDField
      FieldName = 'FOL_QTBENEFICIO'
      Precision = 9
      Size = 2
    end
    object cdsFuncionariosFOL_DESBEN: TStringField
      FieldName = 'FOL_DESBEN'
      FixedChar = True
      Size = 1
    end
    object cdsFuncionariosFOL_VLBENEFICIO: TFMTBCDField
      FieldName = 'FOL_VLBENEFICIO'
      Precision = 15
      Size = 2
    end
    object cdsFuncionariosFOL_BENEFICIO: TIntegerField
      FieldName = 'FOL_BENEFICIO'
    end
    object cdsFuncionariosFUN_SALARIO: TFMTBCDField
      FieldName = 'FUN_SALARIO'
      Precision = 15
      Size = 2
    end
    object cdsFuncionariosFOL_PEBENEFICIO: TBCDField
      FieldName = 'FOL_PEBENEFICIO'
      Precision = 9
    end
  end
  object dsFuncionarios: TDataSource
    DataSet = cdsFuncionarios
    Left = 288
    Top = 93
  end
  object cdsDados: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    Left = 248
    Top = 136
    Data = {
      460100009619E0BD0100000018000000080000000000030000004601094D4154
      524943554C410100490000000100055749445448020002000700044E4F4D4501
      004900000001000557494454480200020032000556414C4F5208000400000001
      0007535542545950450200490006004D6F6E6579001053414C5F434F4E545249
      42554943414F080004000000010007535542545950450200490006004D6F6E65
      79000B53414C5F46414D494C4941080004000000010007535542545950450200
      490006004D6F6E6579000F53414C5F4D415445524E4944414445080004000000
      010007535542545950450200490006004D6F6E657900134F55545241535F5245
      4D554E455241434F455308000400000001000753554254595045020049000600
      4D6F6E6579000549415041530800040000000100075355425459504502004900
      06004D6F6E6579000000}
    object cdsDadosMATRICULA: TStringField
      FieldName = 'MATRICULA'
      Size = 7
    end
    object cdsDadosNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object cdsDadosVALOR: TCurrencyField
      FieldName = 'VALOR'
      DisplayFormat = '#,##0.#0'
      currency = False
    end
    object cdsDadosSAL_CONTRIBUICAO: TCurrencyField
      FieldName = 'SAL_CONTRIBUICAO'
      DisplayFormat = '#,##0.#0'
      currency = False
    end
    object cdsDadosSAL_FAMILIA: TCurrencyField
      FieldName = 'SAL_FAMILIA'
      DisplayFormat = '#,##0.#0'
      currency = False
    end
    object cdsDadosSAL_MATERNIDADE: TCurrencyField
      FieldName = 'SAL_MATERNIDADE'
      DisplayFormat = '#,##0.#0'
      currency = False
    end
    object cdsDadosOUTRAS_REMUNERACOES: TCurrencyField
      FieldName = 'OUTRAS_REMUNERACOES'
      DisplayFormat = '#,##0.#0'
      currency = False
    end
    object cdsDadosIAPAS: TCurrencyField
      FieldName = 'IAPAS'
      currency = False
    end
  end
  object dsDados: TDataSource
    DataSet = cdsDados
    Left = 216
    Top = 136
  end
  object cdsResumo: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    Left = 304
    Top = 141
    Data = {
      7C0000009619E0BD0100000018000000040000000000030000007C000A434453
      5F434F4449474F0400010000000000094344535F464149584108000400000000
      000E4344535F5045444553434F4E544F0800040000000000094344535F56414C
      4F52080004000000010007535542545950450200490006004D6F6E6579000000}
    object cdsResumoCDS_CODIGO: TIntegerField
      FieldName = 'CDS_CODIGO'
    end
    object cdsResumoCDS_FAIXA: TFloatField
      FieldName = 'CDS_FAIXA'
    end
    object cdsResumoCDS_PEDESCONTO: TFloatField
      FieldName = 'CDS_PEDESCONTO'
    end
    object cdsResumoCDS_VALOR: TCurrencyField
      FieldName = 'CDS_VALOR'
      DisplayFormat = '#,###,##0.#0'
      currency = False
    end
  end
  object DataSource1: TDataSource
    DataSet = cdsResumo
    Left = 336
    Top = 133
  end
end
