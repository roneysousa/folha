inherited frmRelReciboPaga: TfrmRelReciboPaga
  Caption = 'Recibo de Pagamento'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel5: TPanel
    inherited BtImprimir: TBitBtn
      Left = 16
      TabOrder = 2
      Visible = False
    end
    object BitBtn1: TBitBtn
      Left = 192
      Top = 8
      Width = 75
      Height = 25
      Hint = 'Visualizar impress'#227'o'
      Caption = '&Imprimir'
      TabOrder = 0
      OnClick = BitBtn1Click
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
  object dstRecibo: TSQLDataSet
    CommandText = 
      'Select F.FOL_CODIGO, F.FUN_MATRICULA, FU.FUN_NOME, FU.FUN_ADMISS' +
      'AO, F.FOL_DTGERACAO, FU.FUN_CPF,'#13#10'F.FOL_BENEFICIO, F.FOL_QTBENEF' +
      'ICIO, F.FOL_PEBENEFICIO, F.FOL_NMBENEFICIO, F.FOL_DESBEN, F.fol_' +
      'vlbeneficio from FOLHA F'#13#10'INNER join FUNCIONARIOS FU ON FU.FUN_M' +
      'ATRICULA = F.FUN_MATRICULA'#13#10'Where (F.FOL_CODIGO = :pCODIGO) AND ' +
      '(F.FOL_EMPRESA = :pEMPRESA) and (F.FUN_MATRICULA = :pMATRICULA)'#13 +
      #10'order by F.FUN_MATRICULA, F.FOL_BENEFICIO, F.FOL_DESBEN'#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'pCODIGO'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftInteger
        Name = 'pEMPRESA'
        ParamType = ptInput
        Value = 0
      end
      item
        DataType = ftInteger
        Name = 'pMATRICULA'
        ParamType = ptInput
        Value = 0
      end>
    SQLConnection = dmFolha.sqlCon_Folha
    Left = 184
    Top = 37
    object dstReciboFOL_CODIGO: TStringField
      FieldName = 'FOL_CODIGO'
      Required = True
      FixedChar = True
      Size = 6
    end
    object dstReciboFUN_MATRICULA: TIntegerField
      FieldName = 'FUN_MATRICULA'
      Required = True
    end
    object dstReciboFUN_NOME: TStringField
      FieldName = 'FUN_NOME'
      Size = 50
    end
    object dstReciboFUN_ADMISSAO: TDateField
      FieldName = 'FUN_ADMISSAO'
    end
    object dstReciboFOL_DTGERACAO: TDateField
      FieldName = 'FOL_DTGERACAO'
    end
    object dstReciboFOL_BENEFICIO: TIntegerField
      FieldName = 'FOL_BENEFICIO'
    end
    object dstReciboFOL_QTBENEFICIO: TBCDField
      FieldName = 'FOL_QTBENEFICIO'
      Precision = 9
      Size = 2
    end
    object dstReciboFOL_NMBENEFICIO: TStringField
      FieldName = 'FOL_NMBENEFICIO'
      Size = 30
    end
    object dstReciboFOL_DESBEN: TStringField
      FieldName = 'FOL_DESBEN'
      FixedChar = True
      Size = 1
    end
    object dstReciboFOL_VLBENEFICIO: TFMTBCDField
      FieldName = 'FOL_VLBENEFICIO'
      Precision = 15
      Size = 2
    end
    object dstReciboFUN_CPF: TStringField
      FieldName = 'FUN_CPF'
      FixedChar = True
      Size = 11
    end
    object dstReciboFOL_PEBENEFICIO: TBCDField
      FieldName = 'FOL_PEBENEFICIO'
      Precision = 9
    end
  end
  object dspRecibo: TDataSetProvider
    DataSet = dstRecibo
    Options = [poAllowCommandText]
    Left = 216
    Top = 37
  end
  object cdsRecibo: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'pCODIGO'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftInteger
        Name = 'pEMPRESA'
        ParamType = ptInput
        Value = 0
      end
      item
        DataType = ftInteger
        Name = 'pMATRICULA'
        ParamType = ptInput
        Value = 0
      end>
    ProviderName = 'dspRecibo'
    OnCalcFields = cdsReciboCalcFields
    Left = 248
    Top = 37
    object cdsReciboFOL_CODIGO: TStringField
      FieldName = 'FOL_CODIGO'
      Required = True
      FixedChar = True
      Size = 6
    end
    object cdsReciboFUN_MATRICULA: TIntegerField
      FieldName = 'FUN_MATRICULA'
      Required = True
    end
    object cdsReciboFUN_NOME: TStringField
      FieldName = 'FUN_NOME'
      Size = 50
    end
    object cdsReciboFUN_ADMISSAO: TDateField
      FieldName = 'FUN_ADMISSAO'
    end
    object cdsReciboFOL_DTGERACAO: TDateField
      FieldName = 'FOL_DTGERACAO'
    end
    object cdsReciboFUN_CPF: TStringField
      FieldName = 'FUN_CPF'
      FixedChar = True
      Size = 11
    end
    object cdsReciboFOL_BENEFICIO: TIntegerField
      FieldName = 'FOL_BENEFICIO'
    end
    object cdsReciboFOL_QTBENEFICIO: TBCDField
      FieldName = 'FOL_QTBENEFICIO'
      Precision = 9
      Size = 2
    end
    object cdsReciboFOL_NMBENEFICIO: TStringField
      FieldName = 'FOL_NMBENEFICIO'
      Size = 30
    end
    object cdsReciboFOL_DESBEN: TStringField
      FieldName = 'FOL_DESBEN'
      FixedChar = True
      Size = 1
    end
    object cdsReciboFOL_VLBENEFICIO: TFMTBCDField
      FieldName = 'FOL_VLBENEFICIO'
      Precision = 15
      Size = 2
    end
    object cdsReciboFOL_VALOR: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'FOL_VALOR'
      currency = False
      Calculated = True
    end
    object cdsReciboFOL_PERCENTUAL: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'FOL_PERCENTUAL'
      Calculated = True
    end
    object cdsReciboFOL_VLLIQUIDO: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'FOL_VLLIQUIDO'
      Calculated = True
    end
    object cdsReciboFOL_VLDESC: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'FOL_VLDESC'
      Calculated = True
    end
    object cdsReciboFOL_VTBENE: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'FOL_VTBENE'
      Calculated = True
    end
    object cdsReciboFOL_VTDESC: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'FOL_VTDESC'
      Calculated = True
    end
    object cdsReciboFOL_PEBENEFICIO: TBCDField
      FieldName = 'FOL_PEBENEFICIO'
      Precision = 9
    end
  end
  object dsRecibo: TDataSource
    DataSet = cdsRecibo
    Left = 288
    Top = 40
  end
  object ppReport1: TppReport
    AutoStop = False
    Columns = 2
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
    Left = 112
    Top = 141
    Version = '7.01'
    mmColumnWidth = 95000
    DataPipelineName = 'ppDBPipeline1'
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
    end
    object ppColumnHeaderBand1: TppColumnHeaderBand
      mmBottomOffset = 0
      mmHeight = 794
      mmPrintPosition = 0
    end
    object ppDetailBand1: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 5821
      mmPrintPosition = 0
      object ppDBText28: TppDBText
        UserName = 'DBText28'
        DataField = 'FOL_BENEFICIO'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3979
        mmLeft = 529
        mmTop = 794
        mmWidth = 7144
        BandType = 4
      end
      object ppDBText29: TppDBText
        UserName = 'DBText29'
        DataField = 'FOL_NMBENEFICIO'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3979
        mmLeft = 10848
        mmTop = 794
        mmWidth = 37835
        BandType = 4
      end
      object ppDBTRemu: TppDBText
        OnPrint = ppDBTRemuPrint
        UserName = 'DBTRemu'
        DataField = 'FOL_VALOR'
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
        mmLeft = 53711
        mmTop = 794
        mmWidth = 17198
        BandType = 4
      end
      object ppDBTDesc: TppDBText
        OnPrint = ppDBTDescPrint
        UserName = 'DBTDesc'
        DataField = 'FOL_VLDESC'
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
        mmLeft = 75936
        mmTop = 794
        mmWidth = 17198
        BandType = 4
      end
    end
    object ppColumnFooterBand1: TppColumnFooterBand
      mmBottomOffset = 0
      mmHeight = 2381
      mmPrintPosition = 0
    end
    object ppFooterBand1: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
    end
    object ppGroup1: TppGroup
      BreakName = 'FUN_MATRICULA'
      DataPipeline = ppDBPipeline1
      KeepTogether = True
      OutlineSettings.CreateNode = True
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppDBPipeline1'
      object ppGroupHeaderBand1: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 47096
        mmPrintPosition = 0
        object ppLabel48: TppLabel
          UserName = 'Label48'
          Caption = 'MATRIC.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = []
          Transparent = True
          mmHeight = 3704
          mmLeft = 265
          mmTop = 30427
          mmWidth = 12965
          BandType = 3
          GroupNo = 0
        end
        object ppDBText26: TppDBText
          UserName = 'DBText26'
          DataField = 'FUN_MATRICULA'
          DataPipeline = ppDBPipeline1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 3969
          mmLeft = 265
          mmTop = 34660
          mmWidth = 11377
          BandType = 3
          GroupNo = 0
        end
        object ppLabel50: TppLabel
          UserName = 'Label50'
          Caption = 'COD.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3704
          mmLeft = 265
          mmTop = 41275
          mmWidth = 7938
          BandType = 3
          GroupNo = 0
        end
        object ppLabel49: TppLabel
          UserName = 'Label49'
          Caption = 'NOME'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = []
          Transparent = True
          mmHeight = 3704
          mmLeft = 11113
          mmTop = 41275
          mmWidth = 9525
          BandType = 3
          GroupNo = 0
        end
        object ppLine18: TppLine
          UserName = 'Line18'
          Pen.Style = psDot
          Weight = 0.750000000000000000
          mmHeight = 794
          mmLeft = 265
          mmTop = 45508
          mmWidth = 94721
          BandType = 3
          GroupNo = 0
        end
        object ppDBText27: TppDBText
          UserName = 'DBText27'
          DataField = 'FUN_NOME'
          DataPipeline = ppDBPipeline1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 3969
          mmLeft = 14288
          mmTop = 34660
          mmWidth = 74348
          BandType = 3
          GroupNo = 0
        end
        object ppLabel51: TppLabel
          UserName = 'Label501'
          Caption = 'DESCRI'#199#195'O'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = []
          Transparent = True
          mmHeight = 3704
          mmLeft = 14288
          mmTop = 30163
          mmWidth = 18785
          BandType = 3
          GroupNo = 0
        end
        object ppLabel52: TppLabel
          UserName = 'Label52'
          Caption = 'REMUNERA'#199#213'ES'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = []
          Transparent = True
          mmHeight = 3704
          mmLeft = 43656
          mmTop = 41275
          mmWidth = 26988
          BandType = 3
          GroupNo = 0
        end
        object ppLabel53: TppLabel
          UserName = 'Label53'
          Caption = 'DESCONTOS'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3704
          mmLeft = 72761
          mmTop = 41275
          mmWidth = 20108
          BandType = 3
          GroupNo = 0
        end
        object txtEmpresa4: TppLabel
          UserName = 'txtEmpresa4'
          Caption = 'EMPRESA :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = []
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 3969
          mmLeft = 32279
          mmTop = 3440
          mmWidth = 19050
          BandType = 3
          GroupNo = 0
        end
        object ppLine16: TppLine
          UserName = 'Line16'
          Pen.Style = psDot
          Style = lsDouble
          Weight = 0.750000000000000000
          mmHeight = 1852
          mmLeft = 0
          mmTop = 9260
          mmWidth = 94721
          BandType = 3
          GroupNo = 0
        end
        object ppLabel57: TppLabel
          UserName = 'Label57'
          Caption = 'RECIBO DE PAGAMENTO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = []
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 3969
          mmLeft = 21696
          mmTop = 11642
          mmWidth = 42863
          BandType = 3
          GroupNo = 0
        end
        object ppLine17: TppLine
          UserName = 'Line17'
          Pen.Style = psDot
          Style = lsDouble
          Weight = 0.750000000000000000
          mmHeight = 1852
          mmLeft = 265
          mmTop = 17463
          mmWidth = 94721
          BandType = 3
          GroupNo = 0
        end
        object txtMesRefe: TppLabel
          UserName = 'txtMesRefe1'
          Caption = 'M'#202'S DE REFERENCIA :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          mmHeight = 3969
          mmLeft = 265
          mmTop = 21167
          mmWidth = 38894
          BandType = 3
          GroupNo = 0
        end
        object ppLine13: TppLine
          UserName = 'Line13'
          Pen.Style = psDot
          Weight = 0.750000000000000000
          mmHeight = 794
          mmLeft = 0
          mmTop = 27252
          mmWidth = 94721
          BandType = 3
          GroupNo = 0
        end
      end
      object ppGroupFooterBand1: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 27252
        mmPrintPosition = 0
        object ppLabel54: TppLabel
          UserName = 'Label54'
          Caption = 'TOTAIS'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = []
          Transparent = True
          mmHeight = 3598
          mmLeft = 5821
          mmTop = 3175
          mmWidth = 11388
          BandType = 5
          GroupNo = 0
        end
        object ppLabel55: TppLabel
          UserName = 'Label55'
          Caption = 'RECOLHIMENTO FGTS'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = []
          Transparent = True
          mmHeight = 3598
          mmLeft = 5821
          mmTop = 7938
          mmWidth = 34756
          BandType = 5
          GroupNo = 0
        end
        object ppLabel56: TppLabel
          UserName = 'Label56'
          Caption = 'LIQUIDO A RECEBER'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = []
          Transparent = True
          mmHeight = 3598
          mmLeft = 5821
          mmTop = 16669
          mmWidth = 32258
          BandType = 5
          GroupNo = 0
        end
        object ppDBTotRemu: TppDBCalc
          UserName = 'DBTotRemu'
          DataField = 'FOL_VALOR'
          DataPipeline = ppDBPipeline1
          DisplayFormat = '#,##0.#0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = []
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 3598
          mmLeft = 53711
          mmTop = 2646
          mmWidth = 17198
          BandType = 5
          GroupNo = 0
        end
        object ppDBTotDesc: TppDBCalc
          UserName = 'DBTotDesc'
          DataField = 'FOL_VLDESC'
          DataPipeline = ppDBPipeline1
          DisplayFormat = '#,##0.#0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = []
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 3598
          mmLeft = 75936
          mmTop = 2646
          mmWidth = 17198
          BandType = 5
          GroupNo = 0
        end
        object ppVLLIQU: TppVariable
          UserName = 'VLLIQU'
          CalcOrder = 0
          DataType = dtDouble
          DisplayFormat = '#,###,##0.#0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = []
          OnCalc = ppVLLIQUCalc
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3704
          mmLeft = 75936
          mmTop = 16669
          mmWidth = 17198
          BandType = 5
          GroupNo = 0
        end
      end
    end
  end
  object ppDBPipeline1: TppDBPipeline
    DataSource = dsRecibo
    UserName = 'DBPipeline1'
    Left = 152
    Top = 141
    object ppDBPipeline1ppField1: TppField
      FieldAlias = 'FOL_CODIGO'
      FieldName = 'FOL_CODIGO'
      FieldLength = 6
      DisplayWidth = 6
      Position = 0
    end
    object ppDBPipeline1ppField2: TppField
      Alignment = taRightJustify
      FieldAlias = 'FUN_MATRICULA'
      FieldName = 'FUN_MATRICULA'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 1
    end
    object ppDBPipeline1ppField3: TppField
      FieldAlias = 'FUN_NOME'
      FieldName = 'FUN_NOME'
      FieldLength = 50
      DisplayWidth = 50
      Position = 2
    end
    object ppDBPipeline1ppField4: TppField
      FieldAlias = 'FUN_ADMISSAO'
      FieldName = 'FUN_ADMISSAO'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 3
    end
    object ppDBPipeline1ppField5: TppField
      FieldAlias = 'FOL_DTGERACAO'
      FieldName = 'FOL_DTGERACAO'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 4
    end
    object ppDBPipeline1ppField6: TppField
      FieldAlias = 'FUN_CPF'
      FieldName = 'FUN_CPF'
      FieldLength = 11
      DisplayWidth = 11
      Position = 5
    end
    object ppDBPipeline1ppField7: TppField
      Alignment = taRightJustify
      FieldAlias = 'FOL_BENEFICIO'
      FieldName = 'FOL_BENEFICIO'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 6
    end
    object ppDBPipeline1ppField8: TppField
      Alignment = taRightJustify
      FieldAlias = 'FOL_QTBENEFICIO'
      FieldName = 'FOL_QTBENEFICIO'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 10
      Position = 7
    end
    object ppDBPipeline1ppField9: TppField
      Alignment = taRightJustify
      FieldAlias = 'FOL_PEBENEFICIO'
      FieldName = 'FOL_PEBENEFICIO'
      FieldLength = 8
      DataType = dtDouble
      DisplayWidth = 16
      Position = 8
    end
    object ppDBPipeline1ppField10: TppField
      FieldAlias = 'FOL_NMBENEFICIO'
      FieldName = 'FOL_NMBENEFICIO'
      FieldLength = 30
      DisplayWidth = 30
      Position = 9
    end
    object ppDBPipeline1ppField11: TppField
      FieldAlias = 'FOL_DESBEN'
      FieldName = 'FOL_DESBEN'
      FieldLength = 1
      DisplayWidth = 1
      Position = 10
    end
    object ppDBPipeline1ppField12: TppField
      Alignment = taRightJustify
      FieldAlias = 'FOL_VLBENEFICIO'
      FieldName = 'FOL_VLBENEFICIO'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 16
      Position = 11
    end
    object ppDBPipeline1ppField13: TppField
      FieldAlias = 'FOL_VALOR'
      FieldName = 'FOL_VALOR'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 12
    end
    object ppDBPipeline1ppField14: TppField
      FieldAlias = 'FOL_PERCENTUAL'
      FieldName = 'FOL_PERCENTUAL'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 13
    end
    object ppDBPipeline1ppField15: TppField
      FieldAlias = 'FOL_VLLIQUIDO'
      FieldName = 'FOL_VLLIQUIDO'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 14
    end
    object ppDBPipeline1ppField16: TppField
      FieldAlias = 'FOL_VLDESC'
      FieldName = 'FOL_VLDESC'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 15
    end
  end
  object RvSystem1: TRvSystem
    TitleSetup = 'Op'#231#245'es de Impress'#227'o'
    TitleStatus = 'Report Status'
    TitlePreview = 'Visualizar Impress'#227'o'
    SystemFiler.StatusFormat = 'Generating page %p'
    SystemPreview.FormState = wsMaximized
    SystemPreview.ZoomFactor = 100.000000000000000000
    SystemPrinter.ScaleX = 100.000000000000000000
    SystemPrinter.ScaleY = 100.000000000000000000
    SystemPrinter.StatusFormat = 'Printing page %p'
    SystemPrinter.Title = 'Visualizar Impress'#227'o'
    SystemPrinter.Units = unCM
    SystemPrinter.UnitsFactor = 2.540000000000000000
    OnPrint = RvSystem1Print
    Left = 184
    Top = 141
  end
  object dstFuncionarios: TSQLDataSet
    CommandText = 
      'Select FUN_MATRICULA, FUN_NOME, FUN_VALETRANS, FUN_SALARIO, FUN_' +
      'CPF, FUN_RECISAO, FUN_QTFILHOS, FUN_EMPRESA, FUN_HORAS_TRABALHO,' +
      ' FUN_DTINICIO_FERIAS, FUN_DTFIM_FERIAS from FUNCIONARIOS '#13#10'Where' +
      ' (FUN_EMPRESA = :pEMPRESA) and (FUN_RECISAO is null)'
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
    Top = 80
  end
  object dspFuncionarios: TDataSetProvider
    DataSet = dstFuncionarios
    Options = [poAllowCommandText]
    Left = 232
    Top = 80
  end
  object cdsFuncionarios: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'pEMPRESA'
        ParamType = ptInput
        Value = 0
      end>
    ProviderName = 'dspFuncionarios'
    Left = 272
    Top = 80
    object cdsFuncionariosFUN_MATRICULA: TIntegerField
      FieldName = 'FUN_MATRICULA'
      Required = True
    end
    object cdsFuncionariosFUN_NOME: TStringField
      FieldName = 'FUN_NOME'
      Size = 50
    end
    object cdsFuncionariosFUN_VALETRANS: TStringField
      FieldName = 'FUN_VALETRANS'
      FixedChar = True
      Size = 1
    end
    object cdsFuncionariosFUN_SALARIO: TFMTBCDField
      FieldName = 'FUN_SALARIO'
      Precision = 15
      Size = 2
    end
    object cdsFuncionariosFUN_CPF: TStringField
      FieldName = 'FUN_CPF'
      FixedChar = True
      Size = 11
    end
    object cdsFuncionariosFUN_RECISAO: TDateField
      FieldName = 'FUN_RECISAO'
    end
    object cdsFuncionariosFUN_QTFILHOS: TIntegerField
      FieldName = 'FUN_QTFILHOS'
    end
    object cdsFuncionariosFUN_EMPRESA: TIntegerField
      FieldName = 'FUN_EMPRESA'
    end
    object cdsFuncionariosFUN_DTINICIO_FERIAS: TDateField
      FieldName = 'FUN_DTINICIO_FERIAS'
    end
    object cdsFuncionariosFUN_DTFIM_FERIAS: TDateField
      FieldName = 'FUN_DTFIM_FERIAS'
    end
    object cdsFuncionariosFUN_HORAS_TRABALHO: TBCDField
      FieldName = 'FUN_HORAS_TRABALHO'
      Precision = 9
      Size = 2
    end
  end
  object RvRenderPDF1: TRvRenderPDF
    DisplayName = 'Adobe Acrobat (PDF)'
    FileExtension = '*.pdf'
    EmbedFonts = False
    ImageQuality = 90
    MetafileDPI = 300
    FontEncoding = feWinAnsiEncoding
    DocInfo.Creator = 'Rave (http://www.nevrona.com/rave)'
    DocInfo.Producer = 'Nevrona Designs'
    Left = 288
    Top = 125
  end
end
