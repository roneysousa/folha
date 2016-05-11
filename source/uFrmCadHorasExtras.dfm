inherited frmCadHorasExtras: TfrmCadHorasExtras
  Left = 182
  Top = 121
  Caption = 'Cadastro de Horas Extras'
  ClientHeight = 350
  OldCreateOrder = True
  ShowHint = True
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  inherited PageControl1: TPageControl
    Height = 321
    inherited TabSheet1: TTabSheet
      object Label1: TLabel [0]
        Left = 16
        Top = 16
        Width = 43
        Height = 13
        Caption = 'Matricula'
        FocusControl = dbeMatricula
        Transparent = True
      end
      object Label2: TLabel [1]
        Left = 16
        Top = 56
        Width = 78
        Height = 13
        Caption = 'Data Movimento'
        Transparent = True
      end
      object Label3: TLabel [2]
        Left = 16
        Top = 96
        Width = 53
        Height = 13
        Caption = 'Hora Inicial'
        FocusControl = dbeHoInicial
        Transparent = True
      end
      object Label4: TLabel [3]
        Left = 102
        Top = 96
        Width = 48
        Height = 13
        Caption = 'Hora Final'
        FocusControl = dbeHoFinal
        Transparent = True
      end
      object Label5: TLabel [4]
        Left = 16
        Top = 136
        Width = 55
        Height = 13
        Caption = 'Justificativa'
        FocusControl = dbmJustificativa
        Transparent = True
      end
      object spLocalizar: TSpeedButton [5]
        Left = 152
        Top = 31
        Width = 23
        Height = 22
        Hint = 'Localizar Funcion'#225'rio'
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
        OnClick = spLocalizarClick
      end
      object lbl_Funcionario: TLabel [6]
        Left = 181
        Top = 37
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
      object DBText1: TDBText [7]
        Left = 192
        Top = 116
        Width = 65
        Height = 17
        DataField = 'HOR_QUAT_HORAS'
        DataSource = dsHoras
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      inherited Panel1: TPanel
        Top = 252
        TabOrder = 5
      end
      object dbeMatricula: TDBEdit
        Left = 16
        Top = 32
        Width = 134
        Height = 21
        DataField = 'FUN_MATRICULA'
        DataSource = dsHoras
        TabOrder = 0
        OnChange = dbeMatriculaChange
        OnExit = dbeMatriculaExit
      end
      object dbeHoInicial: TDBEdit
        Left = 16
        Top = 112
        Width = 69
        Height = 21
        DataField = 'HOR_HOINICIAL'
        DataSource = dsHoras
        TabOrder = 2
        OnExit = dbeHoInicialExit
      end
      object dbeHoFinal: TDBEdit
        Left = 102
        Top = 112
        Width = 69
        Height = 21
        DataField = 'HOR_HOFINAL'
        DataSource = dsHoras
        TabOrder = 3
        OnExit = dbeHoFinalExit
      end
      object dbmJustificativa: TDBMemo
        Left = 16
        Top = 152
        Width = 529
        Height = 89
        DataField = 'HOR_JUSTIFICATIVA'
        DataSource = dsHoras
        ScrollBars = ssVertical
        TabOrder = 4
        OnKeyPress = dbmJustificativaKeyPress
      end
      object dbeData: TDBDateEdit
        Left = 16
        Top = 72
        Width = 121
        Height = 21
        DataField = 'HOR_DTMOVI'
        DataSource = dsHoras
        NumGlyphs = 2
        TabOrder = 1
        OnExit = dbeDataExit
      end
    end
    inherited TabSheet2: TTabSheet
      inherited grdConsultar: TDBGrid
        Height = 234
      end
      inherited Panel3: TPanel
        Height = 234
      end
    end
  end
  inherited datasetConsultar: TSQLDataSet
    MaxBlobSize = -1
    SQLConnection = dmFolha.sqlCon_Folha
  end
  object dsHoras: TDataSource
    AutoEdit = False
    DataSet = dmFolha.cdsHorasExtras
    Left = 448
    Top = 192
  end
end
