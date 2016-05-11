inherited frmCadCategorias: TfrmCadCategorias
  Left = 189
  Top = 133
  Caption = 'Tabela de Categorias'
  ClientHeight = 269
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited PageControl1: TPageControl
    Height = 240
    ActivePage = TabSheet2
    inherited TabSheet1: TTabSheet
      object Label2: TLabel [0]
        Left = 16
        Top = 64
        Width = 48
        Height = 13
        Caption = 'Descri'#231#227'o'
        FocusControl = dbeDescricao
        Transparent = True
      end
      object Label1: TLabel [1]
        Left = 16
        Top = 16
        Width = 33
        Height = 13
        Caption = 'C'#243'digo'
      end
      object DBText1: TDBText [2]
        Left = 16
        Top = 33
        Width = 80
        Height = 22
        AutoSize = True
        DataField = 'CAT_CODIGO'
        DataSource = dsCategorias
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      inherited Panel1: TPanel
        Top = 171
      end
      object dbeDescricao: TDBEdit
        Left = 16
        Top = 80
        Width = 433
        Height = 21
        CharCase = ecUpperCase
        DataField = 'CAT_DESCRICAO'
        DataSource = dsCategorias
        TabOrder = 1
        OnExit = dbeDescricaoExit
      end
    end
    inherited TabSheet2: TTabSheet
      inherited grdConsultar: TDBGrid
        Height = 153
        DataSource = dsConsultar
        Columns = <
          item
            Expanded = False
            FieldName = 'CAT_CODIGO'
            Title.Caption = 'CODIGO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CAT_DESCRICAO'
            Title.Caption = 'DESCRI'#199#195'O'
            Width = 418
            Visible = True
          end>
      end
      inherited Panel3: TPanel
        Height = 153
      end
    end
  end
  inherited datasetConsultar: TSQLDataSet
    CommandText = 'select CAT_CODIGO, CAT_DESCRICAO from CATEGORIA'
    MaxBlobSize = -1
    SQLConnection = dmFolha.sqlCon_Folha
  end
  inherited cdsConsultar: TClientDataSet
    object cdsConsultarCAT_CODIGO: TIntegerField
      FieldName = 'CAT_CODIGO'
      Required = True
      DisplayFormat = '000'
    end
    object cdsConsultarCAT_DESCRICAO: TStringField
      FieldName = 'CAT_DESCRICAO'
    end
  end
  object dstCategoria: TSQLDataSet
    CommandText = 'select * from CATEGORIA  Where (CAT_CODIGO = :pCODIGO)'#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'pCODIGO'
        ParamType = ptInput
        Value = 0
      end>
    SQLConnection = dmFolha.sqlCon_Folha
    Left = 200
    Top = 72
    object dstCategoriaCAT_CODIGO: TIntegerField
      FieldName = 'CAT_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object dstCategoriaCAT_DESCRICAO: TStringField
      FieldName = 'CAT_DESCRICAO'
      ProviderFlags = [pfInUpdate]
    end
  end
  object dspCategoria: TDataSetProvider
    DataSet = dstCategoria
    Options = [poAllowCommandText]
    Left = 256
    Top = 72
  end
  object cdsCategoria: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'pCODIGO'
        ParamType = ptInput
        Value = 0
      end>
    ProviderName = 'dspCategoria'
    Left = 304
    Top = 72
    object cdsCategoriaCAT_CODIGO: TIntegerField
      FieldName = 'CAT_CODIGO'
      Required = True
      DisplayFormat = '000'
    end
    object cdsCategoriaCAT_DESCRICAO: TStringField
      FieldName = 'CAT_DESCRICAO'
    end
  end
  object dsCategorias: TDataSource
    AutoEdit = False
    DataSet = cdsCategoria
    Left = 348
    Top = 69
  end
end
