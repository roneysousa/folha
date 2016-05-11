inherited frmLocBeneficio: TfrmLocBeneficio
  Left = 221
  Top = 152
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    inherited edtConsultar: TEdit
      OnChange = edtConsultarChange
    end
    inherited btnAlterar: TBitBtn
      OnClick = btnAlterarClick
    end
  end
  inherited grdConsultar: TDBGrid
    DataSource = dsConsultar
    OnDblClick = grdConsultarDblClick
    Columns = <
      item
        Expanded = False
        FieldName = 'DCB_CODIGO'
        Title.Caption = 'CODIGO'
        Width = 48
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DCB_DESCRICAO'
        Title.Caption = 'DESCRI'#199#195'O'
        Width = 346
        Visible = True
      end>
  end
  inherited datasetConsultar: TSQLDataSet
    CommandText = 
      'select DCB_CODIGO, DCB_DESCRICAO from DESCONTOS_BENEFICIO'#13#10'order' +
      ' by DCB_DESCRICAO'
    MaxBlobSize = -1
    SQLConnection = dmFolha.sqlCon_Folha
  end
  inherited cdsConsultar: TClientDataSet
    object cdsConsultarDCB_CODIGO: TIntegerField
      FieldName = 'DCB_CODIGO'
      Required = True
      DisplayFormat = '0000'
    end
    object cdsConsultarDCB_DESCRICAO: TStringField
      FieldName = 'DCB_DESCRICAO'
      Required = True
    end
  end
end
