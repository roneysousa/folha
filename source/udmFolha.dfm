object dmFolha: TdmFolha
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Left = 208
  Top = 148
  Height = 612
  Width = 710
  object sqlCon_Folha: TSQLConnection
    ConnectionName = 'FOLHA'
    DriverName = 'UIB FireBird15'
    GetDriverFunc = 'getSQLDriverINTERBASE'
    LibraryName = 'dbexpUIBfire15.dll'
    LoginPrompt = False
    Params.Strings = (
      'DriverName=UIB FireBird15'
      'BlobSize=-1'
      'CommitRetain=False'
      'Database=D:\Sistemas\FOLHA\Dados\FOLHA.FDB'
      'ErrorResourceFile='
      'LocaleCode=0000'
      'Password=masterkey'
      'RoleName=RoleName'
      'ServerCharSet=WIN1251'
      'SQLDialect=3'
      'Interbase TransIsolation=ReadCommited'
      'User_Name=SYSDBA'
      'WaitOnLocks=True')
    VendorLib = 'c:\infog2\fbclient.dll'
    BeforeConnect = sqlCon_FolhaBeforeConnect
    Left = 40
    Top = 16
  end
  object dstFuncionarios: TSQLDataSet
    CommandText = 'Select * from FUNCIONARIOS Where (FUN_MATRICULA = :pMATRICULA)'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'pMATRICULA'
        ParamType = ptInput
        Value = 0
      end>
    SQLConnection = sqlCon_Folha
    Left = 40
    Top = 72
    object dstFuncionariosFUN_MATRICULA: TIntegerField
      FieldName = 'FUN_MATRICULA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object dstFuncionariosFUN_NOME: TStringField
      FieldName = 'FUN_NOME'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object dstFuncionariosFUN_APELIDO: TStringField
      FieldName = 'FUN_APELIDO'
      ProviderFlags = [pfInUpdate]
    end
    object dstFuncionariosFUN_ENDERECO: TStringField
      FieldName = 'FUN_ENDERECO'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object dstFuncionariosFUN_NUMERO: TIntegerField
      FieldName = 'FUN_NUMERO'
      ProviderFlags = [pfInUpdate]
    end
    object dstFuncionariosFUN_COMPLEMENTO: TStringField
      FieldName = 'FUN_COMPLEMENTO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object dstFuncionariosFUN_CEP: TStringField
      FieldName = 'FUN_CEP'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object dstFuncionariosFUN_REFERENCIA: TStringField
      FieldName = 'FUN_REFERENCIA'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object dstFuncionariosFUN_CIDADE: TIntegerField
      FieldName = 'FUN_CIDADE'
      ProviderFlags = [pfInUpdate]
    end
    object dstFuncionariosFUN_FONERES: TStringField
      FieldName = 'FUN_FONERES'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 10
    end
    object dstFuncionariosFUN_FONECEL: TStringField
      FieldName = 'FUN_FONECEL'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 10
    end
    object dstFuncionariosFUN_NOMEMAE: TStringField
      FieldName = 'FUN_NOMEMAE'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object dstFuncionariosFUN_NOMEPAI: TStringField
      FieldName = 'FUN_NOMEPAI'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object dstFuncionariosFUN_CPF: TStringField
      FieldName = 'FUN_CPF'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 11
    end
    object dstFuncionariosFUN_IDENTIDADE: TStringField
      FieldName = 'FUN_IDENTIDADE'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 14
    end
    object dstFuncionariosFUN_EMISSORIDENT: TStringField
      FieldName = 'FUN_EMISSORIDENT'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object dstFuncionariosFUN_UFIDEN: TStringField
      FieldName = 'FUN_UFIDEN'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object dstFuncionariosFUN_DATANASC: TDateField
      FieldName = 'FUN_DATANASC'
      ProviderFlags = [pfInUpdate]
    end
    object dstFuncionariosFUN_PISPASEP: TStringField
      FieldName = 'FUN_PISPASEP'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 11
    end
    object dstFuncionariosFUN_CTPSSERIE: TIntegerField
      FieldName = 'FUN_CTPSSERIE'
      ProviderFlags = [pfInUpdate]
    end
    object dstFuncionariosFUN_ADMISSAO: TDateField
      FieldName = 'FUN_ADMISSAO'
      ProviderFlags = [pfInUpdate]
    end
    object dstFuncionariosFUN_RECISAO: TDateField
      FieldName = 'FUN_RECISAO'
      ProviderFlags = [pfInUpdate]
    end
    object dstFuncionariosFUN_CATEGORIA: TIntegerField
      FieldName = 'FUN_CATEGORIA'
      ProviderFlags = [pfInUpdate]
    end
    object dstFuncionariosFUN_TITULO: TStringField
      FieldName = 'FUN_TITULO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 12
    end
    object dstFuncionariosFUN_TITULOSECAO: TStringField
      FieldName = 'FUN_TITULOSECAO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 3
    end
    object dstFuncionariosFUN_TITULOZONA: TStringField
      FieldName = 'FUN_TITULOZONA'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 3
    end
    object dstFuncionariosFUN_VALETRANS: TStringField
      FieldName = 'FUN_VALETRANS'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object dstFuncionariosFUN_SALARIO: TFMTBCDField
      FieldName = 'FUN_SALARIO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object dstFuncionariosFUN_DATACADASTRO: TDateField
      FieldName = 'FUN_DATACADASTRO'
      ProviderFlags = [pfInUpdate]
    end
    object dstFuncionariosFUN_EMPRESA: TIntegerField
      FieldName = 'FUN_EMPRESA'
      ProviderFlags = [pfInUpdate]
    end
    object dstFuncionariosFUN_BAIRRO: TIntegerField
      FieldName = 'FUN_BAIRRO'
      ProviderFlags = [pfInUpdate]
    end
    object dstFuncionariosFUN_CBO: TIntegerField
      FieldName = 'FUN_CBO'
      ProviderFlags = [pfInUpdate]
    end
    object dstFuncionariosFUN_QTFILHOS: TIntegerField
      FieldName = 'FUN_QTFILHOS'
      ProviderFlags = [pfInUpdate]
    end
    object dstFuncionariosFUN_FOTO: TBlobField
      FieldName = 'FUN_FOTO'
      ProviderFlags = [pfInUpdate]
    end
    object dstFuncionariosFUN_DTINICIO_FERIAS: TDateField
      Alignment = taRightJustify
      FieldName = 'FUN_DTINICIO_FERIAS'
      ProviderFlags = [pfInUpdate]
      EditMask = '99/99/9999;1;_'
    end
    object dstFuncionariosFUN_DTFIM_FERIAS: TDateField
      Alignment = taRightJustify
      FieldName = 'FUN_DTFIM_FERIAS'
      ProviderFlags = [pfInUpdate]
      EditMask = '99/99/9999;1;_'
    end
    object dstFuncionariosFUN_DTDIREITO_FERIAS: TDateField
      Alignment = taRightJustify
      FieldName = 'FUN_DTDIREITO_FERIAS'
      ProviderFlags = [pfInUpdate]
      EditMask = '99/99/9999;1;_'
    end
    object dstFuncionariosFUN_ESCOLARIDADE: TIntegerField
      FieldName = 'FUN_ESCOLARIDADE'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '00'
    end
    object dstFuncionariosFUN_CTPS: TStringField
      FieldName = 'FUN_CTPS'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 10
    end
    object dstFuncionariosFUN_HORAS_TRABALHO: TBCDField
      FieldName = 'FUN_HORAS_TRABALHO'
      ProviderFlags = [pfInUpdate]
      Precision = 9
      Size = 2
    end
  end
  object dspFuncionarios: TDataSetProvider
    DataSet = dstFuncionarios
    Options = [poAllowCommandText]
    OnGetTableName = dspFuncionariosGetTableName
    Left = 120
    Top = 72
  end
  object cdsFuncionarios: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'pMATRICULA'
        ParamType = ptInput
        Value = 0
      end>
    ProviderName = 'dspFuncionarios'
    Left = 208
    Top = 72
    object cdsFuncionariosFUN_MATRICULA: TIntegerField
      FieldName = 'FUN_MATRICULA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      DisplayFormat = '00000'
    end
    object cdsFuncionariosFUN_NOME: TStringField
      FieldName = 'FUN_NOME'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object cdsFuncionariosFUN_APELIDO: TStringField
      FieldName = 'FUN_APELIDO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsFuncionariosFUN_ENDERECO: TStringField
      FieldName = 'FUN_ENDERECO'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object cdsFuncionariosFUN_NUMERO: TIntegerField
      FieldName = 'FUN_NUMERO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsFuncionariosFUN_COMPLEMENTO: TStringField
      FieldName = 'FUN_COMPLEMENTO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object cdsFuncionariosFUN_CEP: TStringField
      FieldName = 'FUN_CEP'
      ProviderFlags = [pfInUpdate]
      EditMask = '99999-999;0;_'
      Size = 8
    end
    object cdsFuncionariosFUN_REFERENCIA: TStringField
      FieldName = 'FUN_REFERENCIA'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object cdsFuncionariosFUN_CIDADE: TIntegerField
      FieldName = 'FUN_CIDADE'
      ProviderFlags = [pfInUpdate]
    end
    object cdsFuncionariosFUN_FONERES: TStringField
      FieldName = 'FUN_FONERES'
      ProviderFlags = [pfInUpdate]
      EditMask = '(99)9999-9999;0;_'
      FixedChar = True
      Size = 10
    end
    object cdsFuncionariosFUN_FONECEL: TStringField
      FieldName = 'FUN_FONECEL'
      ProviderFlags = [pfInUpdate]
      EditMask = '(99)9999-9999;0;_'
      FixedChar = True
      Size = 10
    end
    object cdsFuncionariosFUN_NOMEMAE: TStringField
      FieldName = 'FUN_NOMEMAE'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object cdsFuncionariosFUN_NOMEPAI: TStringField
      FieldName = 'FUN_NOMEPAI'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object cdsFuncionariosFUN_CPF: TStringField
      FieldName = 'FUN_CPF'
      ProviderFlags = [pfInUpdate]
      EditMask = '999.999.999-99;0;_'
      FixedChar = True
      Size = 11
    end
    object cdsFuncionariosFUN_BAIRRO: TIntegerField
      FieldName = 'FUN_BAIRRO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsFuncionariosFUN_IDENTIDADE: TStringField
      FieldName = 'FUN_IDENTIDADE'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 14
    end
    object cdsFuncionariosFUN_EMISSORIDENT: TStringField
      FieldName = 'FUN_EMISSORIDENT'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object cdsFuncionariosFUN_UFIDEN: TStringField
      FieldName = 'FUN_UFIDEN'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object cdsFuncionariosFUN_DATANASC: TDateField
      FieldName = 'FUN_DATANASC'
      ProviderFlags = [pfInUpdate]
      EditMask = '99/99/9999;1;_'
    end
    object cdsFuncionariosFUN_PISPASEP: TStringField
      FieldName = 'FUN_PISPASEP'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 11
    end
    object cdsFuncionariosFUN_EMPRESA: TIntegerField
      FieldName = 'FUN_EMPRESA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsFuncionariosFUN_CTPSSERIE: TIntegerField
      FieldName = 'FUN_CTPSSERIE'
      ProviderFlags = [pfInUpdate]
    end
    object cdsFuncionariosFUN_ADMISSAO: TDateField
      FieldName = 'FUN_ADMISSAO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsFuncionariosFUN_RECISAO: TDateField
      FieldName = 'FUN_RECISAO'
      ProviderFlags = [pfInUpdate]
      EditMask = '99/99/9999;1;_'
    end
    object cdsFuncionariosFUN_CATEGORIA: TIntegerField
      FieldName = 'FUN_CATEGORIA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsFuncionariosFUN_TITULO: TStringField
      FieldName = 'FUN_TITULO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 12
    end
    object cdsFuncionariosFUN_TITULOSECAO: TStringField
      FieldName = 'FUN_TITULOSECAO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 3
    end
    object cdsFuncionariosFUN_TITULOZONA: TStringField
      FieldName = 'FUN_TITULOZONA'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 3
    end
    object cdsFuncionariosFUN_VALETRANS: TStringField
      FieldName = 'FUN_VALETRANS'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsFuncionariosFUN_SALARIO: TFMTBCDField
      FieldName = 'FUN_SALARIO'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,##0.#0'
      EditFormat = '#,##0.#0'
      Precision = 15
      Size = 2
    end
    object cdsFuncionariosFUN_DATACADASTRO: TDateField
      FieldName = 'FUN_DATACADASTRO'
      ProviderFlags = [pfInUpdate]
      EditMask = '99/99/9999;1;_'
    end
    object cdsFuncionariosFUN_NMCIDADE: TStringField
      FieldKind = fkLookup
      FieldName = 'FUN_NMCIDADE'
      LookupDataSet = cdsCidades
      LookupKeyFields = 'CID_CODIGO'
      LookupResultField = 'CID_NOME'
      KeyFields = 'FUN_CIDADE'
      Size = 50
      Lookup = True
    end
    object cdsFuncionariosCAT_DESCRICAO: TStringField
      FieldKind = fkLookup
      FieldName = 'CAT_DESCRICAO'
      LookupDataSet = cdsCategoria
      LookupKeyFields = 'CAT_CODIGO'
      LookupResultField = 'CAT_DESCRICAO'
      KeyFields = 'FUN_CATEGORIA'
      Lookup = True
    end
    object cdsFuncionariosFUN_NMBAIRRO: TStringField
      FieldKind = fkLookup
      FieldName = 'FUN_NMBAIRRO'
      LookupDataSet = dmFolha2.cdsBairros
      LookupKeyFields = 'BAI_CODIGO'
      LookupResultField = 'BAI_NOME'
      KeyFields = 'FUN_BAIRRO'
      Lookup = True
    end
    object cdsFuncionariosFUN_NMEMPR: TStringField
      FieldKind = fkLookup
      FieldName = 'FUN_NMEMPR'
      LookupDataSet = dmFolha2.cdsEmpresas
      LookupKeyFields = 'EMP_CODIGO'
      LookupResultField = 'EMP_FANTASIA'
      KeyFields = 'FUN_EMPRESA'
      Size = 50
      Lookup = True
    end
    object cdsFuncionariosFUN_CBO: TIntegerField
      FieldName = 'FUN_CBO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsFuncionariosFUN_QTFILHOS: TIntegerField
      FieldName = 'FUN_QTFILHOS'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '00'
    end
    object cdsFuncionariosFUN_FOTO: TBlobField
      FieldName = 'FUN_FOTO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsFuncionariosFUN_DTINICIO_FERIAS: TDateField
      Alignment = taRightJustify
      FieldName = 'FUN_DTINICIO_FERIAS'
      ProviderFlags = [pfInUpdate]
      EditMask = '99/99/9999;1;_'
    end
    object cdsFuncionariosFUN_DTFIM_FERIAS: TDateField
      Alignment = taRightJustify
      FieldName = 'FUN_DTFIM_FERIAS'
      ProviderFlags = [pfInUpdate]
      EditMask = '99/99/9999;1;_'
    end
    object cdsFuncionariosFUN_DTDIREITO_FERIAS: TDateField
      Alignment = taRightJustify
      FieldName = 'FUN_DTDIREITO_FERIAS'
      ProviderFlags = [pfInUpdate]
      EditMask = '99/99/9999;1;_'
    end
    object cdsFuncionariosFUN_ESCOLARIDADE: TIntegerField
      FieldName = 'FUN_ESCOLARIDADE'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '00'
    end
    object cdsFuncionariosFUN_NMESCOLARIDADE: TStringField
      FieldKind = fkLookup
      FieldName = 'FUN_NMESCOLARIDADE'
      LookupDataSet = dmFolha2.cdsEscolaridade
      LookupKeyFields = 'ESC_CODIGO'
      LookupResultField = 'ESC_DESCRICAO'
      KeyFields = 'FUN_ESCOLARIDADE'
      Lookup = True
    end
    object cdsFuncionariosFUN_CTPS: TStringField
      FieldName = 'FUN_CTPS'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 10
    end
    object cdsFuncionariosFUN_HORAS_TRABALHO: TBCDField
      FieldName = 'FUN_HORAS_TRABALHO'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###'
      EditFormat = '###'
      Precision = 9
      Size = 2
    end
  end
  object dstFilhos: TSQLDataSet
    CommandText = 
      'Select * from FILHOS_FUNCIONARIOS Where (FUN_MATRICULA = :pMATRI' +
      'CULA)'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'pMATRICULA'
        ParamType = ptInput
        Value = 0
      end>
    SQLConnection = sqlCon_Folha
    Left = 40
    Top = 128
    object dstFilhosFUN_MATRICULA: TIntegerField
      FieldName = 'FUN_MATRICULA'
    end
    object dstFilhosFIL_NOME: TStringField
      FieldName = 'FIL_NOME'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object dstFilhosFIL_DATANASC: TDateField
      FieldName = 'FIL_DATANASC'
      ProviderFlags = [pfInUpdate]
    end
  end
  object dspFilhos: TDataSetProvider
    DataSet = dstFilhos
    Options = [poAllowCommandText]
    OnGetTableName = dspFilhosGetTableName
    Left = 104
    Top = 128
  end
  object cdsFilhos: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'pMATRICULA'
        ParamType = ptInput
        Value = 0
      end>
    ProviderName = 'dspFilhos'
    AfterInsert = cdsFilhosAfterInsert
    AfterPost = cdsFilhosAfterPost
    Left = 168
    Top = 128
    object cdsFilhosFUN_MATRICULA: TIntegerField
      FieldName = 'FUN_MATRICULA'
    end
    object cdsFilhosFIL_NOME: TStringField
      FieldName = 'FIL_NOME'
      Size = 50
    end
    object cdsFilhosFIL_DATANASC: TDateField
      Alignment = taRightJustify
      FieldName = 'FIL_DATANASC'
      EditMask = '99/99/9999;1;_'
    end
  end
  object dstCidades: TSQLDataSet
    CommandText = 'Select * from CIDADES order by CID_NOME'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = sqlCon_Folha
    Left = 40
    Top = 184
    object dstCidadesCID_CODIGO: TIntegerField
      FieldName = 'CID_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object dstCidadesCID_NOME: TStringField
      FieldName = 'CID_NOME'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 40
    end
    object dstCidadesCID_UF: TStringField
      FieldName = 'CID_UF'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      FixedChar = True
      Size = 2
    end
  end
  object dspCidades: TDataSetProvider
    DataSet = dstCidades
    Options = [poAllowCommandText]
    OnGetTableName = dspCidadesGetTableName
    Left = 104
    Top = 184
  end
  object cdsCidades: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspCidades'
    Left = 168
    Top = 184
    object cdsCidadesCID_CODIGO: TIntegerField
      FieldName = 'CID_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      DisplayFormat = '000'
    end
    object cdsCidadesCID_NOME: TStringField
      FieldName = 'CID_NOME'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 40
    end
    object cdsCidadesCID_UF: TStringField
      FieldName = 'CID_UF'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      FixedChar = True
      Size = 2
    end
  end
  object dstConfig: TSQLDataSet
    CommandText = 'select * from CONFIG'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = sqlCon_Folha
    Left = 128
    Top = 24
    object dstConfigCFG_FUNCIONARIO: TIntegerField
      FieldName = 'CFG_FUNCIONARIO'
    end
    object dstConfigCFG_CIDADE: TIntegerField
      FieldName = 'CFG_CIDADE'
    end
    object dstConfigCFG_CATEGORIA: TIntegerField
      FieldName = 'CFG_CATEGORIA'
    end
    object dstConfigCFG_EMPRESA: TIntegerField
      FieldName = 'CFG_EMPRESA'
    end
    object dstConfigCFG_BAIRRO: TIntegerField
      FieldName = 'CFG_BAIRRO'
    end
    object dstConfigCFG_DESCBENE: TIntegerField
      FieldName = 'CFG_DESCBENE'
    end
    object dstConfigCFG_MOVIMENTO: TIntegerField
      FieldName = 'CFG_MOVIMENTO'
    end
    object dstConfigCFG_FOLHA: TStringField
      FieldName = 'CFG_FOLHA'
      FixedChar = True
      Size = 6
    end
    object dstConfigCFG_PREVIDENCIA: TIntegerField
      FieldName = 'CFG_PREVIDENCIA'
    end
    object dstConfigCFG_IMPOSTO_RENDA: TIntegerField
      FieldName = 'CFG_IMPOSTO_RENDA'
    end
    object dstConfigCFG_SALARIO_FAMILIA: TIntegerField
      FieldName = 'CFG_SALARIO_FAMILIA'
    end
    object dstConfigCFG_CABECALHO: TMemoField
      FieldName = 'CFG_CABECALHO'
      BlobType = ftMemo
    end
    object dstConfigCFG_PEHORAEXTRAS: TBCDField
      FieldName = 'CFG_PEHORAEXTRAS'
      Precision = 9
      Size = 2
    end
    object dstConfigCFG_DESCONTO_DEPENDENTE: TBCDField
      FieldName = 'CFG_DESCONTO_DEPENDENTE'
      Precision = 9
      Size = 2
    end
    object dstConfigCFG_ESCOLARIDADE: TIntegerField
      FieldName = 'CFG_ESCOLARIDADE'
    end
    object dstConfigCFG_DTVALIDACAO: TDateField
      FieldName = 'CFG_DTVALIDACAO'
    end
    object dstConfigCFG_HOVALIDACAO: TStringField
      FieldName = 'CFG_HOVALIDACAO'
      FixedChar = True
      Size = 8
    end
    object dstConfigCFG_USUARIOS: TIntegerField
      FieldName = 'CFG_USUARIOS'
    end
  end
  object dspConfig: TDataSetProvider
    DataSet = dstConfig
    Options = [poAllowCommandText]
    OnGetTableName = dspConfigGetTableName
    Left = 192
    Top = 24
  end
  object cdsConfig: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspConfig'
    Left = 256
    Top = 24
    object cdsConfigCFG_FUNCIONARIO: TIntegerField
      FieldName = 'CFG_FUNCIONARIO'
    end
    object cdsConfigCFG_CIDADE: TIntegerField
      FieldName = 'CFG_CIDADE'
    end
    object cdsConfigCFG_CATEGORIA: TIntegerField
      FieldName = 'CFG_CATEGORIA'
    end
    object cdsConfigCFG_EMPRESA: TIntegerField
      FieldName = 'CFG_EMPRESA'
    end
    object cdsConfigCFG_BAIRRO: TIntegerField
      FieldName = 'CFG_BAIRRO'
    end
    object cdsConfigCFG_DESCBENE: TIntegerField
      FieldName = 'CFG_DESCBENE'
    end
    object cdsConfigCFG_MOVIMENTO: TIntegerField
      FieldName = 'CFG_MOVIMENTO'
    end
    object cdsConfigCFG_FOLHA: TStringField
      FieldName = 'CFG_FOLHA'
      FixedChar = True
      Size = 6
    end
    object cdsConfigCFG_PREVIDENCIA: TIntegerField
      FieldName = 'CFG_PREVIDENCIA'
    end
    object cdsConfigCFG_IMPOSTO_RENDA: TIntegerField
      FieldName = 'CFG_IMPOSTO_RENDA'
    end
    object cdsConfigCFG_SALARIO_FAMILIA: TIntegerField
      FieldName = 'CFG_SALARIO_FAMILIA'
    end
    object cdsConfigCFG_CABECALHO: TMemoField
      FieldName = 'CFG_CABECALHO'
      BlobType = ftMemo
    end
    object cdsConfigCFG_PEHORAEXTRAS: TBCDField
      FieldName = 'CFG_PEHORAEXTRAS'
      Precision = 9
      Size = 2
    end
    object cdsConfigCFG_DESCONTO_DEPENDENTE: TBCDField
      FieldName = 'CFG_DESCONTO_DEPENDENTE'
      Precision = 9
      Size = 2
    end
    object cdsConfigCFG_ESCOLARIDADE: TIntegerField
      FieldName = 'CFG_ESCOLARIDADE'
    end
    object cdsConfigCFG_DTVALIDACAO: TDateField
      FieldName = 'CFG_DTVALIDACAO'
    end
    object cdsConfigCFG_HOVALIDACAO: TStringField
      FieldName = 'CFG_HOVALIDACAO'
      FixedChar = True
      Size = 8
    end
    object cdsConfigCFG_USUARIOS: TIntegerField
      FieldName = 'CFG_USUARIOS'
    end
  end
  object dsConfig: TDataSource
    DataSet = cdsConfig
    Left = 312
    Top = 24
  end
  object dstCategoria: TSQLDataSet
    CommandText = 'select * from CATEGORIA order by CAT_DESCRICAO'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = sqlCon_Folha
    Left = 40
    Top = 232
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
    OnGetTableName = dspCategoriaGetTableName
    Left = 104
    Top = 240
  end
  object cdsCategoria: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspCategoria'
    Left = 176
    Top = 232
    object cdsCategoriaCAT_CODIGO: TIntegerField
      FieldName = 'CAT_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsCategoriaCAT_DESCRICAO: TStringField
      FieldName = 'CAT_DESCRICAO'
      ProviderFlags = [pfInUpdate]
    end
  end
  object dstEmpresas: TSQLDataSet
    CommandText = 'select * from EMPRESAS Where (EMP_CODIGO = :pCODIGO)'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'pCODIGO'
        ParamType = ptInput
        Value = 0
      end>
    SQLConnection = sqlCon_Folha
    Left = 40
    Top = 296
    object dstEmpresasEMP_CODIGO: TIntegerField
      FieldName = 'EMP_CODIGO'
      Required = True
    end
    object dstEmpresasEMP_CNPJ: TStringField
      FieldName = 'EMP_CNPJ'
      Required = True
      Size = 14
    end
    object dstEmpresasEMP_FANTASIA: TStringField
      FieldName = 'EMP_FANTASIA'
      Size = 50
    end
    object dstEmpresasEMP_RAZAO: TStringField
      FieldName = 'EMP_RAZAO'
      Size = 50
    end
    object dstEmpresasEMP_ENDERECO: TStringField
      FieldName = 'EMP_ENDERECO'
      Size = 50
    end
    object dstEmpresasEMP_NUMERO: TIntegerField
      FieldName = 'EMP_NUMERO'
    end
    object dstEmpresasBAI_CODIGO: TIntegerField
      FieldName = 'BAI_CODIGO'
    end
    object dstEmpresasCID_CODIGO: TIntegerField
      FieldName = 'CID_CODIGO'
    end
    object dstEmpresasEMP_FOLHA: TStringField
      FieldName = 'EMP_FOLHA'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 6
    end
  end
  object dspEmpresas: TDataSetProvider
    DataSet = dstEmpresas
    Options = [poAllowCommandText]
    OnGetTableName = dspEmpresasGetTableName
    Left = 112
    Top = 296
  end
  object cdsEmpresas: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'pCODIGO'
        ParamType = ptInput
        Value = 0
      end>
    ProviderName = 'dspEmpresas'
    Left = 184
    Top = 288
    object cdsEmpresasEMP_CODIGO: TIntegerField
      FieldName = 'EMP_CODIGO'
      Required = True
      DisplayFormat = '000'
    end
    object cdsEmpresasEMP_CNPJ: TStringField
      FieldName = 'EMP_CNPJ'
      Required = True
      EditMask = '99.999.999/9999-99;0;_'
      Size = 14
    end
    object cdsEmpresasEMP_FANTASIA: TStringField
      FieldName = 'EMP_FANTASIA'
      Size = 50
    end
    object cdsEmpresasEMP_RAZAO: TStringField
      FieldName = 'EMP_RAZAO'
      Size = 50
    end
    object cdsEmpresasEMP_ENDERECO: TStringField
      FieldName = 'EMP_ENDERECO'
      Size = 50
    end
    object cdsEmpresasEMP_NUMERO: TIntegerField
      FieldName = 'EMP_NUMERO'
    end
    object cdsEmpresasBAI_CODIGO: TIntegerField
      FieldName = 'BAI_CODIGO'
    end
    object cdsEmpresasCID_CODIGO: TIntegerField
      FieldName = 'CID_CODIGO'
    end
    object cdsEmpresasEMP_NMCIDA: TStringField
      FieldKind = fkLookup
      FieldName = 'EMP_NMCIDA'
      LookupDataSet = cdsCidades
      LookupKeyFields = 'CID_CODIGO'
      LookupResultField = 'CID_NOME'
      KeyFields = 'CID_CODIGO'
      Size = 40
      Lookup = True
    end
    object cdsEmpresasEMP_NMBAIRRO: TStringField
      FieldKind = fkLookup
      FieldName = 'EMP_NMBAIRRO'
      LookupDataSet = dmFolha2.cdsBairros
      LookupKeyFields = 'BAI_CODIGO'
      LookupResultField = 'BAI_NOME'
      KeyFields = 'BAI_CODIGO'
      Lookup = True
    end
    object cdsEmpresasEMP_FOLHA: TStringField
      FieldName = 'EMP_FOLHA'
      EditMask = '99/9999;0;_'
      FixedChar = True
      Size = 6
    end
  end
  object dstBairros: TSQLDataSet
    CommandText = 'select * from BAIRROS Where (BAI_CODIGO = :pCODIGO)'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'pCODIGO'
        ParamType = ptInput
        Value = 0
      end>
    SQLConnection = sqlCon_Folha
    Left = 40
    Top = 344
    object dstBairrosBAI_CODIGO: TIntegerField
      FieldName = 'BAI_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object dstBairrosBAI_NOME: TStringField
      FieldName = 'BAI_NOME'
      ProviderFlags = [pfInUpdate]
    end
    object dstBairrosCID_CODIGO: TIntegerField
      FieldName = 'CID_CODIGO'
      ProviderFlags = [pfInUpdate]
    end
  end
  object dspBairros: TDataSetProvider
    DataSet = dstBairros
    Options = [poAllowCommandText]
    Left = 112
    Top = 344
  end
  object cdsBairros: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'pCODIGO'
        ParamType = ptInput
        Value = 0
      end>
    ProviderName = 'dspBairros'
    Left = 184
    Top = 344
    object cdsBairrosBAI_CODIGO: TIntegerField
      FieldName = 'BAI_CODIGO'
      Required = True
      DisplayFormat = '000'
    end
    object cdsBairrosBAI_NOME: TStringField
      FieldName = 'BAI_NOME'
    end
    object cdsBairrosCID_CODIGO: TIntegerField
      FieldName = 'CID_CODIGO'
    end
    object cdsBairrosBAI_NMCIDA: TStringField
      FieldKind = fkLookup
      FieldName = 'BAI_NMCIDA'
      LookupDataSet = cdsCidades
      LookupKeyFields = 'CID_CODIGO'
      LookupResultField = 'CID_NOME'
      KeyFields = 'CID_CODIGO'
      Size = 40
      Lookup = True
    end
  end
  object dstDescontos_Beneficios: TSQLDataSet
    CommandText = 
      'select * from DESCONTOS_BENEFICIO Where (DCB_CODIGO = '#13#10':pCODIGO' +
      ')'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'pCODIGO'
        ParamType = ptInput
        Value = 0
      end>
    SQLConnection = sqlCon_Folha
    Left = 264
    Top = 128
    object dstDescontos_BeneficiosDCB_CODIGO: TIntegerField
      FieldName = 'DCB_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object dstDescontos_BeneficiosDCB_DESCRICAO: TStringField
      FieldName = 'DCB_DESCRICAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object dstDescontos_BeneficiosDCB_TIPO: TStringField
      FieldName = 'DCB_TIPO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object dstDescontos_BeneficiosDCB_VALOR: TFMTBCDField
      FieldName = 'DCB_VALOR'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object dstDescontos_BeneficiosDCB_PERCENTUAL: TBCDField
      FieldName = 'DCB_PERCENTUAL'
      ProviderFlags = [pfInUpdate]
      Precision = 9
      Size = 2
    end
  end
  object dspDescBene: TDataSetProvider
    DataSet = dstDescontos_Beneficios
    Options = [poAllowCommandText]
    OnGetTableName = dspDescBeneGetTableName
    Left = 328
    Top = 112
  end
  object cdsDescBene: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'pCODIGO'
        ParamType = ptInput
        Value = 0
      end>
    ProviderName = 'dspDescBene'
    OnCalcFields = cdsDescBeneCalcFields
    Left = 384
    Top = 136
    object cdsDescBeneDCB_CODIGO: TIntegerField
      FieldName = 'DCB_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      DisplayFormat = '000'
    end
    object cdsDescBeneDCB_DESCRICAO: TStringField
      FieldName = 'DCB_DESCRICAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsDescBeneDCB_TIPO: TStringField
      FieldName = 'DCB_TIPO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsDescBeneDCB_VALOR: TFMTBCDField
      FieldName = 'DCB_VALOR'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,##0.#0'
      EditFormat = '#,##0.#0'
      Precision = 15
      Size = 2
    end
    object cdsDescBeneDCB_DESTIPO: TStringField
      FieldKind = fkCalculated
      FieldName = 'DCB_DESTIPO'
      Size = 10
      Calculated = True
    end
    object cdsDescBeneDCB_PERCENTUAL: TBCDField
      FieldName = 'DCB_PERCENTUAL'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,##0.#0'
      EditFormat = '###,##0.#0'
      Precision = 9
      Size = 2
    end
  end
  object spIncDescBene: TSQLStoredProc
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'PCODIGO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'PDESCRICAO'
        ParamType = ptInput
      end
      item
        DataType = ftFixedChar
        Name = 'PTIPO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PVALOR'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PPERCENTUAL'
        ParamType = ptInput
      end>
    SQLConnection = sqlCon_Folha
    StoredProcName = 'PROC_INC_DADOS_DESC_BENE'
    Left = 408
    Top = 32
  end
  object dstMovimento: TSQLDataSet
    CommandText = 'select * from MOVIMENTO Where (MOV_SEQUENCIA = :pSEQUENCIA)'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'pSEQUENCIA'
        ParamType = ptInput
        Value = 0
      end>
    SQLConnection = sqlCon_Folha
    Left = 248
    Top = 200
    object dstMovimentoMOV_SEQUENCIA: TIntegerField
      FieldName = 'MOV_SEQUENCIA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      DisplayFormat = '0000000'
    end
    object dstMovimentoMOV_DATA: TDateField
      FieldName = 'MOV_DATA'
      ProviderFlags = [pfInUpdate]
      EditMask = '99/99/9999;1;_'
    end
    object dstMovimentoMOV_HORA: TStringField
      Alignment = taRightJustify
      FieldName = 'MOV_HORA'
      ProviderFlags = [pfInUpdate]
      EditMask = '99:99;1;_'
      FixedChar = True
      Size = 5
    end
    object dstMovimentoMOV_TIPO: TStringField
      FieldName = 'MOV_TIPO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object dstMovimentoMOV_VALOR: TFMTBCDField
      FieldName = 'MOV_VALOR'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,##0.#0'
      EditFormat = '#,##0.#0'
      Precision = 15
      Size = 2
    end
    object dstMovimentoMOV_TITULO: TStringField
      FieldName = 'MOV_TITULO'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object dstMovimentoMOV_DESCRICAO: TMemoField
      FieldName = 'MOV_DESCRICAO'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 1
    end
    object dstMovimentoMOV_MATRICULA: TIntegerField
      FieldName = 'MOV_MATRICULA'
      ProviderFlags = [pfInUpdate]
    end
    object dstMovimentoMOV_AUTORIZADOR: TStringField
      FieldName = 'MOV_AUTORIZADOR'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object dstMovimentoMOV_FOLHA: TStringField
      FieldName = 'MOV_FOLHA'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 6
    end
  end
  object dspMovimento: TDataSetProvider
    DataSet = dstMovimento
    Options = [poAllowCommandText]
    OnGetTableName = dspMovimentoGetTableName
    Left = 328
    Top = 200
  end
  object cdsMovimento: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'pSEQUENCIA'
        ParamType = ptInput
      end>
    ProviderName = 'dspMovimento'
    Left = 408
    Top = 200
    object cdsMovimentoMOV_SEQUENCIA: TIntegerField
      FieldName = 'MOV_SEQUENCIA'
      Required = True
    end
    object cdsMovimentoMOV_DATA: TDateField
      FieldName = 'MOV_DATA'
    end
    object cdsMovimentoMOV_HORA: TStringField
      FieldName = 'MOV_HORA'
      FixedChar = True
      Size = 5
    end
    object cdsMovimentoMOV_TIPO: TStringField
      FieldName = 'MOV_TIPO'
      FixedChar = True
      Size = 2
    end
    object cdsMovimentoMOV_VALOR: TFMTBCDField
      FieldName = 'MOV_VALOR'
      DisplayFormat = '#,##0.#0'
      EditFormat = '#,##0.#0'
      Precision = 15
      Size = 2
    end
    object cdsMovimentoMOV_TITULO: TStringField
      FieldName = 'MOV_TITULO'
      Size = 60
    end
    object cdsMovimentoMOV_DESCRICAO: TMemoField
      FieldName = 'MOV_DESCRICAO'
      BlobType = ftMemo
      Size = 1
    end
    object cdsMovimentoMOV_MATRICULA: TIntegerField
      FieldName = 'MOV_MATRICULA'
      DisplayFormat = '0000000'
    end
    object cdsMovimentoMOV_AUTORIZADOR: TStringField
      FieldName = 'MOV_AUTORIZADOR'
      Size = 50
    end
    object cdsMovimentoMOV_FOLHA: TStringField
      FieldName = 'MOV_FOLHA'
      FixedChar = True
      Size = 6
    end
  end
  object dstCBO: TSQLDataSet
    CommandText = 'select * from CBO Where (CBO_CODIGO = :pCODIGO)'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'pCODIGO'
        ParamType = ptInput
        Value = 0
      end>
    SQLConnection = sqlCon_Folha
    Left = 248
    Top = 256
    object dstCBOCBO_CODIGO: TIntegerField
      FieldName = 'CBO_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object dstCBOCBO_DESCRICAO: TStringField
      FieldName = 'CBO_DESCRICAO'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
  end
  object dspCBO: TDataSetProvider
    DataSet = dstCBO
    Options = [poAllowCommandText]
    OnGetTableName = dspCBOGetTableName
    Left = 312
    Top = 256
  end
  object cdsCBO: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'pCODIGO'
        ParamType = ptInput
        Value = 0
      end>
    ProviderName = 'dspCBO'
    Left = 368
    Top = 256
    object cdsCBOCBO_CODIGO: TIntegerField
      FieldName = 'CBO_CODIGO'
      Required = True
      DisplayFormat = '0000'
    end
    object cdsCBOCBO_DESCRICAO: TStringField
      FieldName = 'CBO_DESCRICAO'
      Size = 80
    end
  end
  object dstLancamentoBeneficios: TSQLDataSet
    CommandText = 'select * from LANCAMENTOS'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = sqlCon_Folha
    Left = 264
    Top = 328
    object dstLancamentoBeneficiosFUN_MATRICULA: TIntegerField
      FieldName = 'FUN_MATRICULA'
    end
    object dstLancamentoBeneficiosDCB_CODIGO: TIntegerField
      FieldName = 'DCB_CODIGO'
    end
    object dstLancamentoBeneficiosLAN_QUANTIDADE: TIntegerField
      FieldName = 'LAN_QUANTIDADE'
      ProviderFlags = [pfInUpdate]
    end
    object dstLancamentoBeneficiosLAN_VALOR_BENEFICIO: TFMTBCDField
      FieldName = 'LAN_VALOR_BENEFICIO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object dstLancamentoBeneficiosLAN_FLFIXO: TStringField
      FieldName = 'LAN_FLFIXO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object dstLancamentoBeneficiosLAN_DATA: TDateField
      FieldName = 'LAN_DATA'
      ProviderFlags = [pfInUpdate]
    end
    object dstLancamentoBeneficiosLAN_HORA: TStringField
      FieldName = 'LAN_HORA'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 5
    end
  end
  object dpsLancBeneficios: TDataSetProvider
    DataSet = dstLancamentoBeneficios
    Options = [poAllowCommandText]
    OnGetTableName = dpsLancBeneficiosGetTableName
    Left = 328
    Top = 312
  end
  object cdsLancBeneficios: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dpsLancBeneficios'
    Left = 392
    Top = 328
    object cdsLancBeneficiosFUN_MATRICULA: TIntegerField
      FieldName = 'FUN_MATRICULA'
      DisplayFormat = '0000000'
    end
    object cdsLancBeneficiosDCB_CODIGO: TIntegerField
      FieldName = 'DCB_CODIGO'
    end
    object cdsLancBeneficiosLAN_QUANTIDADE: TIntegerField
      FieldName = 'LAN_QUANTIDADE'
    end
    object cdsLancBeneficiosLAN_VALOR_BENEFICIO: TFMTBCDField
      FieldName = 'LAN_VALOR_BENEFICIO'
      DisplayFormat = '###,##0.#0'
      EditFormat = '###,##0.#0'
      Precision = 15
      Size = 2
    end
    object cdsLancBeneficiosLAN_FLFIXO: TStringField
      FieldName = 'LAN_FLFIXO'
      FixedChar = True
      Size = 1
    end
    object cdsLancBeneficiosLAN_DATA: TDateField
      FieldName = 'LAN_DATA'
    end
    object cdsLancBeneficiosLAN_HORA: TStringField
      FieldName = 'LAN_HORA'
      FixedChar = True
      Size = 5
    end
  end
  object qryConsulta: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = sqlCon_Folha
    Left = 392
    Top = 80
  end
  object spIncDadosFolha: TSQLStoredProc
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFixedChar
        Name = 'PCODIGO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'PMATRICULA'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'PBENEFICIO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PQTBENEFICIO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PVLBENEFICIO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PPEBENEFICIO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'PNMBENEFICIO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'PNMDESCRICAO'
        ParamType = ptInput
      end
      item
        DataType = ftFixedChar
        Name = 'PDESBEN'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'PDTGERACAO'
        ParamType = ptInput
      end
      item
        DataType = ftFixedChar
        Name = 'PHOGERACAO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'PUSUARIO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'PEMPRESA'
        ParamType = ptInput
      end>
    SQLConnection = sqlCon_Folha
    StoredProcName = 'SP_INC_REG_FOLHA'
    Left = 464
    Top = 136
  end
  object dstPrevidencia: TSQLDataSet
    CommandText = 'select PRE_CODIGO, PRE_FAIXA, PRE_PEDESCONTO from PREVIDENCIA'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = sqlCon_Folha
    Left = 488
    Top = 200
    object dstPrevidenciaPRE_CODIGO: TIntegerField
      FieldName = 'PRE_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object dstPrevidenciaPRE_FAIXA: TFMTBCDField
      FieldName = 'PRE_FAIXA'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object dstPrevidenciaPRE_PEDESCONTO: TBCDField
      FieldName = 'PRE_PEDESCONTO'
      ProviderFlags = [pfInUpdate]
      Precision = 9
    end
  end
  object dspPrevidencia: TDataSetProvider
    DataSet = dstPrevidencia
    Options = [poAllowCommandText]
    OnGetTableName = dspPrevidenciaGetTableName
    Left = 424
    Top = 264
  end
  object cdsPrevidencia: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPrevidencia'
    Left = 488
    Top = 264
    object cdsPrevidenciaPRE_CODIGO: TIntegerField
      FieldName = 'PRE_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      DisplayFormat = '000'
    end
    object cdsPrevidenciaPRE_FAIXA: TFMTBCDField
      FieldName = 'PRE_FAIXA'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,##0.#0'
      EditFormat = '###,##0.#0'
      Precision = 15
      Size = 2
    end
    object cdsPrevidenciaPRE_PEDESCONTO: TBCDField
      FieldName = 'PRE_PEDESCONTO'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '##0.#0'
      EditFormat = '##0.#0'
      Precision = 9
    end
  end
  object dstImpostoRenda: TSQLDataSet
    CommandText = 'select IMR_CODIGO, IMR_FAIXA, IMR_PEDESCONTO from IMPOSTO_RENDA'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = sqlCon_Folha
    Left = 320
    Top = 392
    object dstImpostoRendaIMR_CODIGO: TIntegerField
      FieldName = 'IMR_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object dstImpostoRendaIMR_FAIXA: TFMTBCDField
      FieldName = 'IMR_FAIXA'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object dstImpostoRendaIMR_PEDESCONTO: TBCDField
      FieldName = 'IMR_PEDESCONTO'
      ProviderFlags = [pfInUpdate]
      Precision = 9
    end
  end
  object dspImpostoRenda: TDataSetProvider
    DataSet = dstImpostoRenda
    Options = [poAllowCommandText]
    Left = 392
    Top = 376
  end
  object cdsImpostoRenda: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspImpostoRenda'
    Left = 456
    Top = 392
    object cdsImpostoRendaIMR_CODIGO: TIntegerField
      FieldName = 'IMR_CODIGO'
      Required = True
      DisplayFormat = '000'
    end
    object cdsImpostoRendaIMR_FAIXA: TFMTBCDField
      FieldName = 'IMR_FAIXA'
      DisplayFormat = '###,##0.#0'
      EditFormat = '###,##0.#0'
      Precision = 15
      Size = 2
    end
    object cdsImpostoRendaIMR_PEDESCONTO: TBCDField
      FieldName = 'IMR_PEDESCONTO'
      DisplayFormat = '##0.#0'
      EditFormat = '##0.#0'
      Precision = 9
    end
  end
  object dstSalarioFamilia: TSQLDataSet
    CommandText = 'select SFM_CODIGO, SFM_FAIXA, SFM_VALOR from SALARIO_FAMILIA'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = sqlCon_Folha
    Left = 48
    Top = 392
    object dstSalarioFamiliaSFM_CODIGO: TIntegerField
      FieldName = 'SFM_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object dstSalarioFamiliaSFM_FAIXA: TFMTBCDField
      FieldName = 'SFM_FAIXA'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object dstSalarioFamiliaSFM_VALOR: TFMTBCDField
      FieldName = 'SFM_VALOR'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
  end
  object dspSalarioFamilia: TDataSetProvider
    DataSet = dstSalarioFamilia
    Options = [poAllowCommandText]
    Left = 136
    Top = 400
  end
  object cdsSalarioFamilia: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspSalarioFamilia'
    Left = 232
    Top = 392
    object cdsSalarioFamiliaSFM_CODIGO: TIntegerField
      FieldName = 'SFM_CODIGO'
      Required = True
      DisplayFormat = '000'
    end
    object cdsSalarioFamiliaSFM_FAIXA: TFMTBCDField
      FieldName = 'SFM_FAIXA'
      DisplayFormat = '###,##0.#0'
      EditFormat = '###,##0.#0'
      Precision = 15
      Size = 2
    end
    object cdsSalarioFamiliaSFM_VALOR: TFMTBCDField
      FieldName = 'SFM_VALOR'
      DisplayFormat = '###,##0.#0'
      EditFormat = '###,##0.#0'
      Precision = 15
      Size = 2
    end
  end
  object ppDBParametro: TppDBPipeline
    DataSource = dsConfig
    UserName = 'DBParametro'
    Left = 504
    Top = 24
  end
  object dstHorasExtras: TSQLDataSet
    CommandText = 'select * from HORAS_EXTRAS Where (FUN_MATRICULA = :pMATRICULA)'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'pMATRICULA'
        ParamType = ptInput
        Value = 0
      end>
    SQLConnection = sqlCon_Folha
    Left = 472
    Top = 80
    object dstHorasExtrasFUN_MATRICULA: TIntegerField
      FieldName = 'FUN_MATRICULA'
      Required = True
    end
    object dstHorasExtrasHOR_DTMOVI: TDateField
      FieldName = 'HOR_DTMOVI'
      ProviderFlags = [pfInUpdate]
    end
    object dstHorasExtrasHOR_HOINICIAL: TStringField
      FieldName = 'HOR_HOINICIAL'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 5
    end
    object dstHorasExtrasHOR_HOFINAL: TStringField
      FieldName = 'HOR_HOFINAL'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 5
    end
    object dstHorasExtrasHOR_JUSTIFICATIVA: TMemoField
      FieldName = 'HOR_JUSTIFICATIVA'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 1
    end
    object dstHorasExtrasHOR_FOLHA: TStringField
      FieldName = 'HOR_FOLHA'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 6
    end
  end
  object dstFaltas: TSQLDataSet
    CommandText = 'select * from FALTAS Where (FUN_MATRICULA = :pMATRICULA)'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'pMATRICULA'
        ParamType = ptInput
        Value = 0
      end>
    SQLConnection = sqlCon_Folha
    Left = 472
    Top = 320
    object dstFaltasFUN_MATRICULA: TIntegerField
      FieldName = 'FUN_MATRICULA'
      Required = True
    end
    object dstFaltasFAL_DTMOVI: TDateField
      FieldName = 'FAL_DTMOVI'
      ProviderFlags = [pfInUpdate]
    end
    object dstFaltasFAL_JUSTIFICATIVA: TMemoField
      FieldName = 'FAL_JUSTIFICATIVA'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 1
    end
    object dstFaltasFAL_FOLHA: TStringField
      FieldName = 'FAL_FOLHA'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 6
    end
  end
  object dspHorasExtras: TDataSetProvider
    DataSet = dstHorasExtras
    Options = [poAllowCommandText]
    OnGetTableName = dspHorasExtrasGetTableName
    Left = 552
    Top = 80
  end
  object dspFaltas: TDataSetProvider
    DataSet = dstFaltas
    Options = [poAllowCommandText]
    OnGetTableName = dspFaltasGetTableName
    Left = 528
    Top = 320
  end
  object cdsHorasExtras: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'pMATRICULA'
        ParamType = ptInput
        Value = 0
      end>
    ProviderName = 'dspHorasExtras'
    OnCalcFields = cdsHorasExtrasCalcFields
    Left = 552
    Top = 136
    object cdsHorasExtrasFUN_MATRICULA: TIntegerField
      FieldName = 'FUN_MATRICULA'
      Required = True
      DisplayFormat = '0000000'
    end
    object cdsHorasExtrasHOR_DTMOVI: TDateField
      FieldName = 'HOR_DTMOVI'
    end
    object cdsHorasExtrasHOR_HOINICIAL: TStringField
      FieldName = 'HOR_HOINICIAL'
      EditMask = '99:99;1;_'
      FixedChar = True
      Size = 5
    end
    object cdsHorasExtrasHOR_HOFINAL: TStringField
      FieldName = 'HOR_HOFINAL'
      EditMask = '99:99;1;_'
      FixedChar = True
      Size = 5
    end
    object cdsHorasExtrasHOR_JUSTIFICATIVA: TMemoField
      FieldName = 'HOR_JUSTIFICATIVA'
      BlobType = ftMemo
      Size = 1
    end
    object cdsHorasExtrasHOR_QUAT_HORAS: TStringField
      FieldKind = fkCalculated
      FieldName = 'HOR_QUAT_HORAS'
      Size = 5
      Calculated = True
    end
    object cdsHorasExtrasHOR_FOLHA: TStringField
      FieldName = 'HOR_FOLHA'
      FixedChar = True
      Size = 6
    end
  end
  object cdsFaltas: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'pMATRICULA'
        ParamType = ptInput
        Value = 0
      end>
    ProviderName = 'dspFaltas'
    Left = 584
    Top = 320
    object cdsFaltasFUN_MATRICULA: TIntegerField
      FieldName = 'FUN_MATRICULA'
      Required = True
      DisplayFormat = '0000000'
    end
    object cdsFaltasFAL_DTMOVI: TDateField
      FieldName = 'FAL_DTMOVI'
    end
    object cdsFaltasFAL_JUSTIFICATIVA: TMemoField
      FieldName = 'FAL_JUSTIFICATIVA'
      BlobType = ftMemo
      Size = 1
    end
    object cdsFaltasFAL_FOLHA: TStringField
      FieldName = 'FAL_FOLHA'
      FixedChar = True
      Size = 6
    end
  end
  object spIncDadosFerias: TSQLStoredProc
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'PMATRICULA'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'PBENEFICIO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PQTBENEFICIO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PVLBENEFICIO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PPEBENEFICIO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'PNMBENEFICIO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'PNMDESCRICAO'
        ParamType = ptInput
      end
      item
        DataType = ftFixedChar
        Name = 'PDESBEN'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'PDTGERACAO'
        ParamType = ptInput
      end
      item
        DataType = ftFixedChar
        Name = 'PHOGERACAO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'PUSUARIO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'PEMPRESA'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'PAQUISICAO'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'PGOZO'
        ParamType = ptInput
      end>
    SQLConnection = sqlCon_Folha
    StoredProcName = 'SP_INC_REC_FERIAS'
    Left = 560
    Top = 184
  end
  object dstEscolaridade: TSQLDataSet
    CommandText = 'select * from ESCOLARIDADE Where (ESC_CODIGO = :pCODIGO)'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'pCODIGO'
        ParamType = ptInput
        Value = 0
      end>
    SQLConnection = sqlCon_Folha
    Left = 512
    Top = 351
    object dstEscolaridadeESC_CODIGO: TIntegerField
      FieldName = 'ESC_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object dstEscolaridadeESC_DESCRICAO: TStringField
      FieldName = 'ESC_DESCRICAO'
      ProviderFlags = [pfInUpdate]
    end
  end
  object dspEscolaridade: TDataSetProvider
    DataSet = dstEscolaridade
    Options = [poAllowCommandText]
    OnGetTableName = dspEscolaridadeGetTableName
    Left = 608
    Top = 368
  end
  object cdsEscolaridade: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'pCODIGO'
        ParamType = ptInput
        Value = 0
      end>
    ProviderName = 'dspEscolaridade'
    Left = 552
    Top = 408
    object cdsEscolaridadeESC_CODIGO: TIntegerField
      FieldName = 'ESC_CODIGO'
      Required = True
      DisplayFormat = '00'
    end
    object cdsEscolaridadeESC_DESCRICAO: TStringField
      FieldName = 'ESC_DESCRICAO'
    end
  end
  object dstHorarios: TSQLDataSet
    CommandText = 'select * from HORARIOS Where (HRA_FUNCIONARIO = '#13#10':pFUNCIONARIO)'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'pFUNCIONARIO'
        ParamType = ptInput
        Value = 0
      end>
    SQLConnection = sqlCon_Folha
    Left = 56
    Top = 448
    object dstHorariosHRA_DIASEMANA: TIntegerField
      FieldName = 'HRA_DIASEMANA'
      Required = True
    end
    object dstHorariosHRA_FUNCIONARIO: TIntegerField
      FieldName = 'HRA_FUNCIONARIO'
      Required = True
    end
    object dstHorariosHRA_ENTRADA: TStringField
      FieldName = 'HRA_ENTRADA'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 5
    end
    object dstHorariosHRA_SAIDA: TStringField
      FieldName = 'HRA_SAIDA'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 5
    end
  end
  object dspHorarios: TDataSetProvider
    DataSet = dstHorarios
    Options = [poAllowCommandText]
    OnGetTableName = dspHorariosGetTableName
    Left = 120
    Top = 456
  end
  object cdsHorarios: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'pFUNCIONARIO'
        ParamType = ptInput
        Value = 0
      end>
    ProviderName = 'dspHorarios'
    Left = 184
    Top = 448
    object cdsHorariosHRA_DIASEMANA: TIntegerField
      FieldName = 'HRA_DIASEMANA'
      Required = True
    end
    object cdsHorariosHRA_FUNCIONARIO: TIntegerField
      FieldName = 'HRA_FUNCIONARIO'
      Required = True
    end
    object cdsHorariosHRA_ENTRADA: TStringField
      Alignment = taRightJustify
      FieldName = 'HRA_ENTRADA'
      EditMask = '99:99;1;_'
      FixedChar = True
      Size = 5
    end
    object cdsHorariosHRA_SAIDA: TStringField
      Alignment = taRightJustify
      FieldName = 'HRA_SAIDA'
      EditMask = '99:99;1;_'
      FixedChar = True
      Size = 5
    end
    object cdsHorariosDIA_SEMANA: TStringField
      FieldKind = fkLookup
      FieldName = 'DIA_SEMANA'
      LookupDataSet = cdsDiasSemana
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'HRA_DIASEMANA'
      Size = 15
      Lookup = True
    end
  end
  object dstDiasSemana: TSQLDataSet
    CommandText = 'select CODIGO, DESCRICAO from DIAS_SEMANA'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = sqlCon_Folha
    Left = 256
    Top = 448
    object dstDiasSemanaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object dstDiasSemanaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
  end
  object dspDiasSemana: TDataSetProvider
    DataSet = dstDiasSemana
    Options = [poAllowCommandText]
    Left = 312
    Top = 448
  end
  object cdsDiasSemana: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspDiasSemana'
    Left = 368
    Top = 448
    object cdsDiasSemanaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object cdsDiasSemanaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 15
    end
  end
  object dstFeriados: TSQLDataSet
    CommandText = 'select * from FERIADOS Where (FER_MESDIA = :pMESDIA) '
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'pMESDIA'
        ParamType = ptInput
        Value = ''
      end>
    SQLConnection = sqlCon_Folha
    Left = 560
    Top = 240
    object dstFeriadosFER_MESDIA: TStringField
      FieldName = 'FER_MESDIA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      FixedChar = True
      Size = 4
    end
    object dstFeriadosDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      ProviderFlags = [pfInUpdate]
    end
  end
  object dspFeriados: TDataSetProvider
    DataSet = dstFeriados
    Options = [poAllowCommandText]
    OnGetTableName = dspFeriadosGetTableName
    Left = 624
    Top = 240
  end
  object cdsFeriados: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'pMESDIA'
        ParamType = ptInput
        Value = ''
      end>
    ProviderName = 'dspFeriados'
    Left = 624
    Top = 288
    object cdsFeriadosFER_MESDIA: TStringField
      Alignment = taRightJustify
      FieldName = 'FER_MESDIA'
      EditMask = '99/99;0;_'
      FixedChar = True
      Size = 4
    end
    object cdsFeriadosDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
    end
  end
  object dstPonto: TSQLDataSet
    CommandText = 
      'select * from PONTO where (PNT_FUNCIONARIO = :pFUNCIONARIO) and ' +
      '(PNT_DATAENTRADA = :pDATAENTRADA)'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'pFUNCIONARIO'
        ParamType = ptInput
        Value = 0
      end
      item
        DataType = ftDate
        Name = 'pDATAENTRADA'
        ParamType = ptInput
        Value = 0d
      end>
    SQLConnection = sqlCon_Folha
    Left = 632
    Top = 32
    object dstPontoPNT_FUNCIONARIO: TIntegerField
      FieldName = 'PNT_FUNCIONARIO'
      Required = True
    end
    object dstPontoPNT_DATAENTRADA: TDateField
      FieldName = 'PNT_DATAENTRADA'
      Required = True
    end
    object dstPontoPNT_DATASAIDA: TDateField
      FieldName = 'PNT_DATASAIDA'
    end
    object dstPontoPNT_FLPRESENCA: TStringField
      FieldName = 'PNT_FLPRESENCA'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object dstPontoPNT_HORAENTRADA: TStringField
      FieldName = 'PNT_HORAENTRADA'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 8
    end
    object dstPontoPNT_HORASAIDA: TStringField
      FieldName = 'PNT_HORASAIDA'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 8
    end
  end
  object dspPonto: TDataSetProvider
    DataSet = dstPonto
    Options = [poAllowCommandText]
    OnGetTableName = dspPontoGetTableName
    Left = 632
    Top = 88
  end
  object cdsPonto: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'pFUNCIONARIO'
        ParamType = ptInput
        Value = 0
      end
      item
        DataType = ftDate
        Name = 'pDATAENTRADA'
        ParamType = ptInput
        Value = 0d
      end>
    ProviderName = 'dspPonto'
    Left = 632
    Top = 144
    object cdsPontoPNT_FUNCIONARIO: TIntegerField
      FieldName = 'PNT_FUNCIONARIO'
      Required = True
    end
    object cdsPontoPNT_DATAENTRADA: TDateField
      FieldName = 'PNT_DATAENTRADA'
      Required = True
    end
    object cdsPontoPNT_DATASAIDA: TDateField
      FieldName = 'PNT_DATASAIDA'
    end
    object cdsPontoPNT_FLPRESENCA: TStringField
      FieldName = 'PNT_FLPRESENCA'
      FixedChar = True
      Size = 1
    end
    object cdsPontoPNT_HORAENTRADA: TStringField
      FieldName = 'PNT_HORAENTRADA'
      FixedChar = True
      Size = 8
    end
    object cdsPontoPNT_HORASAIDA: TStringField
      FieldName = 'PNT_HORASAIDA'
      FixedChar = True
      Size = 8
    end
  end
  object dstUsuarios: TSQLDataSet
    CommandText = 'select * from USUARIOS Where (SEN_CODIGO = :pCODIGO) '
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'pCODIGO'
        ParamType = ptInput
        Value = 0
      end>
    SQLConnection = sqlCon_Folha
    Left = 448
    Top = 448
    object dstUsuariosSEN_CODIGO: TIntegerField
      FieldName = 'SEN_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object dstUsuariosSEN_NOME: TStringField
      FieldName = 'SEN_NOME'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object dstUsuariosSEN_SNATUA: TStringField
      FieldName = 'SEN_SNATUA'
      ProviderFlags = [pfInUpdate]
      Size = 6
    end
    object dstUsuariosSEN_CARGO: TStringField
      FieldName = 'SEN_CARGO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object dstUsuariosSEN_TERMINAL: TStringField
      FieldName = 'SEN_TERMINAL'
      ProviderFlags = [pfInUpdate]
    end
    object dstUsuariosSEN_LOJA: TIntegerField
      FieldName = 'SEN_LOJA'
      ProviderFlags = [pfInUpdate]
    end
    object dstUsuariosSEN_DTATUAL: TDateField
      FieldName = 'SEN_DTATUAL'
      ProviderFlags = [pfInUpdate]
    end
  end
  object dspUsuarios: TDataSetProvider
    DataSet = dstUsuarios
    Options = [poAllowCommandText]
    OnGetTableName = dspUsuariosGetTableName
    Left = 504
    Top = 464
  end
  object cdsUsuarios: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'pCODIGO'
        ParamType = ptInput
        Value = 0
      end>
    ProviderName = 'dspUsuarios'
    Left = 568
    Top = 456
    object cdsUsuariosSEN_CODIGO: TIntegerField
      FieldName = 'SEN_CODIGO'
      Required = True
      DisplayFormat = '000'
    end
    object cdsUsuariosSEN_NOME: TStringField
      FieldName = 'SEN_NOME'
      Size = 40
    end
    object cdsUsuariosSEN_SNATUA: TStringField
      FieldName = 'SEN_SNATUA'
      Size = 6
    end
    object cdsUsuariosSEN_CARGO: TStringField
      FieldName = 'SEN_CARGO'
      Size = 30
    end
    object cdsUsuariosSEN_TERMINAL: TStringField
      FieldName = 'SEN_TERMINAL'
    end
    object cdsUsuariosSEN_LOJA: TIntegerField
      FieldName = 'SEN_LOJA'
    end
    object cdsUsuariosSEN_DTATUAL: TDateField
      FieldName = 'SEN_DTATUAL'
      EditMask = '99/99/9999;1;_'
    end
  end
  object dstFuncionarios2: TSQLDataSet
    CommandText = 
      'Select FUN_MATRICULA, FUN_NOME, FUN_VALETRANS, FUN_SALARIO, FUN_' +
      'CPF, FUN_RECISAO, FUN_QTFILHOS, FUN_EMPRESA, FUN_HORAS_TRABALHO,' +
      ' FUN_DTINICIO_FERIAS, FUN_DTFIM_FERIAS from FUNCIONARIOS '#13#10'Where' +
      ' (FUN_EMPRESA = :pEMPRESA)'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'pEMPRESA'
        ParamType = ptInput
        Value = 0
      end>
    SQLConnection = sqlCon_Folha
    Left = 48
    Top = 504
  end
  object dspFuncionarios2: TDataSetProvider
    DataSet = dstFuncionarios2
    Options = [poAllowCommandText]
    Left = 112
    Top = 520
  end
  object cdsFuncionarios2: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'pEMPRESA'
        ParamType = ptInput
        Value = 0
      end>
    ProviderName = 'dspFuncionarios2'
    Left = 184
    Top = 504
    object IntegerField1: TIntegerField
      FieldName = 'FUN_MATRICULA'
      Required = True
    end
    object StringField1: TStringField
      FieldName = 'FUN_NOME'
      Size = 50
    end
    object StringField2: TStringField
      FieldName = 'FUN_VALETRANS'
      FixedChar = True
      Size = 1
    end
    object FMTBCDField1: TFMTBCDField
      FieldName = 'FUN_SALARIO'
      Precision = 15
      Size = 2
    end
    object StringField3: TStringField
      FieldName = 'FUN_CPF'
      FixedChar = True
      Size = 11
    end
    object DateField1: TDateField
      FieldName = 'FUN_RECISAO'
    end
    object IntegerField2: TIntegerField
      FieldName = 'FUN_QTFILHOS'
    end
    object IntegerField3: TIntegerField
      FieldName = 'FUN_EMPRESA'
    end
    object DateField2: TDateField
      FieldName = 'FUN_DTINICIO_FERIAS'
    end
    object DateField3: TDateField
      FieldName = 'FUN_DTFIM_FERIAS'
    end
    object BCDField1: TBCDField
      FieldName = 'FUN_HORAS_TRABALHO'
      Precision = 9
      Size = 2
    end
  end
end
