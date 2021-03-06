inherited frmCadDescBene: TfrmCadDescBene
  Left = 98
  Top = 141
  Caption = 'Tabela de Descontos/Beneficios'
  ClientHeight = 315
  ClientWidth = 599
  OldCreateOrder = True
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  inherited PageControl1: TPageControl
    Width = 599
    Height = 286
    inherited TabSheet1: TTabSheet
      OnShow = TabSheet1Show
      object Label1: TLabel [0]
        Left = 16
        Top = 10
        Width = 33
        Height = 13
        Caption = 'C'#243'digo'
        Transparent = True
      end
      object Label2: TLabel [1]
        Left = 16
        Top = 56
        Width = 48
        Height = 13
        Caption = 'Descri'#231#227'o'
        FocusControl = dbeDescricao
        Transparent = True
      end
      object lbl_valor: TLabel [2]
        Left = 16
        Top = 136
        Width = 24
        Height = 13
        Caption = 'Valor'
        FocusControl = dbeValor
        Transparent = True
      end
      object DBText1: TDBText [3]
        Left = 16
        Top = 24
        Width = 80
        Height = 22
        AutoSize = True
        DataField = 'DCB_CODIGO'
        DataSource = dsDescBene
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object lbl_percentual: TLabel [4]
        Left = 270
        Top = 156
        Width = 10
        Height = 13
        Caption = '%'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      inherited Panel1: TPanel
        Top = 217
        Width = 591
        TabOrder = 4
      end
      object dbeDescricao: TDBEdit
        Left = 16
        Top = 72
        Width = 305
        Height = 21
        CharCase = ecUpperCase
        DataField = 'DCB_DESCRICAO'
        DataSource = dsDescBene
        TabOrder = 0
        OnExit = dbeDescricaoExit
      end
      object dbeValor: TDBEdit
        Left = 16
        Top = 152
        Width = 120
        Height = 21
        DataField = 'DCB_VALOR'
        DataSource = dsDescBene
        TabOrder = 2
        OnEnter = dbeValorEnter
        OnExit = dbeValorExit
      end
      object dbePercentual: TDBEdit
        Left = 144
        Top = 152
        Width = 120
        Height = 21
        DataField = 'DCB_PERCENTUAL'
        DataSource = dsDescBene
        TabOrder = 3
        OnEnter = dbePercentualEnter
        OnExit = dbePercentualExit
      end
      object dbeTipo: TDBRadioGroup
        Left = 16
        Top = 98
        Width = 185
        Height = 36
        Caption = 'Tipo'
        Columns = 2
        DataField = 'DCB_TIPO'
        DataSource = dsDescBene
        Items.Strings = (
          '&Beneficio      '
          '&Desconto')
        TabOrder = 1
        Values.Strings = (
          '1'
          '2')
      end
      object DBGrid1: TDBGrid
        Left = 0
        Top = 160
        Width = 401
        Height = 57
        Ctl3D = False
        DataSource = dsDados
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 5
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnDblClick = grdConsultarDblClick
        Columns = <
          item
            Expanded = False
            FieldName = 'DCB_CODIGO'
            Title.Caption = 'CODIGO'
            Width = 51
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DCB_DESCRICAO'
            Title.Caption = 'DESCRI'#199#195'O'
            Width = 319
            Visible = True
          end>
      end
      object Panel5: TPanel
        Left = 416
        Top = 0
        Width = 175
        Height = 217
        Align = alRight
        BevelOuter = bvNone
        BorderStyle = bsSingle
        Color = clInfoBk
        TabOrder = 6
        object Label3: TLabel
          Left = 4
          Top = 5
          Width = 172
          Height = 91
          Caption = 
            'FIXOS'#13#10'  001 - 030 -> Valores Tabelados'#13#10'  031 - 059 -> Percentu' +
            'al'#13#10'  060 - 100 -> Moeda Corrente'#13#10'VARIAVEIS'#13#10'  101 - 999 -> Per' +
            'centual e Moeda '#13#10'                      Corrente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          WordWrap = True
        end
      end
    end
    inherited TabSheet2: TTabSheet
      inherited Panel2: TPanel
        Width = 591
      end
      inherited grdConsultar: TDBGrid
        Width = 557
        Height = 199
        DataSource = dsConsultar
        Columns = <
          item
            Expanded = False
            FieldName = 'DCB_CODIGO'
            Title.Caption = 'CODIGO'
            Width = 51
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DCB_DESCRICAO'
            Title.Caption = 'DESCRI'#199#195'O'
            Width = 417
            Visible = True
          end>
      end
      inherited Panel3: TPanel
        Left = 557
        Height = 199
      end
    end
  end
  inherited Panel4: TPanel
    Width = 599
  end
  inherited dsConsultar: TDataSource
    Left = 428
    Top = 218
  end
  inherited datasetConsultar: TSQLDataSet
    CommandText = 'select DCB_CODIGO, DCB_DESCRICAO from DESCONTOS_BENEFICIO'
    MaxBlobSize = -1
    SQLConnection = dmFolha.sqlCon_Folha
    Left = 460
    Top = 218
  end
  inherited dspConsultar: TDataSetProvider
    Left = 492
    Top = 218
  end
  inherited cdsConsultar: TClientDataSet
    Left = 524
    Top = 218
    object cdsConsultarDCB_CODIGO: TIntegerField
      FieldName = 'DCB_CODIGO'
      Required = True
      DisplayFormat = '000'
    end
    object cdsConsultarDCB_DESCRICAO: TStringField
      FieldName = 'DCB_DESCRICAO'
      Required = True
    end
  end
  object dsDescBene: TDataSource
    AutoEdit = False
    DataSet = dmFolha.cdsDescBene
    OnDataChange = dsDescBeneDataChange
    Left = 296
    Top = 80
  end
  object dsDados: TDataSource
    DataSet = cdsDados
    OnDataChange = dsDadosDataChange
    Left = 396
    Top = 77
  end
  object dstDados: TSQLDataSet
    CommandText = 
      'select DCB_CODIGO, DCB_DESCRICAO from DESCONTOS_BENEFICIO'#13#10'order' +
      ' by DCB_CODIGO'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmFolha.sqlCon_Folha
    Left = 428
    Top = 173
  end
  object dspDados: TDataSetProvider
    DataSet = dstDados
    Options = [poAllowCommandText]
    Left = 460
    Top = 173
  end
  object cdsDados: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspDados'
    Left = 492
    Top = 173
    object cdsDadosDCB_CODIGO: TIntegerField
      FieldName = 'DCB_CODIGO'
      Required = True
      DisplayFormat = '0000'
    end
    object cdsDadosDCB_DESCRICAO: TStringField
      FieldName = 'DCB_DESCRICAO'
      Required = True
    end
  end
end
