inherited frmCadBairros: TfrmCadBairros
  Left = 194
  Caption = 'Tabela de Bairros'
  ClientHeight = 284
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited PageControl1: TPageControl
    Height = 255
    inherited TabSheet1: TTabSheet
      object Label2: TLabel [0]
        Left = 16
        Top = 104
        Width = 48
        Height = 13
        Caption = 'Descri'#231#227'o'
        FocusControl = dbeNMBAIR
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
        DataField = 'BAI_CODIGO'
        DataSource = dsBairros
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label3: TLabel [3]
        Left = 16
        Top = 64
        Width = 33
        Height = 13
        Caption = 'Cidade'
        FocusControl = dbcmbCidade
      end
      inherited Panel1: TPanel
        Top = 186
        TabOrder = 2
      end
      object dbeNMBAIR: TDBEdit
        Left = 16
        Top = 120
        Width = 300
        Height = 21
        CharCase = ecUpperCase
        DataField = 'BAI_NOME'
        DataSource = dsBairros
        TabOrder = 1
        OnExit = dbeNMBAIRExit
      end
      object dbcmbCidade: TDBLookupComboBox
        Left = 16
        Top = 80
        Width = 300
        Height = 21
        DataField = 'BAI_NMCIDA'
        DataSource = dsBairros
        TabOrder = 0
      end
    end
    inherited TabSheet2: TTabSheet
      inherited grdConsultar: TDBGrid
        Height = 168
        DataSource = dsConsultar
        Columns = <
          item
            Expanded = False
            FieldName = 'BAI_CODIGO'
            Title.Caption = 'CODIGO'
            Width = 54
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'BAI_NOME'
            Title.Caption = 'NOME'
            Width = 437
            Visible = True
          end>
      end
      inherited Panel3: TPanel
        Height = 168
      end
    end
  end
  inherited datasetConsultar: TSQLDataSet
    CommandText = 'select BAI_CODIGO, BAI_NOME from BAIRROS'
    MaxBlobSize = -1
    SQLConnection = dmFolha.sqlCon_Folha
  end
  inherited cdsConsultar: TClientDataSet
    object cdsConsultarBAI_CODIGO: TIntegerField
      FieldName = 'BAI_CODIGO'
      Required = True
      DisplayFormat = '000'
    end
    object cdsConsultarBAI_NOME: TStringField
      FieldName = 'BAI_NOME'
    end
  end
  object dsBairros: TDataSource
    AutoEdit = False
    DataSet = dmFolha.cdsBairros
    Left = 280
    Top = 176
  end
end
