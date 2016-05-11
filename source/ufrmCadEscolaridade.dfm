inherited frmCadEscolaridade: TfrmCadEscolaridade
  Caption = 'Tabela de Escolaridade'
  ClientHeight = 273
  PixelsPerInch = 96
  TextHeight = 13
  inherited PageControl1: TPageControl
    Height = 244
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
      object DBText1: TDBText [1]
        Left = 16
        Top = 33
        Width = 80
        Height = 22
        AutoSize = True
        DataField = 'ESC_CODIGO'
        DataSource = dsEscolaridade
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label3: TLabel [2]
        Left = 16
        Top = 16
        Width = 33
        Height = 13
        Caption = 'C'#243'digo'
      end
      inherited Panel1: TPanel
        Top = 175
      end
      object dbeDescricao: TDBEdit
        Left = 16
        Top = 80
        Width = 264
        Height = 21
        CharCase = ecUpperCase
        DataField = 'ESC_DESCRICAO'
        DataSource = dsEscolaridade
        TabOrder = 1
        OnExit = dbeDescricaoExit
      end
    end
    inherited TabSheet2: TTabSheet
      inherited grdConsultar: TDBGrid
        Height = 157
        DataSource = dsConsultar
        Columns = <
          item
            Expanded = False
            FieldName = 'ESC_CODIGO'
            Title.Caption = 'CODIGO'
            Width = 49
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ESC_DESCRICAO'
            Title.Caption = 'DESCRI'#199#195'O'
            Width = 438
            Visible = True
          end>
      end
      inherited Panel3: TPanel
        Height = 157
      end
    end
  end
  inherited datasetConsultar: TSQLDataSet
    CommandText = 
      'select ESC_CODIGO, ESC_DESCRICAO from ESCOLARIDADE order by ESC_' +
      'DESCRICAO'
    MaxBlobSize = -1
    SQLConnection = dmFolha.sqlCon_Folha
  end
  inherited cdsConsultar: TClientDataSet
    object cdsConsultarESC_CODIGO: TIntegerField
      FieldName = 'ESC_CODIGO'
      Required = True
      DisplayFormat = '00'
    end
    object cdsConsultarESC_DESCRICAO: TStringField
      FieldName = 'ESC_DESCRICAO'
    end
  end
  object dsEscolaridade: TDataSource
    AutoEdit = False
    DataSet = dmFolha.cdsEscolaridade
    Left = 360
    Top = 112
  end
end
