inherited frmCadCBO: TfrmCadCBO
  Left = 160
  Caption = 'Cadastro de CBO'
  ClientHeight = 291
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited PageControl1: TPageControl
    Height = 262
    ActivePage = TabSheet2
    inherited TabSheet1: TTabSheet
      object Label1: TLabel [0]
        Left = 16
        Top = 16
        Width = 33
        Height = 13
        Caption = 'C'#243'digo'
        Transparent = True
      end
      object Label2: TLabel [1]
        Left = 16
        Top = 64
        Width = 48
        Height = 13
        Caption = 'Descri'#231#227'o'
        FocusControl = dbeDescricao
        Transparent = True
      end
      inherited Panel1: TPanel
        Top = 193
        TabOrder = 2
      end
      object dbeDescricao: TDBEdit
        Left = 16
        Top = 80
        Width = 500
        Height = 21
        CharCase = ecUpperCase
        DataField = 'CBO_DESCRICAO'
        DataSource = dsCBO
        TabOrder = 1
      end
      object dbeCodigo: TDBEdit
        Left = 16
        Top = 36
        Width = 81
        Height = 21
        DataField = 'CBO_CODIGO'
        DataSource = dsCBO
        Enabled = False
        TabOrder = 0
        OnExit = dbeCodigoExit
        OnKeyPress = dbeCodigoKeyPress
      end
    end
    inherited TabSheet2: TTabSheet
      inherited grdConsultar: TDBGrid
        Height = 175
        DataSource = dsConsultar
        Columns = <
          item
            Expanded = False
            FieldName = 'CBO_CODIGO'
            Title.Caption = 'C'#211'DIGO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CBO_DESCRICAO'
            Title.Caption = 'DESCRI'#199#195'O'
            Width = 422
            Visible = True
          end>
      end
      inherited Panel3: TPanel
        Height = 175
      end
    end
  end
  inherited dsConsultar: TDataSource
    Left = 276
    Top = 218
  end
  inherited datasetConsultar: TSQLDataSet
    CommandText = 'select * from CBO order by CBO_DESCRICAO'
    MaxBlobSize = -1
    SQLConnection = dmFolha.sqlCon_Folha
    Left = 316
    Top = 218
  end
  inherited dspConsultar: TDataSetProvider
    Left = 364
    Top = 218
  end
  inherited cdsConsultar: TClientDataSet
    Top = 218
    object cdsConsultarCBO_CODIGO: TIntegerField
      FieldName = 'CBO_CODIGO'
      Required = True
      DisplayFormat = '0000'
    end
    object cdsConsultarCBO_DESCRICAO: TStringField
      FieldName = 'CBO_DESCRICAO'
      Size = 80
    end
  end
  object dsCBO: TDataSource
    AutoEdit = False
    DataSet = dmFolha.cdsCBO
    Left = 280
    Top = 176
  end
end
