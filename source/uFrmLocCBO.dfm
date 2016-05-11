inherited frmLocalizarCBO: TfrmLocalizarCBO
  Left = 233
  Top = 198
  Caption = 'Localizar CBO'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    inherited edtConsultar: TEdit
      OnDblClick = edtConsultarDblClick
    end
  end
  inherited grdConsultar: TDBGrid
    DataSource = dsConsultar
    OnDblClick = grdConsultarDblClick
    OnKeyPress = grdConsultarKeyPress
    Columns = <
      item
        Expanded = False
        FieldName = 'CBO_CODIGO'
        Title.Caption = 'CODIGO'
        Width = 46
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CBO_DESCRICAO'
        Title.Caption = 'DESCRI'#199#195'O'
        Width = 350
        Visible = True
      end>
  end
  inherited datasetConsultar: TSQLDataSet
    CommandText = 'select CBO_CODIGO, CBO_DESCRICAO from CBO order by CBO_DESCRICAO'
    MaxBlobSize = -1
    SQLConnection = dmFolha.sqlCon_Folha
  end
  inherited cdsConsultar: TClientDataSet
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
end
