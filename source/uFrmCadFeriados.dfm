inherited frmCadFeriados: TfrmCadFeriados
  Top = 134
  Caption = 'Tabela de Feriados'
  OldCreateOrder = True
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  inherited PageControl1: TPageControl
    inherited TabSheet1: TTabSheet
      object Label1: TLabel [0]
        Left = 21
        Top = 24
        Width = 46
        Height = 13
        Caption = 'DIA/M'#202'S'
        FocusControl = dbeDiaMes
        Transparent = True
      end
      object Label2: TLabel [1]
        Left = 21
        Top = 64
        Width = 48
        Height = 13
        Caption = 'Descri'#231#227'o'
        FocusControl = dbeDescricao
        Transparent = True
      end
      object dbeDiaMes: TDBEdit
        Left = 21
        Top = 40
        Width = 56
        Height = 21
        DataField = 'FER_MESDIA'
        DataSource = dsFeriados
        TabOrder = 1
        OnExit = dbeDiaMesExit
      end
      object dbeDescricao: TDBEdit
        Left = 21
        Top = 80
        Width = 264
        Height = 21
        CharCase = ecUpperCase
        DataField = 'DESCRICAO'
        DataSource = dsFeriados
        TabOrder = 2
      end
    end
    inherited TabSheet2: TTabSheet
      inherited grdConsultar: TDBGrid
        DataSource = dsConsultar
        Columns = <
          item
            Expanded = False
            FieldName = 'FER_MESDIA'
            Title.Caption = 'DIA/M'#202'S'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DESCRICAO'
            Title.Caption = 'DESCRI'#199#195'O'
            Width = 451
            Visible = True
          end>
      end
    end
  end
  inherited datasetConsultar: TSQLDataSet
    CommandText = 'select FER_MESDIA, DESCRICAO from FERIADOS '
    MaxBlobSize = -1
    SQLConnection = dmFolha.sqlCon_Folha
  end
  inherited cdsConsultar: TClientDataSet
    object cdsConsultarFER_MESDIA: TStringField
      Alignment = taRightJustify
      FieldName = 'FER_MESDIA'
      EditMask = '99/99;0;_'
      FixedChar = True
      Size = 4
    end
    object cdsConsultarDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
    end
  end
  object dsFeriados: TDataSource
    AutoEdit = False
    DataSet = dmFolha.cdsFeriados
    OnStateChange = dsFeriadosStateChange
    Left = 344
    Top = 96
  end
end
