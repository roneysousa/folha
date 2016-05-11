inherited frmRelControleHoraExtras: TfrmRelControleHoraExtras
  Caption = 'Relat'#243'rio Controle de Hora Extras'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel5: TPanel
    inherited BtImprimir: TBitBtn
      OnClick = BtImprimirClick
    end
  end
  object dstHoraExtras: TSQLDataSet
    CommandText = 
      'select HE.FUN_MATRICULA, HE.HOR_DTMOVI, HE.HOR_HOINICIAL, HE.HOR' +
      '_HOFINAL, HE.HOR_FOLHA, FU.FUN_NOME from HORAS_EXTRAS HE'#13#10'INNER ' +
      'join FUNCIONARIOS FU ON HE.FUN_MATRICULA = FU.FUN_MATRICULA'#13#10'Whe' +
      're (HE.FUN_MATRICULA = :pMATRICULA) '#13#10'and (HE.HOR_DTMOVI >= :pDT' +
      'INICIAL) and (HE.HOR_DTMOVI <= :pDTFINAL)'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'pMATRICULA'
        ParamType = ptInput
        Value = 0
      end
      item
        DataType = ftDate
        Name = 'pDTINICIAL'
        ParamType = ptInput
        Value = 0d
      end
      item
        DataType = ftDate
        Name = 'pDTFINAL'
        ParamType = ptInput
        Value = 0d
      end>
    SQLConnection = dmFolha.sqlCon_Folha
    Left = 168
    Top = 133
    object dstHoraExtrasFUN_MATRICULA: TIntegerField
      FieldName = 'FUN_MATRICULA'
      Required = True
    end
    object dstHoraExtrasHOR_DTMOVI: TDateField
      FieldName = 'HOR_DTMOVI'
    end
    object dstHoraExtrasHOR_HOINICIAL: TStringField
      FieldName = 'HOR_HOINICIAL'
      FixedChar = True
      Size = 5
    end
    object dstHoraExtrasHOR_HOFINAL: TStringField
      FieldName = 'HOR_HOFINAL'
      FixedChar = True
      Size = 5
    end
    object dstHoraExtrasHOR_FOLHA: TStringField
      FieldName = 'HOR_FOLHA'
      FixedChar = True
      Size = 6
    end
    object dstHoraExtrasFUN_NOME: TStringField
      FieldName = 'FUN_NOME'
      Size = 50
    end
  end
  object dspHorasExtras: TDataSetProvider
    DataSet = dstHoraExtras
    Options = [poAllowCommandText]
    Left = 200
    Top = 133
  end
  object cdsHorasExtras: TClientDataSet
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
        DataType = ftDate
        Name = 'pDTINICIAL'
        ParamType = ptInput
        Value = 0d
      end
      item
        DataType = ftDate
        Name = 'pDTFINAL'
        ParamType = ptInput
        Value = 0d
      end>
    ProviderName = 'dspHorasExtras'
    OnCalcFields = cdsHorasExtrasCalcFields
    Left = 240
    Top = 133
    object cdsHorasExtrasFUN_MATRICULA: TIntegerField
      FieldName = 'FUN_MATRICULA'
      Required = True
    end
    object cdsHorasExtrasHOR_DTMOVI: TDateField
      FieldName = 'HOR_DTMOVI'
    end
    object cdsHorasExtrasHOR_HOINICIAL: TStringField
      FieldName = 'HOR_HOINICIAL'
      FixedChar = True
      Size = 5
    end
    object cdsHorasExtrasHOR_HOFINAL: TStringField
      FieldName = 'HOR_HOFINAL'
      FixedChar = True
      Size = 5
    end
    object cdsHorasExtrasHOR_FOLHA: TStringField
      FieldName = 'HOR_FOLHA'
      FixedChar = True
      Size = 6
    end
    object cdsHorasExtrasFUN_NOME: TStringField
      FieldName = 'FUN_NOME'
      Size = 50
    end
    object cdsHorasExtrasHOR_QUANTIDADE: TStringField
      FieldKind = fkCalculated
      FieldName = 'HOR_QUANTIDADE'
      Size = 5
      Calculated = True
    end
  end
  object dsHorasExtras: TDataSource
    DataSet = cdsHorasExtras
    Left = 280
    Top = 133
  end
  object ppReport1: TppReport
    AutoStop = False
    DataPipeline = ppDBPipeline1
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'A4 (21 x 29,7 cm) '
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 297000
    PrinterSetup.mmPaperWidth = 210000
    PrinterSetup.PaperSize = 9
    Template.FileName = 'C:\Empresa\FOLHA\Relatorios\rbContHorasExtras.rtm'
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
    Left = 208
    Top = 37
    Version = '7.01'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBPipeline1'
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 62177
      mmPrintPosition = 0
      object ppLabel3: TppLabel
        UserName = 'Label3'
        Caption = 'CONTROLE DE HORA EXTRA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 16
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 6615
        mmLeft = 66411
        mmTop = 14023
        mmWidth = 79375
        BandType = 0
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        Caption = 'FUNCION'#193'RIO(A)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 2117
        mmTop = 33338
        mmWidth = 29633
        BandType = 0
      end
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        AutoSize = True
        DataField = 'FUN_NOME'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4022
        mmLeft = 2117
        mmTop = 38100
        mmWidth = 19727
        BandType = 0
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        Caption = 'Data Entrada'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 2381
        mmTop = 56356
        mmWidth = 21696
        BandType = 0
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        Caption = 'Hora Entrada'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 27781
        mmTop = 56356
        mmWidth = 21960
        BandType = 0
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        Caption = 'Data Sa'#237'da'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 54240
        mmTop = 56356
        mmWidth = 17992
        BandType = 0
      end
      object ppLabel8: TppLabel
        UserName = 'Label8'
        Caption = 'Hora Sa'#237'da'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 77258
        mmTop = 56356
        mmWidth = 18256
        BandType = 0
      end
      object ppLabel9: TppLabel
        UserName = 'Label9'
        Caption = 'QT. Horas Extras'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 99484
        mmTop = 56356
        mmWidth = 28575
        BandType = 0
      end
      object ppLine2: TppLine
        UserName = 'Line2'
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 794
        mmLeft = 0
        mmTop = 55033
        mmWidth = 197380
        BandType = 0
      end
      object ppLine3: TppLine
        UserName = 'Line3'
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 794
        mmLeft = 265
        mmTop = 61119
        mmWidth = 197380
        BandType = 0
      end
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
      object ppLabel11: TppLabel
        UserName = 'Label11'
        Caption = 'M'#202'S REF.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4191
        mmLeft = 2117
        mmTop = 43127
        mmWidth = 16637
        BandType = 0
      end
      object txtMesref: TppLabel
        UserName = 'txtMesref'
        Caption = 'txtMesref'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 2117
        mmTop = 48154
        mmWidth = 14552
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 4498
      mmPrintPosition = 0
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        DataField = 'HOR_DTMOVI'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4022
        mmLeft = 2381
        mmTop = 265
        mmWidth = 21675
        BandType = 4
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        DataField = 'HOR_HOINICIAL'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4022
        mmLeft = 27781
        mmTop = 265
        mmWidth = 22056
        BandType = 4
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        DataField = 'HOR_DTMOVI'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3969
        mmLeft = 54240
        mmTop = 265
        mmWidth = 17949
        BandType = 4
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        DataField = 'HOR_HOFINAL'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3969
        mmLeft = 77258
        mmTop = 265
        mmWidth = 18330
        BandType = 4
      end
      object ppDBText6: TppDBText
        UserName = 'DBText6'
        DataField = 'HOR_QUANTIDADE'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4022
        mmLeft = 103188
        mmTop = 265
        mmWidth = 17198
        BandType = 4
      end
    end
    object ppFooterBand1: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
      object ppLine1: TppLine
        UserName = 'Line1'
        Style = lsDouble
        Weight = 0.750000000000000000
        mmHeight = 1852
        mmLeft = 265
        mmTop = 529
        mmWidth = 197380
        BandType = 8
      end
      object ppLabel1: TppLabel
        UserName = 'Label1'
        Caption = 'Data/Hora:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 147638
        mmTop = 1852
        mmWidth = 16933
        BandType = 8
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        Caption = 'P'#225'gina:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 152400
        mmTop = 6350
        mmWidth = 11906
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
        mmHeight = 4022
        mmLeft = 164836
        mmTop = 1852
        mmWidth = 32131
        BandType = 8
      end
      object ppSystemVariable2: TppSystemVariable
        UserName = 'SystemVariable2'
        VarType = vtPageCount
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4022
        mmLeft = 165100
        mmTop = 6350
        mmWidth = 1947
        BandType = 8
      end
    end
    object ppSummaryBand1: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
      object ppLine4: TppLine
        UserName = 'Line4'
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 1852
        mmLeft = 0
        mmTop = 265
        mmWidth = 197380
        BandType = 7
      end
      object txtQuant: TppLabel
        UserName = 'txtQuant'
        Caption = 'txtQuant'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 97102
        mmTop = 1058
        mmWidth = 23283
        BandType = 7
      end
      object ppLabel10: TppLabel
        UserName = 'Label10'
        Caption = 'TOTAL ==>'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4191
        mmLeft = 1058
        mmTop = 1058
        mmWidth = 18796
        BandType = 7
      end
    end
  end
  object ppDBPipeline1: TppDBPipeline
    DataSource = dsHorasExtras
    UserName = 'DBPipeline1'
    Left = 248
    Top = 37
    object ppDBPipeline1ppField1: TppField
      Alignment = taRightJustify
      FieldAlias = 'FUN_MATRICULA'
      FieldName = 'FUN_MATRICULA'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 0
      Position = 0
    end
    object ppDBPipeline1ppField2: TppField
      FieldAlias = 'HOR_DTMOVI'
      FieldName = 'HOR_DTMOVI'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 1
    end
    object ppDBPipeline1ppField3: TppField
      FieldAlias = 'HOR_HOINICIAL'
      FieldName = 'HOR_HOINICIAL'
      FieldLength = 5
      DisplayWidth = 5
      Position = 2
    end
    object ppDBPipeline1ppField4: TppField
      FieldAlias = 'HOR_HOFINAL'
      FieldName = 'HOR_HOFINAL'
      FieldLength = 5
      DisplayWidth = 5
      Position = 3
    end
    object ppDBPipeline1ppField5: TppField
      FieldAlias = 'HOR_FOLHA'
      FieldName = 'HOR_FOLHA'
      FieldLength = 6
      DisplayWidth = 6
      Position = 4
    end
    object ppDBPipeline1ppField6: TppField
      FieldAlias = 'FUN_NOME'
      FieldName = 'FUN_NOME'
      FieldLength = 50
      DisplayWidth = 50
      Position = 5
    end
    object ppDBPipeline1ppField7: TppField
      FieldAlias = 'HOR_QUANTIDADE'
      FieldName = 'HOR_QUANTIDADE'
      FieldLength = 5
      DisplayWidth = 5
      Position = 6
    end
  end
end
