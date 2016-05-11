inherited frmLocalizarEmpresa: TfrmLocalizarEmpresa
  Left = 243
  Top = 164
  PixelsPerInch = 96
  TextHeight = 13
  inherited grdConsultar: TDBGrid
    DataSource = dsConsultar
    OnDblClick = grdConsultarDblClick
    Columns = <
      item
        Expanded = False
        FieldName = 'EMP_CODIGO'
        Title.Caption = 'C'#211'DIGO'
        Width = 48
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'EMP_FANTASIA'
        Title.Caption = 'NOME'
        Width = 344
        Visible = True
      end>
  end
  inherited datasetConsultar: TSQLDataSet
    CommandText = 
      'select EMP_CODIGO, EMP_FANTASIA from EMPRESAS order by EMP_FANTA' +
      'SIA'
    MaxBlobSize = -1
    SQLConnection = dmFolha.sqlCon_Folha
  end
  inherited dspConsultar: TDataSetProvider
    Left = 300
  end
  inherited cdsConsultar: TClientDataSet
    Left = 348
    object cdsConsultarEMP_CODIGO: TIntegerField
      FieldName = 'EMP_CODIGO'
      Required = True
      DisplayFormat = '000'
    end
    object cdsConsultarEMP_FANTASIA: TStringField
      FieldName = 'EMP_FANTASIA'
      Size = 50
    end
  end
end
