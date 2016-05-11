object dmFolha2: TdmFolha2
  OldCreateOrder = False
  Left = 185
  Top = 158
  Height = 290
  Width = 457
  object dstBairros: TSQLDataSet
    CommandText = 'select * from BAIRROS order by BAI_NOME'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmFolha.sqlCon_Folha
    Left = 16
    Top = 16
    object dstBairrosBAI_CODIGO: TIntegerField
      FieldName = 'BAI_CODIGO'
      Required = True
    end
    object dstBairrosBAI_NOME: TStringField
      FieldName = 'BAI_NOME'
    end
    object dstBairrosCID_CODIGO: TIntegerField
      FieldName = 'CID_CODIGO'
    end
  end
  object dspBairros: TDataSetProvider
    DataSet = dstBairros
    Options = [poAllowCommandText]
    Left = 88
    Top = 16
  end
  object cdsBairros: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspBairros'
    Left = 160
    Top = 16
    object cdsBairrosBAI_CODIGO: TIntegerField
      FieldName = 'BAI_CODIGO'
      Required = True
    end
    object cdsBairrosBAI_NOME: TStringField
      FieldName = 'BAI_NOME'
    end
    object cdsBairrosCID_CODIGO: TIntegerField
      FieldName = 'CID_CODIGO'
    end
  end
  object dsBairros: TDataSource
    DataSet = cdsBairros
    Left = 216
    Top = 24
  end
  object dstEmpresas: TSQLDataSet
    CommandText = 
      'select EMP_CODIGO, EMP_FANTASIA from EMPRESAS'#13#10'order by EMP_FANT' +
      'ASIA'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmFolha.sqlCon_Folha
    Left = 24
    Top = 72
  end
  object dspEmpresas: TDataSetProvider
    DataSet = dstEmpresas
    Options = [poAllowCommandText]
    Left = 88
    Top = 72
  end
  object cdsEmpresas: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspEmpresas'
    Left = 160
    Top = 72
    object cdsEmpresasEMP_CODIGO: TIntegerField
      FieldName = 'EMP_CODIGO'
      Required = True
    end
    object cdsEmpresasEMP_FANTASIA: TStringField
      FieldName = 'EMP_FANTASIA'
      Size = 50
    end
  end
  object dsEmpresas: TDataSource
    DataSet = cdsEmpresas
    Left = 224
    Top = 72
  end
  object qryConsulta: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmFolha.sqlCon_Folha
    Left = 304
    Top = 16
  end
  object dstFuncionarios: TSQLDataSet
    CommandText = 
      'select FUN_MATRICULA, FUN_NOME from FUNCIONARIOS order by FUN_NO' +
      'ME'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmFolha.sqlCon_Folha
    Left = 32
    Top = 128
  end
  object dspFuncionarios: TDataSetProvider
    DataSet = dstFuncionarios
    Options = [poAllowCommandText]
    Left = 120
    Top = 128
  end
  object cdsFuncionarios: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspFuncionarios'
    Left = 208
    Top = 128
    object cdsFuncionariosFUN_MATRICULA: TIntegerField
      FieldName = 'FUN_MATRICULA'
      Required = True
    end
    object cdsFuncionariosFUN_NOME: TStringField
      FieldName = 'FUN_NOME'
      Size = 50
    end
  end
  object dsFuncionarios: TDataSource
    DataSet = cdsFuncionarios
    Left = 304
    Top = 72
  end
  object dstConsulta: TSQLDataSet
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmFolha.sqlCon_Folha
    Left = 32
    Top = 184
  end
  object dspConsulta: TDataSetProvider
    DataSet = dstConsulta
    Options = [poAllowCommandText]
    Left = 104
    Top = 184
  end
  object cdsConsulta: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspConsulta'
    Left = 176
    Top = 184
  end
  object dstEscolaridade: TSQLDataSet
    CommandText = 
      'select ESC_CODIGO, ESC_DESCRICAO from ESCOLARIDADE order by ESC_' +
      'DESCRICAO'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmFolha.sqlCon_Folha
    Left = 288
    Top = 128
  end
  object dspEscolaridade: TDataSetProvider
    DataSet = dstEscolaridade
    Options = [poAllowCommandText]
    Left = 376
    Top = 128
  end
  object cdsEscolaridade: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspEscolaridade'
    Left = 328
    Top = 176
    object cdsEscolaridadeESC_CODIGO: TIntegerField
      FieldName = 'ESC_CODIGO'
      Required = True
    end
    object cdsEscolaridadeESC_DESCRICAO: TStringField
      FieldName = 'ESC_DESCRICAO'
    end
  end
  object qryLocCliente: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'pMATRICULA'
        ParamType = ptInput
        Value = 0
      end>
    SQL.Strings = (
      
        'Select F.FUN_MATRICULA, F.FUN_NOME, C.CBO_DESCRICAO, F.FUN_FOTO ' +
        'from FUNCIONARIOS F'
      'INNER join CBO C ON F.FUN_CBO = C.CBO_CODIGO'
      'Where (FUN_MATRICULA = :pMATRICULA)')
    SQLConnection = dmFolha.sqlCon_Folha
    Left = 376
    Top = 16
    object qryLocClienteFUN_MATRICULA: TIntegerField
      FieldName = 'FUN_MATRICULA'
      Required = True
    end
    object qryLocClienteFUN_NOME: TStringField
      FieldName = 'FUN_NOME'
      Size = 50
    end
    object qryLocClienteFUN_FOTO: TBlobField
      FieldName = 'FUN_FOTO'
      Size = 1
    end
    object qryLocClienteCBO_DESCRICAO: TStringField
      FieldName = 'CBO_DESCRICAO'
      Size = 80
    end
  end
  object qryUsuarios: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'pCODIGO'
        ParamType = ptInput
        Value = 0
      end>
    SQL.Strings = (
      'Select SEN_CODIGO, SEN_NOME, SEN_SNATUA  from USUARIOS '
      'Where (SEN_CODIGO = :pCODIGO)')
    SQLConnection = dmFolha.sqlCon_Folha
    Left = 384
    Top = 72
  end
end
