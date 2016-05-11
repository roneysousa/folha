object frmGerarFolha: TfrmGerarFolha
  Left = 206
  Top = 141
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Gerar Folha de Pagamento'
  ClientHeight = 307
  ClientWidth = 419
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  ShowHint = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel4: TPanel
    Left = 0
    Top = 0
    Width = 419
    Height = 29
    Align = alTop
    BevelInner = bvRaised
    Color = clBlue
    TabOrder = 0
    Visible = False
  end
  object Panel5: TPanel
    Left = 0
    Top = 266
    Width = 419
    Height = 41
    Align = alBottom
    Color = clNavy
    TabOrder = 1
    object BtGravar: TBitBtn
      Left = 241
      Top = 8
      Width = 75
      Height = 25
      Caption = '&Gerar'
      TabOrder = 0
      OnClick = BtGravarClick
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
        FF00FFBD4900BD4900BD4900BD4900BD4900BD4900BD4900FF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFBD4900FFF6D4FFEFC4FFF2BBAB
        A7C70525F7FCD890BD4900BD4900BD4900BD4900BD4900FF00FFFF00FFFF00FF
        FF00FFBD49000525F70525F70525F70525F70525F7FBDAA3F6D39EB8A9AD0525
        F7FFDE86F8D08EBD4900FF00FFFF00FFFF00FFBD490098A1E38690DC7380D941
        59E30525F70525F70525F70525F70525F70525F70525F7BD4900FF00FF0E90C9
        0E90C9BD4900FFF2D8FFF0CEFFF4C1B1ADCE0525F7FFF2A7E5C9AC9996BC0525
        F78B90B06C77CABD49000E90C963CEEE78D8FCBD49004163F76479E97B89DE5B
        6FE20525F7BCB5C1C7B7B8A39DBD0525F7FFE38EFFE697BD49000E90C97BDCF7
        A5E9FFBD49000525F70525F70525F70525F70525F70525F70525F70525F70525
        F70525F70525F7BD49000E90C982DEF7C7F7FFBD4900FFFFFFFFFFEFFFFFE3B7
        BBE20525F7FFFFBBFFE7B5B5ACC20525F7D1C1ACAFA7C0BD49000E90C981DEF7
        CFFAFFBD4900EAC59EEDC7A5F8DAAD9697CB0525F7FFF8C9FFEECBC0BDD80525
        F7FFFEB7FFF4C7BD49000E90C981DEF7CEFAFFBD4900BD4900BD4900BD4900BD
        4900BD4900BD4900BD4900BD4900BD4900BD4900BD4900BD49000E90C981DEF7
        CEFAFFBD4C00BC4A00BC4900BD4900BD4900BD4900BD4900BD4900BD4900BD49
        00BD4900BD4900BD49000E90C983E0F8D7F8FFC6DADD96C6C68BC6C774BCC60E
        90C9FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0E90C979DAF4
        B4E5F797E1FC60DAFE59DEFF50D8FB0E90C9FF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FF0E90C90E90C90E90C90E90C90E90C90E90C90E90C90E
        90C9FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0E90C90E90C9
        65CCEA62D3EF59D0F04CC6E90E90C90E90C9FF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FF0E90C90E90C90E90C90E90C90E90C90E90C9FF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
    end
    object BtSair: TBitBtn
      Left = 330
      Top = 8
      Width = 75
      Height = 25
      Caption = '&Sair'
      TabOrder = 1
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
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 29
    Width = 419
    Height = 237
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 2
    object TabSheet1: TTabSheet
      Caption = 'Folha'
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 411
        Height = 209
        Align = alClient
        TabOrder = 0
        object Label1: TLabel
          Left = 16
          Top = 55
          Width = 44
          Height = 13
          Caption = 'M'#234's/Ano'
          FocusControl = edtMesAno
          Transparent = True
        end
        object Label2: TLabel
          Left = 16
          Top = 137
          Width = 80
          Height = 13
          Caption = '&Data Pagamento'
          FocusControl = edtDTPAGA
          Transparent = True
        end
        object Label3: TLabel
          Left = 16
          Top = 8
          Width = 41
          Height = 13
          Caption = '&Empresa'
          FocusControl = edtEmpresa
          Transparent = True
        end
        object spLocalizar: TSpeedButton
          Left = 136
          Top = 24
          Width = 23
          Height = 22
          Hint = 'Localizar Empresa'
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
          OnClick = spLocalizarClick
        end
        object lbl_Funcionario: TLabel
          Left = 165
          Top = 29
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
        object lblPercentual: TLabel
          Left = 387
          Top = 183
          Width = 17
          Height = 13
          Caption = '0%'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          Visible = False
        end
        object edtMesAno: TMaskEdit
          Left = 16
          Top = 71
          Width = 120
          Height = 21
          TabStop = False
          Color = clSilver
          EditMask = '99/9999;0;_'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          MaxLength = 7
          ParentFont = False
          ReadOnly = True
          TabOrder = 1
          OnExit = edtMesAnoExit
          OnKeyPress = edtMesAnoKeyPress
        end
        object rbgFecharFolha: TRadioGroup
          Left = 16
          Top = 99
          Width = 185
          Height = 33
          Caption = '&Fechar Folha'
          Columns = 2
          ItemIndex = 1
          Items.Strings = (
            '&Sim'
            '&N'#227'o')
          TabOrder = 2
        end
        object edtDTPAGA: TDateEdit
          Left = 16
          Top = 153
          Width = 121
          Height = 21
          NumGlyphs = 2
          TabOrder = 3
          OnExit = edtDTPAGAExit
        end
        object edtEmpresa: TEdit
          Left = 16
          Top = 24
          Width = 121
          Height = 21
          MaxLength = 3
          TabOrder = 0
          OnChange = edtEmpresaChange
          OnExit = edtEmpresaExit
          OnKeyPress = edtEmpresaKeyPress
        end
        object BmsXPProgressBar1: TBmsXPProgressBar
          Left = 25
          Top = 182
          Width = 343
          Height = 16
          BackColors.StartColor = 14671839
          BackColors.EndColor = clWhite
          BarColors.StartColor = 11530400
          BarColors.EndColor = 5290064
          TabOrder = 4
          Visible = False
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Folha 13'#186
      ImageIndex = 1
      object Label4: TLabel
        Left = 16
        Top = 8
        Width = 41
        Height = 13
        Caption = '&Empresa'
        FocusControl = edtEmpresa2
        Transparent = True
      end
      object spLocalizar2: TSpeedButton
        Left = 136
        Top = 24
        Width = 22
        Height = 22
        Hint = 'Localizar Empresa'
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
        OnClick = spLocalizar2Click
      end
      object lblEmpresa: TLabel
        Left = 165
        Top = 29
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
      object Label6: TLabel
        Left = 16
        Top = 55
        Width = 44
        Height = 13
        Caption = 'M'#234's/Ano'
        FocusControl = edtMesAno2
        Transparent = True
      end
      object Label7: TLabel
        Left = 16
        Top = 137
        Width = 80
        Height = 13
        Caption = '&Data Pagamento'
        FocusControl = edtDTPAGA2
        Transparent = True
      end
      object edtEmpresa2: TEdit
        Left = 16
        Top = 24
        Width = 120
        Height = 21
        MaxLength = 3
        TabOrder = 0
        OnChange = edtEmpresa2Change
        OnExit = edtEmpresa2Exit
        OnKeyPress = edtEmpresa2KeyPress
      end
      object edtMesAno2: TMaskEdit
        Left = 16
        Top = 71
        Width = 120
        Height = 21
        TabStop = False
        Color = clSilver
        EditMask = '99/9999;0;_'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        MaxLength = 7
        ParentFont = False
        ReadOnly = True
        TabOrder = 1
        OnExit = edtMesAnoExit
        OnKeyPress = edtMesAnoKeyPress
      end
      object rbgFecharFolha2: TRadioGroup
        Left = 16
        Top = 99
        Width = 185
        Height = 33
        Caption = '&Fechar Folha'
        Columns = 2
        ItemIndex = 1
        Items.Strings = (
          '&Sim'
          '&N'#227'o')
        TabOrder = 2
      end
      object edtDTPAGA2: TDateEdit
        Left = 16
        Top = 153
        Width = 121
        Height = 21
        NumGlyphs = 2
        TabOrder = 3
        OnExit = edtDTPAGA2Exit
      end
    end
  end
  object dstFuncionarios: TSQLDataSet
    CommandText = 
      'Select FUN_MATRICULA, FUN_NOME, FUN_VALETRANS, FUN_SALARIO, FUN_' +
      'CPF, FUN_RECISAO, FUN_QTFILHOS, FUN_EMPRESA, FUN_HORAS_TRABALHO,' +
      ' FUN_DTINICIO_FERIAS, FUN_DTFIM_FERIAS from FUNCIONARIOS '#13#10'Where' +
      ' (FUN_EMPRESA = :pEMPRESA)'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'pEMPRESA'
        ParamType = ptInput
        Value = 0
      end>
    SQLConnection = dmFolha.sqlCon_Folha
    Left = 24
    Top = 240
  end
  object dspFuncionarios: TDataSetProvider
    DataSet = dstFuncionarios
    Options = [poAllowCommandText]
    Left = 64
    Top = 240
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
    Left = 104
    Top = 240
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
end
