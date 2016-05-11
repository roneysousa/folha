unit udmFolha;

interface

uses
  SysUtils, Classes, DBXpress, DB, SqlExpr, FMTBcd, Provider, DBClient, Controls,
  Windows, Forms, Messages, ppDB, ppComm, ppRelatv, ppDBPipe, ExtCtrls, JPEG,
  inifiles,  MidasLib;

type
  TdmFolha = class(TDataModule)
    sqlCon_Folha: TSQLConnection;
    dstFuncionarios: TSQLDataSet;
    dspFuncionarios: TDataSetProvider;
    dstFuncionariosFUN_MATRICULA: TIntegerField;
    dstFuncionariosFUN_NOME: TStringField;
    dstFuncionariosFUN_APELIDO: TStringField;
    dstFuncionariosFUN_ENDERECO: TStringField;
    dstFuncionariosFUN_NUMERO: TIntegerField;
    dstFuncionariosFUN_COMPLEMENTO: TStringField;
    dstFuncionariosFUN_CEP: TStringField;
    dstFuncionariosFUN_REFERENCIA: TStringField;
    dstFuncionariosFUN_CIDADE: TIntegerField;
    dstFuncionariosFUN_FONERES: TStringField;
    dstFuncionariosFUN_FONECEL: TStringField;
    dstFuncionariosFUN_NOMEMAE: TStringField;
    dstFuncionariosFUN_NOMEPAI: TStringField;
    dstFuncionariosFUN_CPF: TStringField;
    dstFuncionariosFUN_IDENTIDADE: TStringField;
    dstFuncionariosFUN_EMISSORIDENT: TStringField;
    dstFuncionariosFUN_UFIDEN: TStringField;
    dstFuncionariosFUN_DATANASC: TDateField;
    dstFuncionariosFUN_PISPASEP: TStringField;
    dstFuncionariosFUN_CTPSSERIE: TIntegerField;
    dstFuncionariosFUN_ADMISSAO: TDateField;
    dstFuncionariosFUN_RECISAO: TDateField;
    dstFuncionariosFUN_CATEGORIA: TIntegerField;
    dstFuncionariosFUN_TITULO: TStringField;
    dstFuncionariosFUN_TITULOSECAO: TStringField;
    dstFuncionariosFUN_TITULOZONA: TStringField;
    dstFuncionariosFUN_VALETRANS: TStringField;
    dstFuncionariosFUN_SALARIO: TFMTBCDField;
    dstFuncionariosFUN_DATACADASTRO: TDateField;
    cdsFuncionarios: TClientDataSet;
    dstFilhos: TSQLDataSet;
    dspFilhos: TDataSetProvider;
    cdsFilhos: TClientDataSet;
    dstCidades: TSQLDataSet;
    dspCidades: TDataSetProvider;
    cdsCidades: TClientDataSet;
    dstConfig: TSQLDataSet;
    dspConfig: TDataSetProvider;
    cdsConfig: TClientDataSet;
    dsConfig: TDataSource;
    dstFilhosFUN_MATRICULA: TIntegerField;
    dstFilhosFIL_NOME: TStringField;
    dstFilhosFIL_DATANASC: TDateField;
    dstCidadesCID_CODIGO: TIntegerField;
    dstCidadesCID_NOME: TStringField;
    dstCidadesCID_UF: TStringField;
    cdsFilhosFUN_MATRICULA: TIntegerField;
    cdsFilhosFIL_NOME: TStringField;
    cdsFilhosFIL_DATANASC: TDateField;
    cdsCidadesCID_CODIGO: TIntegerField;
    cdsCidadesCID_NOME: TStringField;
    cdsCidadesCID_UF: TStringField;
    cdsFuncionariosFUN_MATRICULA: TIntegerField;
    cdsFuncionariosFUN_NOME: TStringField;
    cdsFuncionariosFUN_APELIDO: TStringField;
    cdsFuncionariosFUN_ENDERECO: TStringField;
    cdsFuncionariosFUN_NUMERO: TIntegerField;
    cdsFuncionariosFUN_COMPLEMENTO: TStringField;
    cdsFuncionariosFUN_CEP: TStringField;
    cdsFuncionariosFUN_REFERENCIA: TStringField;
    cdsFuncionariosFUN_CIDADE: TIntegerField;
    cdsFuncionariosFUN_FONERES: TStringField;
    cdsFuncionariosFUN_FONECEL: TStringField;
    cdsFuncionariosFUN_NOMEMAE: TStringField;
    cdsFuncionariosFUN_NOMEPAI: TStringField;
    cdsFuncionariosFUN_CPF: TStringField;
    cdsFuncionariosFUN_IDENTIDADE: TStringField;
    cdsFuncionariosFUN_EMISSORIDENT: TStringField;
    cdsFuncionariosFUN_UFIDEN: TStringField;
    cdsFuncionariosFUN_DATANASC: TDateField;
    cdsFuncionariosFUN_PISPASEP: TStringField;
    cdsFuncionariosFUN_CTPSSERIE: TIntegerField;
    cdsFuncionariosFUN_ADMISSAO: TDateField;
    cdsFuncionariosFUN_RECISAO: TDateField;
    cdsFuncionariosFUN_CATEGORIA: TIntegerField;
    cdsFuncionariosFUN_TITULO: TStringField;
    cdsFuncionariosFUN_TITULOSECAO: TStringField;
    cdsFuncionariosFUN_TITULOZONA: TStringField;
    cdsFuncionariosFUN_VALETRANS: TStringField;
    cdsFuncionariosFUN_SALARIO: TFMTBCDField;
    cdsFuncionariosFUN_DATACADASTRO: TDateField;
    cdsFuncionariosFUN_NMCIDADE: TStringField;
    dstCategoria: TSQLDataSet;
    dspCategoria: TDataSetProvider;
    cdsCategoria: TClientDataSet;
    dstCategoriaCAT_CODIGO: TIntegerField;
    dstCategoriaCAT_DESCRICAO: TStringField;
    cdsCategoriaCAT_CODIGO: TIntegerField;
    cdsCategoriaCAT_DESCRICAO: TStringField;
    cdsFuncionariosCAT_DESCRICAO: TStringField;
    dstEmpresas: TSQLDataSet;
    dstEmpresasEMP_CODIGO: TIntegerField;
    dstEmpresasEMP_CNPJ: TStringField;
    dstEmpresasEMP_FANTASIA: TStringField;
    dstEmpresasEMP_RAZAO: TStringField;
    dstEmpresasEMP_ENDERECO: TStringField;
    dstEmpresasEMP_NUMERO: TIntegerField;
    dstEmpresasBAI_CODIGO: TIntegerField;
    dstEmpresasCID_CODIGO: TIntegerField;
    dstFuncionariosFUN_EMPRESA: TIntegerField;
    cdsFuncionariosFUN_EMPRESA: TIntegerField;
    dspEmpresas: TDataSetProvider;
    cdsEmpresas: TClientDataSet;
    cdsEmpresasEMP_CODIGO: TIntegerField;
    cdsEmpresasEMP_CNPJ: TStringField;
    cdsEmpresasEMP_FANTASIA: TStringField;
    cdsEmpresasEMP_RAZAO: TStringField;
    cdsEmpresasEMP_ENDERECO: TStringField;
    cdsEmpresasEMP_NUMERO: TIntegerField;
    cdsEmpresasBAI_CODIGO: TIntegerField;
    cdsEmpresasCID_CODIGO: TIntegerField;
    dstBairros: TSQLDataSet;
    dspBairros: TDataSetProvider;
    cdsBairros: TClientDataSet;
    cdsEmpresasEMP_NMCIDA: TStringField;
    dstBairrosBAI_CODIGO: TIntegerField;
    dstBairrosBAI_NOME: TStringField;
    dstBairrosCID_CODIGO: TIntegerField;
    cdsBairrosBAI_CODIGO: TIntegerField;
    cdsBairrosBAI_NOME: TStringField;
    cdsBairrosCID_CODIGO: TIntegerField;
    cdsBairrosBAI_NMCIDA: TStringField;
    cdsEmpresasEMP_NMBAIRRO: TStringField;
    dstFuncionariosFUN_BAIRRO: TIntegerField;
    cdsFuncionariosFUN_BAIRRO: TIntegerField;
    cdsFuncionariosFUN_NMBAIRRO: TStringField;
    cdsFuncionariosFUN_NMEMPR: TStringField;
    dstDescontos_Beneficios: TSQLDataSet;
    dstDescontos_BeneficiosDCB_CODIGO: TIntegerField;
    dstDescontos_BeneficiosDCB_DESCRICAO: TStringField;
    dstDescontos_BeneficiosDCB_TIPO: TStringField;
    dstDescontos_BeneficiosDCB_VALOR: TFMTBCDField;
    dspDescBene: TDataSetProvider;
    cdsDescBene: TClientDataSet;
    cdsDescBeneDCB_CODIGO: TIntegerField;
    cdsDescBeneDCB_DESCRICAO: TStringField;
    cdsDescBeneDCB_TIPO: TStringField;
    cdsDescBeneDCB_VALOR: TFMTBCDField;
    cdsDescBeneDCB_DESTIPO: TStringField;
    spIncDescBene: TSQLStoredProc;
    dstMovimento: TSQLDataSet;
    dstMovimentoMOV_SEQUENCIA: TIntegerField;
    dstMovimentoMOV_DATA: TDateField;
    dstMovimentoMOV_HORA: TStringField;
    dstMovimentoMOV_TIPO: TStringField;
    dstMovimentoMOV_VALOR: TFMTBCDField;
    dstMovimentoMOV_TITULO: TStringField;
    dstMovimentoMOV_DESCRICAO: TMemoField;
    dstMovimentoMOV_MATRICULA: TIntegerField;
    dstMovimentoMOV_AUTORIZADOR: TStringField;
    dstMovimentoMOV_FOLHA: TStringField;
    dspMovimento: TDataSetProvider;
    cdsMovimento: TClientDataSet;
    cdsMovimentoMOV_SEQUENCIA: TIntegerField;
    cdsMovimentoMOV_DATA: TDateField;
    cdsMovimentoMOV_HORA: TStringField;
    cdsMovimentoMOV_TIPO: TStringField;
    cdsMovimentoMOV_VALOR: TFMTBCDField;
    cdsMovimentoMOV_TITULO: TStringField;
    cdsMovimentoMOV_DESCRICAO: TMemoField;
    cdsMovimentoMOV_MATRICULA: TIntegerField;
    cdsMovimentoMOV_AUTORIZADOR: TStringField;
    cdsMovimentoMOV_FOLHA: TStringField;
    dstCBO: TSQLDataSet;
    dstCBOCBO_CODIGO: TIntegerField;
    dstCBOCBO_DESCRICAO: TStringField;
    dspCBO: TDataSetProvider;
    cdsCBO: TClientDataSet;
    cdsCBOCBO_CODIGO: TIntegerField;
    cdsCBOCBO_DESCRICAO: TStringField;
    dstFuncionariosFUN_CBO: TIntegerField;
    cdsFuncionariosFUN_CBO: TIntegerField;
    dstLancamentoBeneficios: TSQLDataSet;
    dpsLancBeneficios: TDataSetProvider;
    cdsLancBeneficios: TClientDataSet;
    dstLancamentoBeneficiosFUN_MATRICULA: TIntegerField;
    dstLancamentoBeneficiosDCB_CODIGO: TIntegerField;
    dstLancamentoBeneficiosLAN_QUANTIDADE: TIntegerField;
    dstLancamentoBeneficiosLAN_VALOR_BENEFICIO: TFMTBCDField;
    dstLancamentoBeneficiosLAN_FLFIXO: TStringField;
    dstLancamentoBeneficiosLAN_DATA: TDateField;
    dstLancamentoBeneficiosLAN_HORA: TStringField;
    cdsLancBeneficiosFUN_MATRICULA: TIntegerField;
    cdsLancBeneficiosDCB_CODIGO: TIntegerField;
    cdsLancBeneficiosLAN_QUANTIDADE: TIntegerField;
    cdsLancBeneficiosLAN_VALOR_BENEFICIO: TFMTBCDField;
    cdsLancBeneficiosLAN_FLFIXO: TStringField;
    cdsLancBeneficiosLAN_DATA: TDateField;
    cdsLancBeneficiosLAN_HORA: TStringField;
    qryConsulta: TSQLQuery;
    spIncDadosFolha: TSQLStoredProc;
    dstFuncionariosFUN_QTFILHOS: TIntegerField;
    dstFuncionariosFUN_FOTO: TBlobField;
    cdsFuncionariosFUN_QTFILHOS: TIntegerField;
    cdsFuncionariosFUN_FOTO: TBlobField;
    dstPrevidencia: TSQLDataSet;
    dstPrevidenciaPRE_CODIGO: TIntegerField;
    dstPrevidenciaPRE_FAIXA: TFMTBCDField;
    dspPrevidencia: TDataSetProvider;
    cdsPrevidencia: TClientDataSet;
    cdsPrevidenciaPRE_CODIGO: TIntegerField;
    cdsPrevidenciaPRE_FAIXA: TFMTBCDField;
    dstImpostoRenda: TSQLDataSet;
    dstImpostoRendaIMR_CODIGO: TIntegerField;
    dstImpostoRendaIMR_FAIXA: TFMTBCDField;
    dspImpostoRenda: TDataSetProvider;
    cdsImpostoRenda: TClientDataSet;
    cdsImpostoRendaIMR_CODIGO: TIntegerField;
    cdsImpostoRendaIMR_FAIXA: TFMTBCDField;
    dstSalarioFamilia: TSQLDataSet;
    dstSalarioFamiliaSFM_CODIGO: TIntegerField;
    dstSalarioFamiliaSFM_FAIXA: TFMTBCDField;
    dstSalarioFamiliaSFM_VALOR: TFMTBCDField;
    dspSalarioFamilia: TDataSetProvider;
    cdsSalarioFamilia: TClientDataSet;
    cdsSalarioFamiliaSFM_CODIGO: TIntegerField;
    cdsSalarioFamiliaSFM_FAIXA: TFMTBCDField;
    cdsSalarioFamiliaSFM_VALOR: TFMTBCDField;
    ppDBParametro: TppDBPipeline;
    dstHorasExtras: TSQLDataSet;
    dstHorasExtrasFUN_MATRICULA: TIntegerField;
    dstHorasExtrasHOR_DTMOVI: TDateField;
    dstHorasExtrasHOR_HOINICIAL: TStringField;
    dstHorasExtrasHOR_HOFINAL: TStringField;
    dstHorasExtrasHOR_JUSTIFICATIVA: TMemoField;
    dstFaltas: TSQLDataSet;
    dstFaltasFUN_MATRICULA: TIntegerField;
    dstFaltasFAL_DTMOVI: TDateField;
    dstFaltasFAL_JUSTIFICATIVA: TMemoField;
    dstFaltasFAL_FOLHA: TStringField;
    dspHorasExtras: TDataSetProvider;
    dspFaltas: TDataSetProvider;
    cdsHorasExtras: TClientDataSet;
    cdsHorasExtrasFUN_MATRICULA: TIntegerField;
    cdsHorasExtrasHOR_DTMOVI: TDateField;
    cdsHorasExtrasHOR_HOINICIAL: TStringField;
    cdsHorasExtrasHOR_HOFINAL: TStringField;
    cdsHorasExtrasHOR_JUSTIFICATIVA: TMemoField;
    cdsFaltas: TClientDataSet;
    cdsFaltasFUN_MATRICULA: TIntegerField;
    cdsFaltasFAL_DTMOVI: TDateField;
    cdsFaltasFAL_JUSTIFICATIVA: TMemoField;
    cdsFaltasFAL_FOLHA: TStringField;
    cdsHorasExtrasHOR_QUAT_HORAS: TStringField;
    dstHorasExtrasHOR_FOLHA: TStringField;
    cdsHorasExtrasHOR_FOLHA: TStringField;
    dstEmpresasEMP_FOLHA: TStringField;
    cdsEmpresasEMP_FOLHA: TStringField;
    dstFuncionariosFUN_DTINICIO_FERIAS: TDateField;
    dstFuncionariosFUN_DTFIM_FERIAS: TDateField;
    dstFuncionariosFUN_DTDIREITO_FERIAS: TDateField;
    cdsFuncionariosFUN_DTINICIO_FERIAS: TDateField;
    cdsFuncionariosFUN_DTFIM_FERIAS: TDateField;
    cdsFuncionariosFUN_DTDIREITO_FERIAS: TDateField;
    spIncDadosFerias: TSQLStoredProc;
    dstEscolaridade: TSQLDataSet;
    dstEscolaridadeESC_CODIGO: TIntegerField;
    dstEscolaridadeESC_DESCRICAO: TStringField;
    dspEscolaridade: TDataSetProvider;
    cdsEscolaridade: TClientDataSet;
    cdsEscolaridadeESC_CODIGO: TIntegerField;
    cdsEscolaridadeESC_DESCRICAO: TStringField;
    dstFuncionariosFUN_ESCOLARIDADE: TIntegerField;
    cdsFuncionariosFUN_ESCOLARIDADE: TIntegerField;
    cdsFuncionariosFUN_NMESCOLARIDADE: TStringField;
    dstFuncionariosFUN_CTPS: TStringField;
    cdsFuncionariosFUN_CTPS: TStringField;
    dstHorarios: TSQLDataSet;
    dstHorariosHRA_DIASEMANA: TIntegerField;
    dstHorariosHRA_FUNCIONARIO: TIntegerField;
    dstHorariosHRA_ENTRADA: TStringField;
    dstHorariosHRA_SAIDA: TStringField;
    dspHorarios: TDataSetProvider;
    cdsHorarios: TClientDataSet;
    cdsHorariosHRA_DIASEMANA: TIntegerField;
    cdsHorariosHRA_FUNCIONARIO: TIntegerField;
    cdsHorariosHRA_ENTRADA: TStringField;
    cdsHorariosHRA_SAIDA: TStringField;
    dstDiasSemana: TSQLDataSet;
    dstDiasSemanaCODIGO: TIntegerField;
    dstDiasSemanaDESCRICAO: TStringField;
    dspDiasSemana: TDataSetProvider;
    cdsDiasSemana: TClientDataSet;
    cdsDiasSemanaCODIGO: TIntegerField;
    cdsDiasSemanaDESCRICAO: TStringField;
    cdsHorariosDIA_SEMANA: TStringField;
    dstFeriados: TSQLDataSet;
    dstFeriadosFER_MESDIA: TStringField;
    dstFeriadosDESCRICAO: TStringField;
    dspFeriados: TDataSetProvider;
    cdsFeriados: TClientDataSet;
    cdsFeriadosFER_MESDIA: TStringField;
    cdsFeriadosDESCRICAO: TStringField;
    dstPonto: TSQLDataSet;
    dspPonto: TDataSetProvider;
    cdsPonto: TClientDataSet;
    dstPontoPNT_FUNCIONARIO: TIntegerField;
    dstPontoPNT_DATAENTRADA: TDateField;
    dstPontoPNT_DATASAIDA: TDateField;
    cdsPontoPNT_FUNCIONARIO: TIntegerField;
    cdsPontoPNT_DATAENTRADA: TDateField;
    cdsPontoPNT_DATASAIDA: TDateField;
    dstPontoPNT_FLPRESENCA: TStringField;
    cdsPontoPNT_FLPRESENCA: TStringField;
    dstPontoPNT_HORAENTRADA: TStringField;
    dstPontoPNT_HORASAIDA: TStringField;
    cdsPontoPNT_HORAENTRADA: TStringField;
    cdsPontoPNT_HORASAIDA: TStringField;
    dstUsuarios: TSQLDataSet;
    dstUsuariosSEN_CODIGO: TIntegerField;
    dstUsuariosSEN_NOME: TStringField;
    dstUsuariosSEN_SNATUA: TStringField;
    dstUsuariosSEN_CARGO: TStringField;
    dstUsuariosSEN_TERMINAL: TStringField;
    dstUsuariosSEN_LOJA: TIntegerField;
    dstUsuariosSEN_DTATUAL: TDateField;
    dspUsuarios: TDataSetProvider;
    cdsUsuarios: TClientDataSet;
    cdsUsuariosSEN_CODIGO: TIntegerField;
    cdsUsuariosSEN_NOME: TStringField;
    cdsUsuariosSEN_SNATUA: TStringField;
    cdsUsuariosSEN_CARGO: TStringField;
    cdsUsuariosSEN_TERMINAL: TStringField;
    cdsUsuariosSEN_LOJA: TIntegerField;
    cdsUsuariosSEN_DTATUAL: TDateField;
    dstConfigCFG_FUNCIONARIO: TIntegerField;
    dstConfigCFG_CIDADE: TIntegerField;
    dstConfigCFG_CATEGORIA: TIntegerField;
    dstConfigCFG_EMPRESA: TIntegerField;
    dstConfigCFG_BAIRRO: TIntegerField;
    dstConfigCFG_DESCBENE: TIntegerField;
    dstConfigCFG_MOVIMENTO: TIntegerField;
    dstConfigCFG_FOLHA: TStringField;
    dstConfigCFG_PREVIDENCIA: TIntegerField;
    dstConfigCFG_IMPOSTO_RENDA: TIntegerField;
    dstConfigCFG_SALARIO_FAMILIA: TIntegerField;
    dstConfigCFG_CABECALHO: TMemoField;
    dstConfigCFG_PEHORAEXTRAS: TBCDField;
    dstConfigCFG_DESCONTO_DEPENDENTE: TBCDField;
    dstConfigCFG_ESCOLARIDADE: TIntegerField;
    dstConfigCFG_DTVALIDACAO: TDateField;
    dstConfigCFG_HOVALIDACAO: TStringField;
    dstConfigCFG_USUARIOS: TIntegerField;
    cdsConfigCFG_FUNCIONARIO: TIntegerField;
    cdsConfigCFG_CIDADE: TIntegerField;
    cdsConfigCFG_CATEGORIA: TIntegerField;
    cdsConfigCFG_EMPRESA: TIntegerField;
    cdsConfigCFG_BAIRRO: TIntegerField;
    cdsConfigCFG_DESCBENE: TIntegerField;
    cdsConfigCFG_MOVIMENTO: TIntegerField;
    cdsConfigCFG_FOLHA: TStringField;
    cdsConfigCFG_PREVIDENCIA: TIntegerField;
    cdsConfigCFG_IMPOSTO_RENDA: TIntegerField;
    cdsConfigCFG_SALARIO_FAMILIA: TIntegerField;
    cdsConfigCFG_CABECALHO: TMemoField;
    cdsConfigCFG_PEHORAEXTRAS: TBCDField;
    cdsConfigCFG_DESCONTO_DEPENDENTE: TBCDField;
    cdsConfigCFG_ESCOLARIDADE: TIntegerField;
    cdsConfigCFG_DTVALIDACAO: TDateField;
    cdsConfigCFG_HOVALIDACAO: TStringField;
    cdsConfigCFG_USUARIOS: TIntegerField;
    dstFuncionariosFUN_HORAS_TRABALHO: TBCDField;
    cdsFuncionariosFUN_HORAS_TRABALHO: TBCDField;
    dstDescontos_BeneficiosDCB_PERCENTUAL: TBCDField;
    cdsDescBeneDCB_PERCENTUAL: TBCDField;
    dstPrevidenciaPRE_PEDESCONTO: TBCDField;
    cdsPrevidenciaPRE_PEDESCONTO: TBCDField;
    dstImpostoRendaIMR_PEDESCONTO: TBCDField;
    cdsImpostoRendaIMR_PEDESCONTO: TBCDField;
    dstFuncionarios2: TSQLDataSet;
    dspFuncionarios2: TDataSetProvider;
    cdsFuncionarios2: TClientDataSet;
    IntegerField1: TIntegerField;
    StringField1: TStringField;
    StringField2: TStringField;
    FMTBCDField1: TFMTBCDField;
    StringField3: TStringField;
    DateField1: TDateField;
    IntegerField2: TIntegerField;
    IntegerField3: TIntegerField;
    DateField2: TDateField;
    DateField3: TDateField;
    BCDField1: TBCDField;
    procedure dspFuncionariosGetTableName(Sender: TObject;
      DataSet: TDataSet; var TableName: String);
    procedure dspFilhosGetTableName(Sender: TObject; DataSet: TDataSet;
      var TableName: String);
    procedure dspCidadesGetTableName(Sender: TObject; DataSet: TDataSet;
      var TableName: String);
    procedure dspConfigGetTableName(Sender: TObject; DataSet: TDataSet;
      var TableName: String);
    procedure dspCategoriaGetTableName(Sender: TObject; DataSet: TDataSet;
      var TableName: String);
    procedure cdsFilhosAfterPost(DataSet: TDataSet);
    procedure cdsFilhosAfterInsert(DataSet: TDataSet);
    procedure dspEmpresasGetTableName(Sender: TObject; DataSet: TDataSet;
      var TableName: String);
    procedure dspDescBeneGetTableName(Sender: TObject; DataSet: TDataSet;
      var TableName: String);
    procedure cdsDescBeneCalcFields(DataSet: TDataSet);
    procedure DataModuleDestroy(Sender: TObject);
    procedure DataModuleCreate(Sender: TObject);
    procedure dspMovimentoGetTableName(Sender: TObject; DataSet: TDataSet;
      var TableName: String);
    procedure dspModalidadesGetTableName(Sender: TObject;
      DataSet: TDataSet; var TableName: String);
    procedure dspCBOGetTableName(Sender: TObject; DataSet: TDataSet;
      var TableName: String);
    procedure dpsLancBeneficiosGetTableName(Sender: TObject;
      DataSet: TDataSet; var TableName: String);
    procedure dspPrevidenciaGetTableName(Sender: TObject;
      DataSet: TDataSet; var TableName: String);
    procedure dspHorasExtrasGetTableName(Sender: TObject;
      DataSet: TDataSet; var TableName: String);
    procedure dspFaltasGetTableName(Sender: TObject;
      DataSet: TDataSet; var TableName: String);
    procedure cdsHorasExtrasCalcFields(DataSet: TDataSet);
    procedure dspEscolaridadeGetTableName(Sender: TObject;
      DataSet: TDataSet; var TableName: String);
    procedure dspHorariosGetTableName(Sender: TObject; DataSet: TDataSet;
      var TableName: String);
    procedure dspFeriadosGetTableName(Sender: TObject; DataSet: TDataSet;
      var TableName: String);
    procedure dspPontoGetTableName(Sender: TObject; DataSet: TDataSet;
      var TableName: String);
    procedure dspUsuariosGetTableName(Sender: TObject; DataSet: TDataSet;
      var TableName: String);
    procedure sqlCon_FolhaBeforeConnect(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
     function mscodigo(campo,tabela:string):string;
     function mvcodigo(campo,tabela:string):integer;
     Procedure parametros;
     Procedure CIDADES;
     Function QUANT_FUNCIONARIO(W_CDEMPR : Integer) : Integer;
     Function CALCULAR_HORAS(M_NRMATR : Integer; M_CDFOLH : String; W_VLSALA : Double) : Double;
     Function CALCULAR_BENEFICIO(M_NRMATR : Integer; M_CDFOLH : String; W_VLSALA : Double) : Double;
     Procedure ObtemImagemDoBanco(var imgDestino: TImage);
     function VerificarFalta(aIdFunc : Integer; aData : TDate) : Boolean;
     //
     procedure Start;
     procedure Comit(aTransc : TTransactionDesc);
     procedure Rollback;
     procedure RefreshCDS(aDateSet : TClientDataSet);
     //
     Function GetNomeEmpresa(iCodigo : Integer): String;
     Function GetNomeFuncionario(iCodigo : Integer): String;
     Function GetSalarioFuncionario(iCodigo : Integer): Double;
     //
     Function GerarFolha(iEmpresa : Integer; aDataPagamento : TDate; aFolha, aFluxoFechar : String) : Boolean;
     Function GerarFolha13(iEmpresa : Integer; aDataPagamento : TDate; aFolha, aFluxoFechar : String) : Boolean;
     Procedure REC_FOLHA(aCDFOLH, aNMBENE, aNMDESC, aHOGERA : String;
                  iCDFUNC, iCDBENE, iDESBEN, iEmpresa : Integer;
                  fQTBENE, fVLBENE, fPEBENE : Double; aDTGERA : TDate);
     Function VerificarRegistroFolha(aCodigo : String; iMatricula, iBeneficio : Integer) : Boolean;
  end;

var
  dmFolha: TdmFolha;
  Transc : TTransactionDesc;

implementation

uses uFuncoes, udmFolha2, Math, uPrincFolha;

{$R *.dfm}

procedure TdmFolha.dspFuncionariosGetTableName(Sender: TObject;
  DataSet: TDataSet; var TableName: String);
begin
     TableName := 'FUNCIONARIOS';
end;

procedure TdmFolha.dspFilhosGetTableName(Sender: TObject;
  DataSet: TDataSet; var TableName: String);
begin
    TableName := 'FILHOS_FUNCIONARIOS';
end;

procedure TdmFolha.dspCidadesGetTableName(Sender: TObject;
  DataSet: TDataSet; var TableName: String);
begin
     TableName := 'CIDADES';
end;

procedure TdmFolha.dspConfigGetTableName(Sender: TObject;
  DataSet: TDataSet; var TableName: String);
begin
     TableName := 'CONFIG';
end;

function TdmFolha.mscodigo(campo, tabela: string): string;
var qraux : TSQLquery;
    texto : string;
begin
  texto := 'Select min('+campo+') from '+tabela;
  QrAux := TSqlquery.Create(nil);
  with QrAux do
    try
      SQLConnection := sqlCon_Folha;
      sql.Add(texto);
      open;
      result := fields[0].AsString;
    finally
      free;
    end;
end;

function TdmFolha.mvcodigo(campo, tabela: string): integer;
var qraux : TSQLquery;
    texto : string;
begin
  texto := 'Select min('+campo+') from '+tabela;
  QrAux := TSqlquery.Create(nil);
  with QrAux do
    try
      SQLConnection := sqlCon_Folha;
      sql.Add(texto);
      open;
      result := fields[0].AsInteger;
    finally
      free;
    end;
end;

procedure TdmFolha.parametros;
begin
     cdsConfig.Close;
     cdsConfig.Open;
end;

procedure TdmFolha.dspCategoriaGetTableName(Sender: TObject;
  DataSet: TDataSet; var TableName: String);
begin
     TableName := 'CATEGORIA';
end;

procedure TdmFolha.cdsFilhosAfterPost(DataSet: TDataSet);
begin
     If not uFuncoes.Empty(cdsFilhos.FieldByName('FIL_NOME').AsString) Then
         cdsFilhos.ApplyUpdates(0)
     Else
         cdsFilhos.Delete; 
end;

procedure TdmFolha.cdsFilhosAfterInsert(DataSet: TDataSet);
begin
     cdsFilhos.FieldByName('FUN_MATRICULA').AsInteger :=
             cdsFuncionarios.FieldByName('FUN_MATRICULA').AsInteger;
end;

procedure TdmFolha.dspEmpresasGetTableName(Sender: TObject;
  DataSet: TDataSet; var TableName: String);
begin
      TableName := 'EMPRESAS';
end;

procedure TdmFolha.CIDADES;
begin
     cdsCidades.Close;
     cdsCidades.Open;
end;

procedure TdmFolha.dspDescBeneGetTableName(Sender: TObject;
  DataSet: TDataSet; var TableName: String);
begin
     TableName := 'DESCONTOS_BENEFICIO';
end;

procedure TdmFolha.cdsDescBeneCalcFields(DataSet: TDataSet);
begin
     If (cdsDescBene.FieldByName('DCB_TIPO').AsString = '1' ) Then
         cdsDescBeneDCB_DESTIPO.AsString := 'BENEFICIO'
     Else
         cdsDescBeneDCB_DESTIPO.AsString := 'DESCONTO';
end;

procedure TdmFolha.DataModuleDestroy(Sender: TObject);
begin
      sqlCon_Folha.Close;
end;

procedure TdmFolha.DataModuleCreate(Sender: TObject);
Var
    CAMINHO : String;
begin
     //
     try
        sqlCon_Folha.Connected := True;
     Except
          on e: exception do
          begin
              Application.MessageBox(PChar('Base de Dados Não Encontrada! Erro:'+#13
                      + E.Message),
                      'ATENÇÃO', MB_OK+MB_ICONSTOP+MB_APPLMODAL);
              sqlCon_Folha.Connected := false;
              Application.Terminate;
          End;
     End;
     //
     sqlCon_Folha.Open; 
end;

procedure TdmFolha.dspMovimentoGetTableName(Sender: TObject;
  DataSet: TDataSet; var TableName: String);
begin
     TableName := 'MOVIMENTO';
end;

procedure TdmFolha.dspModalidadesGetTableName(Sender: TObject;
  DataSet: TDataSet; var TableName: String);
begin
     TableName := 'MODALIDADES';
end;

procedure TdmFolha.dspCBOGetTableName(Sender: TObject; DataSet: TDataSet;
  var TableName: String);
begin
      TableName := 'CBO';
end;

procedure TdmFolha.dpsLancBeneficiosGetTableName(Sender: TObject;
  DataSet: TDataSet; var TableName: String);
begin
     TableName := 'LANCAMENTOS';
end;

procedure TdmFolha.dspPrevidenciaGetTableName(Sender: TObject;
  DataSet: TDataSet; var TableName: String);
begin
     TableName := 'PREVIDENCIA';
end;

procedure TdmFolha.dspHorasExtrasGetTableName(Sender: TObject;
  DataSet: TDataSet; var TableName: String);
begin
     TableName := 'HORAS_EXTRAS';
end;

procedure TdmFolha.dspFaltasGetTableName(Sender: TObject;
  DataSet: TDataSet; var TableName: String);
begin
     TableName := 'FALTAS';
end;

procedure TdmFolha.cdsHorasExtrasCalcFields(DataSet: TDataSet);
begin
     if not uFuncoes.Empty(cdsHorasExtrasHOR_HOINICIAL.AsString)
      and not uFuncoes.Empty(cdsHorasExtrasHOR_HOFINAL.AsString) Then
        cdsHorasExtrasHOR_QUAT_HORAS.AsString :=
                 uFuncoes.DifHora(cdsHorasExtrasHOR_HOINICIAL.AsString,
                                  cdsHorasExtrasHOR_HOFINAL.AsString);
end;

procedure TdmFolha.dspEscolaridadeGetTableName(Sender: TObject;
  DataSet: TDataSet; var TableName: String);
begin
     TableName := 'ESCOLARIDADE';
end;

function TdmFolha.QUANT_FUNCIONARIO(W_CDEMPR: Integer): Integer;
Var
   qryConsulta : TSQLQuery;
begin
     qryConsulta := TSQLQuery.Create(nil);
     With qryConsulta do
      try
           SQLConnection := sqlCon_Folha;
           Close;
           SQL.Add('Select Count(*) as QUANT from FUNCIONARIOS Where (FUN_EMPRESA = :pEMPRESA) ');
           SQL.Add(' and (FUN_RECISAO is null)');
           Params.ParamByName('pEMPRESA').AsInteger := W_CDEMPR;
           Open;
           //
           If not (IsEmpty) Then
               result := FieldByName('QUANT').AsInteger;
           //
           Close;
      Finally
           free;
      End;
end;

function TdmFolha.CALCULAR_HORAS(M_NRMATR: Integer;
  M_CDFOLH: String; W_VLSALA : Double): Double;
Var
    M_CDBENE, M_DESBEN, M_HORA, M_MINUTO : Integer;
    M_QTBENE, M_PEBENE, M_VLBENE : Double;
    M_QTHORA, M_PEHORA, M_TOHORA : Double;
begin
     //
     // DESCONTOS - HORA EXTRA - 007
     //
     M_CDBENE := 7;
     M_QTBENE := 0;
     M_DESBEN := 1;
     //
     With dmFolha2.qryConsulta do
       begin
            SQL.Clear;
            Close;
            SQL.Add('Select DCB_CODIGO, DCB_DESCRICAO, DCB_VALOR, DCB_PERCENTUAL from DESCONTOS_BENEFICIO');
            SQL.Add('Where (DCB_CODIGO = :pCODIGO)');
            Params.ParamByName('pCODIGO').AsInteger := M_CDBENE;
            Open;
            //
            If not (IsEmpty) Then
             Begin
                  dmFolha2.cdsConsulta.Close;
                  With dmFolha2.dstConsulta do
                   begin
                        Active := False;
                        CommandText := 'Select * from HORAS_EXTRAS Whgre (FUN_MATRICULA = :pMATRICULA) AND (HOR_FOLHA = :pFOLHA)';
                        Params.ParamByName('pMATRICULA').AsInteger := M_NRMATR;
                        Params.ParamByName('pFOLHA').AsString      := uFuncoes.Replicate (' ',6);
                        Active := True;
                   End;
                  //
                  dmFolha2.cdsConsulta.FetchParams;
                  dmFolha2.cdsConsulta.Open;
                  If not (dmFolha2.cdsConsulta.IsEmpty ) Then
                     begin
                          dmFolha2.cdsConsulta.First;
                          M_HORA   := 0;
                          M_MINUTO := 0;
                          While not (dmFolha2.cdsConsulta.Eof) do
                           begin
                                dmFolha2.cdsConsulta.Edit;
                                //
                                M_HORA   := M_HORA + StrtoInt(Copy(uFuncoes.DifHora(dmFolha2.cdsConsulta.FieldByName('HOR_HOINICIAL').AsString,
                                           dmFolha2.cdsConsulta.FieldByName('HOR_HOFINAL').AsString),1,2));
                                M_MINUTO := M_MINUTO + StrToInt(Copy(uFuncoes.DifHora(dmFolha2.cdsConsulta.FieldByName('HOR_HOINICIAL').AsString,
                                           dmFolha2.cdsConsulta.FieldByName('HOR_HOFINAL').AsString),4,2));
                                //
                                If M_MINUTO >= 60 Then
                                   Begin
                                        M_HORA   := M_HORA + 1;
                                        M_MINUTO := 0;
                                   end;
                                // Proximo
                                dmFolha2.cdsConsulta.next;
                           End;
                           //
                           M_QTBENE := M_HORA + (M_MINUTO/60);
                           M_PEBENE := dmFolha2.qryConsulta.FieldByName('DCB_PERCENTUAL').AsFloat;
                           //
                           M_VLBENE := (W_VLSALA/M_QTHORA) * M_QTBENE;
                           M_VLBENE := M_VLBENE + uFuncoes.Arredondar(uFuncoes.Gerapercentual(M_VLBENE , M_PEHORA),2);
                           M_TOHORA := M_VLBENE * M_QTBENE;
                           //
                     End;   // fim-do-se
             End;           // fim-do-se
       End;  // fim-do-with
       //
       result := M_VLBENE;
end;

function TdmFolha.CALCULAR_BENEFICIO(M_NRMATR: Integer; M_CDFOLH: String;
  W_VLSALA: Double): Double;
Var
   M_BENFER, M_VLBENE, M_PEBENE, M_VLRECE, M_TOBENE, M_VLBENEFICIO : Double;
   M_CDBENE, M_QTBENE, M_DESBEN : integer;
   M_FLFIXO : String;
begin
     //
     // DESCONTOS E BENEFICIOS - LANCADOS - NNNN
     //
     dmFolha.cdsLancBeneficios.Close;
     With dmFolha.dstLancamentoBeneficios do
       begin
            Active := False;
            CommandText := 'Select * from LANCAMENTOS Where (FUN_MATRICULA = :pMATRICULA) ';
            Params.ParamByName('pMATRICULA').AsInteger := M_NRMATR;
            Active := True;
       End;
     //
     dmFolha.cdsLancBeneficios.FetchParams;
     dmFolha.cdsLancBeneficios.Open;
     If not(dmFolha.cdsLancBeneficios.IsEmpty) Then
       begin
            M_BENFER := 0;
            M_VLBENEFICIO := 0;
            //
            dmFolha.cdsLancBeneficios.First;
            WHILE not (dmFolha.cdsLancBeneficios.EOF) do
              begin
                   M_CDBENE := dmFolha.cdsLancBeneficios.FieldByName('DCB_CODIGO').AsInteger;
                   M_QTBENE := dmFolha.cdsLancBeneficios.FieldByName('LAN_QUANTIDADE').AsInteger;
                   M_VLBENE := dmFolha.cdsLancBeneficios.FieldByName('LAN_VALOR_BENEFICIO').AsCurrency;
                   M_BENFER := M_BENFER + M_VLBENE;
                   M_FLFIXO := dmFolha.cdsLancBeneficios.FieldByName('LAN_FLFIXO').AsString;
                   M_PEBENE := 0;
                   //
                   IF (M_CDBENE > 100) Then
                    begin
                         With dmFolha2.qryConsulta do
                           begin
                                SQL.Clear;
                                Close;
                                SQL.Add('Select DCB_CODIGO, DCB_DESCRICAO, DCB_TIPO, DCB_VALOR, DCB_PERCENTUAL from DESCONTOS_BENEFICIO');
                                SQL.Add('Where (DCB_CODIGO = :pCODIGO)');
                                Params.ParamByName('pCODIGO').AsInteger := M_CDBENE;
                                Open;
                                //
                                If not (IsEmpty) Then
                                  begin
                                       M_DESBEN := dmFolha2.qryConsulta.FieldByName('DCB_TIPO').AsInteger;
                                       //
                                       If (M_VLBENE <= 0) then
                                       begin
                                               If (dmFolha2.qryConsulta.FieldByName('DCB_VALOR').AsFloat > 0) Then
                                                  begin
                                                       M_VLBENE := dmFolha2.qryConsulta.FieldByName('DCB_VALOR').AsFloat;
                                                       M_PEBENE := 0;
                                                       If (M_DESBEN = 1) Then
                                                           M_VLRECE := M_VLRECE + M_VLBENE
                                                       Else
                                                           M_VLRECE := M_VLRECE - M_VLBENE;
                                                  End
                                                  ELSE
                                                  begin
                                                        M_PEBENE := dmFolha2.qryConsulta.FieldByName('DCB_PERCENTUAL').AsFloat;
                                                        M_VLBENE := uFuncoes.Gerapercentual(W_VLSALA,M_PEBENE) * M_QTBENE;
                                                        //
                                                        IF (M_DESBEN = 1) then
                                                            M_VLRECE := M_VLRECE + (uFuncoes.Arredondar(M_PEBENE * W_VLSALA /100,2) * M_QTBENE)
                                                        Else
                                                             M_VLRECE := M_VLRECE - (uFuncoes.Arredondar(M_PEBENE * W_VLSALA /100,2) * M_QTBENE);
                                                  End;
                                       End
                                       Else
                                       Begin
                                               If (dmFolha2.qryConsulta.FieldByName('DCB_VALOR').AsFloat > 0)
                                                             or (dmFolha2.qryConsulta.FieldByName('DCB_PERCENTUAL').AsFloat > 0)  Then
                                               begin
                                                    If (dmFolha2.qryConsulta.FieldByName('DCB_VALOR').AsFloat > 0) Then
                                                        begin
                                                                    M_VLBENE := dmFolha2.qryConsulta.FieldByName('DCB_VALOR').AsFloat;
                                                                    M_PEBENE := 0;
                                                        end
                                                        Else
                                                        Begin
                                                                    M_PEBENE := dmFolha2.qryConsulta.FieldByName('DCB_PERCENTUAL').AsFloat;
                                                                    M_VLBENE := uFuncoes.Gerapercentual(W_VLSALA,M_PEBENE) * M_QTBENE;
                                                        End;
                                               End
                                               Else
                                               begin
                                                             If (dmFolha.cdsLancBeneficios.FieldByName('LAN_VALOR_BENEFICIO').AsCurrency > 0) Then
                                                              begin
                                                                   M_VLBENE := dmFolha.cdsLancBeneficios.FieldByName('LAN_VALOR_BENEFICIO').AsCurrency;
                                                                   M_PEBENE := 0;
                                                              End;
                                               End;
                                               //
                                               IF (M_DESBEN = 1) Then
                                                  Begin
                                                               M_VLRECE := M_VLRECE + M_VLBENE;
                                                               M_TOBENE := M_TOBENE + M_VLBENE;
                                                  End
                                                  ELSE
                                                               M_VLRECE := M_VLRECE - M_VLBENE;
                                          End;  //FIM-SE
                                       End;
                                      //
                                  End;   // FIM-SE
                           End;  // fim-do-with
                    End; // fim-se   M_CDBENE > 100
           //
           M_VLBENEFICIO := M_VLBENEFICIO + M_VLRECE;
           //
           dmFolha.cdsLancBeneficios.Next;
       End;  // fim-do-enquanto
       //
       result := M_VLBENEFICIO;
end;

procedure TdmFolha.dspHorariosGetTableName(Sender: TObject;
  DataSet: TDataSet; var TableName: String);
begin
     TableName := 'HORARIOS';
end;

procedure TdmFolha.ObtemImagemDoBanco(var imgDestino: TImage);
Var
  jpgImg: TJPEGImage;
  stMem: TMemoryStream;
begin
  //
  jpgImg := TJPEGImage.Create;
  stMem := TMemoryStream.Create;
  Try
      dmFolha.cdsFuncionariosFUN_FOTO.SaveToStream( stMem );
      // dmFolha2.qryLocCliente
      stMem.Position := 0;
      jpgImg.LoadFromStream( stMem );
      imgDestino.Picture.Assign( jpgImg );
  Finally
        stMem.Free;
        jpgImg.Free;
  End;
end;

procedure TdmFolha.dspFeriadosGetTableName(Sender: TObject;
  DataSet: TDataSet; var TableName: String);
begin
     TableName := 'FERIADOS';
end;

procedure TdmFolha.dspPontoGetTableName(Sender: TObject; DataSet: TDataSet;
  var TableName: String);
begin
     TableName := 'PONTO';
end;

procedure TdmFolha.dspUsuariosGetTableName(Sender: TObject;
  DataSet: TDataSet; var TableName: String);
begin
      TableName := 'USUARIOS';
end;

function TdmFolha.VerificarFalta(aIdFunc: Integer; aData: TDate): Boolean;
Var
   qryConsulta : TSQLQuery;
begin
     result := False;
     //
     qryConsulta := TSQLQuery.Create(nil);
     With qryConsulta do  // dmFolha2.qryConsulta
      try
           SQLConnection := sqlCon_Folha;
           Close;
           SQL.Add('Select PNT_FUNCIONARIO from PONTO Where (PNT_FUNCIONARIO = :pID)');
           SQL.Add(' and (PNT_DATAENTRADA = :pDATA) and (PNT_FLPRESENCA = :pFLUXO)');
           Params[0].AsInteger := aIdFunc;
           Params[1].AsDate    := aData;
           Params[2].AsString  := 'N';
           Open;
           //
           If not (IsEmpty) Then
             Result := True;
      Finally
           Free;
      End;
end;

procedure TdmFolha.sqlCon_FolhaBeforeConnect(Sender: TObject);
Var 
	ConfigIni : TIniFile;
	Path, aFile : String;
Begin
  aFile := ExtractFilePath(ParamStr(0)) + 'fbclient.dll';
  sqlCon_Folha.VendorLib := aFile;
	ConfigIni := TIniFile.Create(ExtractFilePath(ParamStr(0)) + 'Config.ini');
	sqlCon_Folha.Params.Values['Database'] := ConfigIni.ReadString('CONFIG','DATABASE','');
	ConfigIni.Free;
{	ConfigIni := TIniFile.Create(ExtractFilePath(ParamStr(0)) + 'Config.ini');
	sqlCon_Folha.Params.Values['Database'] := ConfigIni.ReadString('CONFIG','DATABASE','');
	ConfigIni.Free;}
end;

procedure TdmFolha.Comit(aTransc: TTransactionDesc);
begin
     sqlCon_Folha.Commit(aTransc);
end;

procedure TdmFolha.Rollback;
begin
     sqlCon_Folha.Rollback(Transc);
     raise Exception.Create(MSG_ERROR);
end;

procedure TdmFolha.Start;
begin
     Transc.IsolationLevel := xilREADCOMMITTED;
     Transc.TransactionID  := StrToInt(uFuncoes.IDTransation);
     sqlCon_Folha.StartTransaction(Transc);
end;

function TdmFolha.GetNomeEmpresa(iCodigo: Integer): String;
var qraux : TSQLquery;
    texto : string;
begin
  texto  := 'Select EMP_CODIGO, EMP_FANTASIA, EMP_RAZAO from EMPRESAS Where (EMP_CODIGO = :pCODIGO) ';
  //
  QrAux := TSqlquery.Create(nil);
  with QrAux do
   try
       SQLConnection := sqlCon_Folha;
       sql.Add(texto);
       Params.ParamByName('pCODIGO').AsInteger := iCodigo;
       Open;
       //
       If not (IsEmpty) Then
         result := FieldByName('EMP_FANTASIA').AsString;
   finally
      free;
   end;
end;

function TdmFolha.GetNomeFuncionario(iCodigo: Integer): String;
var qraux : TSQLquery;
    texto : string;
begin
  texto  := 'Select FUN_MATRICULA, FUN_NOME from FUNCIONARIOS Where (FUN_MATRICULA = :pCODIGO) ';
  //
  QrAux := TSqlquery.Create(nil);
  with QrAux do
   try
       SQLConnection := sqlCon_Folha;
       sql.Add(texto);
       Params.ParamByName('pCODIGO').AsInteger := iCodigo;
       Open;
       //
       If not (IsEmpty) Then
         result := FieldByName('FUN_NOME').AsString;
   finally
      free;
   end;
end;

procedure TdmFolha.RefreshCDS(aDateSet: TClientDataSet);
begin
     aDateSet.Close;
     aDateSet.Open;
end;

function TdmFolha.GerarFolha(iEmpresa: Integer; aDataPagamento: TDate;
  aFolha, aFluxoFechar: String): Boolean;
Var
    M_FLFECH, RESP, M_FLFERIAS, M_FLGERA : String;
    M_QTFILH, M_HORA, M_MINUTO, Cont , Total : Integer;
    M_QTHORA, M_PEHORA : Double;
    M_SLBRUT, M_VLBASE, M_TOHORA, M_TOBENE : Double;
    M_VLINSS, M_DESDEP, M_BENFER : Double;
    M_DTGERA : TDate;
    M_HOGERA, M_NMFUNC, M_VALES, M_CPFCGC, M_NMBENE, M_NMDESC, M_FLFIXO : String;
    M_CDFUNC, M_CDBENE, M_DESBEN : Integer;
    M_VLSALA, M_VLRECE, M_VLBENE, M_PEBENE, M_QTBENE : Double;
    //M_VLSALA, M_VLBENE, M_PEBENE : Double;
    qryUpdate, qryConsulta : TSQLQuery;
begin
     Result := false;
     //
     Start;
     //
     Try
               //
               If (aFluxoFechar = 'S' ) Then
                   M_FLFECH := 'S'
               Else
                   M_FLFECH := 'N';
               //
               dmFolha.parametros;
               //
               M_DESDEP := dmFolha.cdsConfig.FieldByName('CFG_DESCONTO_DEPENDENTE').AsFloat;
               //
               IF (M_FLFECH = 'S') Then
                begin
                    qryUpdate := TSQLQuery.Create(nil);
                    //    Atualiza EMPRESA
                     With qryUpdate do
                       try
                           SQLConnection := sqlCon_Folha;
                           SQL.Clear;
                           Close;
                           SQL.Add('Update EMPRESAS SET EMP_FOLHA = :pFOLHA');
                           SQL.Add('Where (EMP_CODIGO = :pCODIGO)');
                           Params.ParamByName('pCODIGO').AsInteger := iEmpresa;
                           Params.ParamByName('pFOLHA').AsString   := aFolha;
                           ExecSQL();
                       Finally
                           Free;
                       End;
                End;
                //  Atualizar FOLHA
                qryUpdate := TSQLQuery.Create(nil);
                With qryUpdate do
                   try
                       SQLConnection := sqlCon_Folha;
                       SQL.Clear;
                       Close;
                       SQL.Add('Delete from FOLHA Where (FOL_CODIGO = :pCODIGO)');
                       SQL.Add('and (FOL_EMPRESA = :pEMPRESA)');
                       Params.ParamByName('pCODIGO').AsString := aFolha;
                       Params.ParamByName('pEMPRESA').AsInteger := iEmpresa;
                       ExecSQL();
                   Finally
                       Free;
                   End;
               //
               M_DTGERA := DATE();
               M_HOGERA := TimeToStr(Time());
               M_PEHORA := dmFolha.cdsConfig.FieldByName('CFG_PEHORAEXTRAS').AsFloat;
               //
               With cdsFuncionarios2 do
                begin
                     Active := False;
                     Params.ParamByName('pEMPRESA').AsInteger := iEmpresa;
                     Active := True;
                     //
                     Total := cdsFuncionarios2.RecordCount;
                     //BmsXPProgressBar1.Position := 0;
                     Cont  := 0;
                     //
                     If Not (IsEmpty) Then
                     begin
                          First;
                          While not (Eof) do
                          begin
                              M_SLBRUT := 0;
                              M_VLBASE := 0;
                              M_TOHORA := 0;
                              M_TOBENE := 0;
                              M_VLINSS := 0;
                              M_FLGERA := 'S';
                              //
                              If not uFuncoes.Empty(FieldByName('FUN_DTINICIO_FERIAS').AsString)
                                and not uFuncoes.Empty(FieldByName('FUN_DTFIM_FERIAS').AsString) Then
                                 begin
                                      If (M_DTGERA < FieldByName('FUN_DTINICIO_FERIAS').AsDateTime)
                                         or (M_DTGERA > FieldByName('FUN_DTFIM_FERIAS').AsDateTime) Then
                                             M_FLFERIAS := 'N'
                                         Else
                                             M_FLFERIAS := 'S';
                                 End
                                 Else
                                     M_FLFERIAS := 'N';
                              //
                              {If NOT (FieldByName('FUN_DTFIM_FERIAS').IsNull)
                                and (Date() > FieldByName('FUN_DTINICIO_FERIAS').AsDateTime) Then
                                 If (uFuncoes.SubData(FieldByName('FUN_DTFIM_FERIAS').AsDateTime) < 10) Then
                                    M_FLGERA := 'N';}
                              //
                              If (FieldByName('FUN_EMPRESA').AsInteger = iEmpresa)
                                and (FieldByName('FUN_RECISAO').IsNull)
                                and (M_FLGERA = 'S') Then
                                begin
                                     M_CDFUNC := FieldByName('FUN_MATRICULA').AsInteger;
                                     M_NMFUNC := FieldByName('FUN_NOME').AsString;
                                     M_VALES  := FieldByName('FUN_VALETRANS').AsString;
                                     M_VLSALA := FieldByName('FUN_SALARIO').AsCurrency;
                                     M_CPFCGC := FieldByName('FUN_CPF').AsString;
                                     M_QTFILH := FieldByName('FUN_QTFILHOS').AsInteger;
                                     M_QTHORA := FieldByName('FUN_HORAS_TRABALHO').AsInteger;
                                     M_VLRECE := 0;
                                     //
                                     //  BENEFICIOS FIXOS - SALARIO BASE - 0001
                                     //
                                     M_CDBENE := 1;
                                     M_NMBENE := 'SALARIO BASE';
                                     M_QTBENE := 1;
                                     M_DESBEN := 1;
                                     M_VLBENE := M_VLSALA;
                                     M_PEBENE := 0;
                                     M_NMDESC := '';
                                     //
                                     qryConsulta := TSQLQuery.Create(nil);
                                     //
                                     With qryConsulta do
                                       try
                                          SQLConnection := sqlCon_Folha;
                                          SQL.Clear;
                                          Close;
                                          SQL.Add('Select DCB_CODIGO, DCB_DESCRICAO, DCB_VALOR, DCB_PERCENTUAL from DESCONTOS_BENEFICIO');
                                          SQL.Add('Where (DCB_CODIGO = :pCODIGO)');
                                          Params.ParamByName('pCODIGO').AsInteger := M_CDBENE;
                                          Open;
                                          //
                                          If not (IsEmpty) Then
                                              M_NMBENE := qryConsulta.FieldByName('DCB_DESCRICAO').AsString;
                                          //
                                          M_VLRECE := M_VLRECE + M_VLBENE;
                                          //
                                          REC_FOLHA(aFolha, M_NMBENE, M_NMDESC, M_HOGERA,
                                                    M_CDFUNC, M_CDBENE, M_DESBEN, iEmpresa,
                                                    M_QTBENE, M_VLBENE, M_PEBENE, M_DTGERA);
                                        Finally
                                             Free;
                                        End;
                                       //End;      // Fim-do-With
                                     //
                                     // BENEFICIOS FIXOS - SALARIO FAMILIA - 004
                                     //
                                     M_CDBENE := 4;
                                     M_NMBENE := 'SALARIO FAMILIA';
                                     M_QTBENE := M_QTFILH;
                                     M_DESBEN := 1;
                                     M_NMDESC := '';
                                     //
                                     qryConsulta := TSQLQuery.Create(nil);
                                     //
                                     With qryConsulta do
                                      try
                                          SQLConnection := sqlCon_Folha;
                                          SQL.Clear;
                                          Close;
                                          SQL.Add('Select DCB_CODIGO, DCB_DESCRICAO, DCB_VALOR, DCB_PERCENTUAL from DESCONTOS_BENEFICIO');
                                          SQL.Add('Where (DCB_CODIGO = :pCODIGO)');
                                          Params.ParamByName('pCODIGO').AsInteger := M_CDBENE;
                                          Open;
                                          //
                                          If not (IsEmpty) Then
                                          begin
                                              //dmFolha2.cdsConsulta.Close;
                                              //With dmFolha2.dstConsulta do
                                              With dmFolha2.cdsConsulta do
                                                begin
                                                     Active := False;
                                                     CommandText := 'Select * from SALARIO_FAMILIA Where (SFM_FAIXA >= :pFAIXA)';
                                                     Params.ParamByName('pFAIXA').AsFloat := M_VLSALA;
                                                     Active := True;
                                               End;
                                              dmFolha2.cdsConsulta.FetchParams;
                                              dmFolha2.cdsConsulta.Open;
                                              dmFolha2.cdsConsulta.First;
                                              //     Aqui
                                              If not (dmFolha2.cdsConsulta.IsEmpty)
                                               and (M_QTBENE > 0) and (dmFolha2.cdsConsulta.FieldByName('SFM_VALOR').AsFloat > 0) Then
                                              begin
                                                   M_VLBENE := dmFolha2.cdsConsulta.FieldByName('SFM_VALOR').AsFloat;
                                                   M_NMBENE := qryConsulta.FieldByName('DCB_DESCRICAO').AsString;
                                                   M_PEBENE := 0;
                                                   M_VLRECE := M_VLRECE + (M_VLBENE * M_QTBENE);
                                                   //
                                                   //REC_FOLHA;
                                                   REC_FOLHA(aFolha, M_NMBENE, M_NMDESC, M_HOGERA,
                                                    M_CDFUNC, M_CDBENE, M_DESBEN, iEmpresa,
                                                    M_QTBENE, M_VLBENE, M_PEBENE, M_DTGERA);
                                              End;
                                          End;
                                       Finally
                                           Free;
                                       End;
                                     //End; // fim-do-with
                                     //
                                     //  DESCONTOS FIXOS - VALE ADIANTAMENTO - 005
                                     //
                                     M_CDBENE := 5;
                                     M_NMBENE := 'VALE ADIANTAMENTO';
                                     M_QTBENE := 1;
                                     M_DESBEN := 2;
                                     M_NMDESC := '';
                                     //
                                     qryConsulta := TSQLQuery.Create(nil);
                                     //
                                     With qryConsulta do
                                      try
                                           SQLConnection := sqlCon_Folha;
                                           SQL.Clear;
                                           Close;
                                           SQL.Add('Select DCB_CODIGO, DCB_DESCRICAO, DCB_VALOR, DCB_PERCENTUAL from DESCONTOS_BENEFICIO');
                                           SQL.Add('Where (DCB_CODIGO = :pCODIGO)');
                                           Params.ParamByName('pCODIGO').AsInteger := M_CDBENE;
                                           Open;
                                           //
                                           If not (IsEmpty) Then
                                              M_NMBENE := FieldByName('DCB_DESCRICAO').AsString;
                                       Finally
                                           Free;
                                       End;
                                      //End;  // fom-do-with
                                      //
                   	                  //  Movimento
                                      //
                                      //dmFolha.cdsMovimento.close;
                                      //With dmFolha.dstMovimento do
                                      With dmFolha.cdsMovimento do
                                        begin
                                             Active := False;
                                             CommandText := 'Select * from MOVIMENTO Where (MOV_MATRICULA = :pMATRICULA)';
                                             Params.ParamByName('pMATRICULA').AsInteger := M_CDFUNC;
                                             Active := True;
                                        End;
                                      dmFolha.cdsMovimento.FetchParams;
                                      dmFolha.cdsMovimento.Open;
                                      //
                                      If not (dmFolha.cdsMovimento.IsEmpty) Then
                                      begin
                                           dmFolha.cdsMovimento.First;
                                           While not (dmFolha.cdsMovimento.Eof) do
                                            begin
                                                 M_VLBENE := dmFolha.cdsMovimento.FieldByName('MOV_VALOR').AsCurrency;
                                                 M_NMDESC := dmFolha.cdsMovimento.FieldByName('MOV_TITULO').AsString;
                                                 //
                                                 If (M_FLFECH = 'S') Then
                                                  begin
                                                       dmFolha.cdsMovimento.Edit;
                                                       dmFolha.cdsMovimento.FieldByName('MOV_FOLHA').AsString := aFolha;
                                                       dmFolha.cdsMovimento.Post;
                                                  End;
                                                 //
                                                 M_VLRECE := M_VLRECE - M_VLBENE;
                                                 //
                                                 //REC_FOLHA;
                                                 REC_FOLHA(aFolha, M_NMBENE, M_NMDESC, M_HOGERA,
                                                    M_CDFUNC, M_CDBENE, M_DESBEN, iEmpresa,
                                                    M_QTBENE, M_VLBENE, M_PEBENE, M_DTGERA);
                                                 //
                                                 dmFolha.cdsMovimento.Next;
                                            End;
                                            //
                                            dmFolha.cdsMovimento.ApplyUpdates(0);
                                      End;
                                      //
                                      // DESCONTOS - FALTAS - 006
                                      //
                                      M_CDBENE := 6;
                                      M_NMBENE := 'FALTAS';
                                      M_QTBENE := 0;
                                      M_DESBEN := 2;
                                      M_NMDESC := '';
                                      //
                                      qryConsulta := TSQLQuery.Create(nil);
                                      With qryConsulta do
                                        try
                                           SQLConnection := sqlCon_Folha;
                                           SQL.Clear;
                                           Close;
                                           SQL.Add('Select DCB_CODIGO, DCB_DESCRICAO, DCB_VALOR, DCB_PERCENTUAL from DESCONTOS_BENEFICIO');
                                           SQL.Add('Where (DCB_CODIGO = :pCODIGO)');
                                           Params.ParamByName('pCODIGO').AsInteger := M_CDBENE;
                                           Open;
                                           //
                                           If not (IsEmpty) Then
                                           Begin
                                              ////dmFolha2.cdsConsulta.Close;
                                              // With dmFolha2.dstConsulta do
                                              With dmFolha2.cdsConsulta do
                                                begin
                                                     Active := False;
                                                     CommandText := 'Select * from FALTAS Where (FUN_MATRICULA = :pMATRICULA) AND (FAL_FOLHA = :pFOLHA)';
                                                     Params.ParamByName('pMATRICULA').AsInteger := M_CDFUNC;
                                                     Params.ParamByName('pFOLHA').AsString      := uFuncoes.Replicate (' ',6);
                                                     Active := True;
                                               End;
                                              {dmFolha2.cdsConsulta.FetchParams;
                                              dmFolha2.cdsConsulta.Open;}
                                              If not (dmFolha2.cdsConsulta.IsEmpty) Then
                                              begin
                                                   M_QTBENE := dmFolha2.cdsConsulta.RecordCount;
                                                   //
                                                   If (M_FLFECH = 'S') then
                                                    begin
                                                          dmFolha2.cdsConsulta.First;
                                                          While not (dmFolha2.cdsConsulta.Eof) do
                                                            begin
                                                                 dmFolha2.cdsConsulta.Edit;
                                                                 dmFolha2.cdsConsulta.FieldByName('FAL_FOLHA').AsString := aFolha;
                                                                 //
                                                                 dmFolha2.cdsConsulta.Next;
                                                            End;
                                                            dmFolha2.cdsConsulta.ApplyUpdates(0);
                                                    End;
                                                   //
                                                   M_NMBENE := qryConsulta.FieldByName('DCB_DESCRICAO').AsString;
                                                   M_PEBENE := qryConsulta.FieldByName('DCB_PERCENTUAL').AsFloat;
                                                   //
                                                   M_VLBENE := uFuncoes.Arredondar((M_VLSALA/M_QTHORA)*M_QTBENE,2);
                                                   //
                                                   //REC_FOLHA;
                                                   REC_FOLHA(aFolha, M_NMBENE, M_NMDESC, M_HOGERA,
                                                    M_CDFUNC, M_CDBENE, M_DESBEN, iEmpresa,
                                                    M_QTBENE, M_VLBENE, M_PEBENE, M_DTGERA);
                                              End;
                                           End;
                                        Finally
                                              Free;
                                        End;
                                      //End;  // fom-do-with
                                      //
                                      // DESCONTOS - HORA EXTRA - 007
                                      //
                                      M_CDBENE := 7;
                                      M_NMBENE := 'HORAS EXTRAS';
                                      M_QTBENE := 0;
                                      M_DESBEN := 1;
                                      M_NMDESC := '';
                                      //
                                      qryConsulta := TSQLQuery.Create(nil);
                                      With qryConsulta do
                                       try
                                           SQLConnection := sqlCon_Folha;
                                           SQL.Clear;
                                           Close;
                                           SQL.Add('Select DCB_CODIGO, DCB_DESCRICAO, DCB_VALOR, DCB_PERCENTUAL from DESCONTOS_BENEFICIO');
                                           SQL.Add('Where (DCB_CODIGO = :pCODIGO)');
                                           Params.ParamByName('pCODIGO').AsInteger := M_CDBENE;
                                           Open;
                                           //
                                           If not (IsEmpty) Then
                                           Begin
                                              //dmFolha2.cdsConsulta.Close;
                                              With dmFolha2.cdsConsulta do
                                                begin
                                                     Active := False;
                                                     CommandText := 'Select * from HORAS_EXTRAS Where (FUN_MATRICULA = :pMATRICULA) AND (HOR_FOLHA = :pFOLHA)';
                                                     Params.ParamByName('pMATRICULA').AsInteger := M_CDFUNC;
                                                     Params.ParamByName('pFOLHA').AsString      := uFuncoes.Replicate (' ',6);
                                                     Active := True;
                                               End;
                                              {dmFolha2.cdsConsulta.FetchParams;
                                              dmFolha2.cdsConsulta.Open;}
                                              If not (dmFolha2.cdsConsulta.IsEmpty ) Then
                                              begin
                                                   dmFolha2.cdsConsulta.First;
                                                   M_HORA   := 0;
                                                   M_MINUTO := 0;
                                                   While not (dmFolha2.cdsConsulta.Eof) do
                                                    begin
                                                         dmFolha2.cdsConsulta.Edit;
                                                         //
                                                         M_HORA   := M_HORA + StrtoInt(Copy(uFuncoes.DifHora(dmFolha2.cdsConsulta.FieldByName('HOR_HOINICIAL').AsString,
                                                                             dmFolha2.cdsConsulta.FieldByName('HOR_HOFINAL').AsString),1,2));
                                                         M_MINUTO := M_MINUTO + StrToInt(Copy(uFuncoes.DifHora(dmFolha2.cdsConsulta.FieldByName('HOR_HOINICIAL').AsString,
                                                                             dmFolha2.cdsConsulta.FieldByName('HOR_HOFINAL').AsString),4,2));
                                                         If M_MINUTO >= 60 Then
                                                         Begin
                                                               M_HORA   := M_HORA + 1;
                                                               M_MINUTO := 0;
                                                         end;
                                                         If (M_FLFECH = 'S') then
                                                            dmFolha2.cdsConsulta.FieldByName('HOR_FOLHA').AsString := aFolha;
                                                         // Proximo
                                                         dmFolha2.cdsConsulta.next;
                                                    End;
                                                   dmFolha2.cdsConsulta.ApplyUpdates(0);
                                                   //
                                                   M_QTBENE := M_HORA + (M_MINUTO/60);
                                                   M_NMBENE := qryConsulta.FieldByName('DCB_DESCRICAO').AsString;
                                                   M_PEBENE := qryConsulta.FieldByName('DCB_PERCENTUAL').AsFloat;
                                                   //
                                                   //M_VLBENE := (M_VLSALA/M_QTHORA) * M_QTBENE;
                                                   M_VLBENE := (M_VLSALA/M_QTHORA);
                                                   M_VLBENE := M_VLBENE + uFuncoes.Arredondar(uFuncoes.Gerapercentual(M_VLBENE , M_PEHORA),2);
                                                   M_TOHORA := M_VLBENE;
                                                   //M_TOHORA := M_VLBENE * M_QTBENE;
                                                   //
                                                   //REC_FOLHA;
                                                   REC_FOLHA(aFolha, M_NMBENE, M_NMDESC, M_HOGERA,
                                                    M_CDFUNC, M_CDBENE, M_DESBEN, iEmpresa,
                                                    M_QTBENE, M_VLBENE, M_PEBENE, M_DTGERA);
                                              End;
                                           End;
                                        Finally
                                              Free;
                                        End;
                                      //End;  // fom-do-with
                                     //
                                     //  BENEFICIOS FIXOS - FGTS - 0051
                                     //
                                     M_CDBENE := 51;
                                     M_NMBENE := 'FGTS';
                                     M_QTBENE := 1;
                                     M_DESBEN := 2;
                                     M_NMDESC := '';
                                     //
                                     qryConsulta := TSQLQuery.Create(nil);
                                     With qryConsulta do
                                       try
                                          SQLConnection := sqlCon_Folha;
                                          SQL.Clear;
                                          Close;
                                          SQL.Add('Select DCB_CODIGO, DCB_DESCRICAO, DCB_VALOR, DCB_PERCENTUAL from DESCONTOS_BENEFICIO');
                                          SQL.Add('Where (DCB_CODIGO = :pCODIGO)');
                                          Params.ParamByName('pCODIGO').AsInteger := M_CDBENE;
                                          Open;
                                          //
                                          If not (IsEmpty) Then
                                          begin
                                              M_NMBENE := qryConsulta.FieldByName('DCB_DESCRICAO').AsString;
                                              M_PEBENE := qryConsulta.FieldByName('DCB_PERCENTUAL').AsFloat;
                                              //M_VLBENE := 0;
                                              M_VLBENE := uFuncoes.Gerapercentual(M_VLSALA,M_PEBENE) * M_QTBENE;
                                              M_VLRECE := M_VLRECE - (uFuncoes.Arredondar(M_PEBENE * M_VLSALA /100,2) * M_QTBENE);
                                              //
                                              //REC_FOLHA;
                                              REC_FOLHA(aFolha, M_NMBENE, M_NMDESC, M_HOGERA,
                                                    M_CDFUNC, M_CDBENE, M_DESBEN, iEmpresa,
                                                    M_QTBENE, M_VLBENE, M_PEBENE, M_DTGERA);
                                          End;
                                       Finally
                                            Free;
                                       End;
                                     //End;      // Fim-do-With
                                     //
                                     // DESCONTOS FIXOS - VALE TRANSPORTE - 0052
                                     //
                                     If (M_VALES = 'S') and (M_FLFERIAS = 'N') Then
                                     begin
                                        M_CDBENE := 52;
                                        M_NMBENE := 'VALE TRANSPORTE';
                                        M_QTBENE := 1;
                                        M_DESBEN := 2;
                                        M_NMDESC := '';
                                        //
                                        qryConsulta := TSQLQuery.Create(nil);
                                        With qryConsulta do
                                         try
                                              SQLConnection := sqlCon_Folha;
                                              SQL.Clear;
                                              Close;
                                              SQL.Add('Select DCB_CODIGO, DCB_DESCRICAO, DCB_VALOR, DCB_PERCENTUAL from DESCONTOS_BENEFICIO');
                                              SQL.Add('Where (DCB_CODIGO = :pCODIGO)');
                                              Params.ParamByName('pCODIGO').AsInteger := M_CDBENE;
                                              Open;
                                              //
                                              If not (IsEmpty) Then
                                              begin
                                                   //M_VLBENE := 0;
                                                   M_PEBENE := qryConsulta.FieldByName('DCB_PERCENTUAL').AsFloat;
                                                   M_VLBENE := uFuncoes.Gerapercentual(M_VLSALA,M_PEBENE) * M_QTBENE;
                                                   M_NMBENE := qryConsulta.FieldByName('DCB_DESCRICAO').AsString;
                                                   M_VLRECE := M_VLRECE - (uFuncoes.Arredondar(M_PEBENE * M_VLSALA /100,2) * M_QTBENE);
                                                   //
                                                   //REC_FOLHA;
                                                   REC_FOLHA(aFolha, M_NMBENE, M_NMDESC, M_HOGERA,
                                                    M_CDFUNC, M_CDBENE, M_DESBEN, iEmpresa,
                                                    M_QTBENE, M_VLBENE, M_PEBENE, M_DTGERA);
                                              End;
                                           Finally
                                               Free;
                                           End;
                                         //End; // fim-do-with
                                        //
                                     End;   //fim-se- optante por vales
                                      //
                                      // DESCONTOS E BENEFICIOS - LANCADOS - NNNN
                                      //
                                      dmFolha.cdsLancBeneficios.Close;
                                      With dmFolha.dstLancamentoBeneficios do
                                        begin
                                             Active := False;
                                             CommandText := 'Select * from LANCAMENTOS Where (FUN_MATRICULA = :pMATRICULA) ';
                                             Params.ParamByName('pMATRICULA').AsInteger := M_CDFUNC;
                                             Active := True;
                                        End;
                                      dmFolha.cdsLancBeneficios.FetchParams;
                                      dmFolha.cdsLancBeneficios.Open;
                                      If not(dmFolha.cdsLancBeneficios.IsEmpty) Then
                                      begin
                                           M_BENFER := 0;
                                           //
                                           dmFolha.cdsLancBeneficios.First;
                                           WHILE not (dmFolha.cdsLancBeneficios.EOF) do
                                           begin
                                                M_CDBENE := dmFolha.cdsLancBeneficios.FieldByName('DCB_CODIGO').AsInteger;
                                                M_QTBENE := dmFolha.cdsLancBeneficios.FieldByName('LAN_QUANTIDADE').AsInteger;
                                                M_VLBENE := dmFolha.cdsLancBeneficios.FieldByName('LAN_VALOR_BENEFICIO').AsCurrency;
                                                M_BENFER := M_BENFER + M_VLBENE;
                                                M_FLFIXO := dmFolha.cdsLancBeneficios.FieldByName('LAN_FLFIXO').AsString;
                                                M_PEBENE := 0;
                                                M_NMDESC := '';
                                                //
                                                IF (M_CDBENE > 100) Then
                                                begin
                                                     qryConsulta := TSQLQuery.Create(nil);
                                                     //With dmFolha2.qryConsulta do
                                                     With qryConsulta do
                                                     begin
                                                          SQLConnection := sqlCon_Folha;
                                                          SQL.Clear;
                                                          Close;
                                                          SQL.Add('Select DCB_CODIGO, DCB_DESCRICAO, DCB_TIPO, DCB_VALOR, DCB_PERCENTUAL from DESCONTOS_BENEFICIO');
                                                          SQL.Add('Where (DCB_CODIGO = :pCODIGO)');
                                                          Params.ParamByName('pCODIGO').AsInteger := M_CDBENE;
                                                          Open;
                                                          //    aqui
                                                          If not (IsEmpty) Then
                                                          begin
                                                               M_NMBENE := qryConsulta.FieldByName('DCB_DESCRICAO').AsString;
                                                               M_DESBEN := qryConsulta.FieldByName('DCB_TIPO').AsInteger;
                                                               //
                                                               If (M_VLBENE <= 0) then
                                                                begin
                                                                     If (qryConsulta.FieldByName('DCB_VALOR').AsFloat > 0) Then
                                                                     begin
                                                                          M_VLBENE := qryConsulta.FieldByName('DCB_VALOR').AsFloat;
                                                                          M_PEBENE := 0;
                                                                          If (M_DESBEN = 1) Then
                                                                             M_VLRECE := M_VLRECE + M_VLBENE
                                                                          Else
                                                                             M_VLRECE := M_VLRECE - M_VLBENE;
                                                                     End
                                                                     ELSE
                                                                     begin
                                                                          M_PEBENE := qryConsulta.FieldByName('DCB_PERCENTUAL').AsFloat;
                                                                          M_VLBENE := uFuncoes.Gerapercentual(M_VLSALA,M_PEBENE) * M_QTBENE;
                                                                          //
                                                                          IF (M_DESBEN = 1) then
                                                                             M_VLRECE := M_VLRECE + (uFuncoes.Arredondar(M_PEBENE * M_VLSALA /100,2) * M_QTBENE)
                                                                          Else
                                                                             M_VLRECE := M_VLRECE - (uFuncoes.Arredondar(M_PEBENE * M_VLSALA /100,2) * M_QTBENE);
                                                                     End;
                                                                End
                                                                Else
                                                                Begin
                                                                   If (qryConsulta.FieldByName('DCB_VALOR').AsFloat > 0)
                                                                    or (qryConsulta.FieldByName('DCB_PERCENTUAL').AsFloat > 0)  Then
                                                                   begin
                                                                     If (qryConsulta.FieldByName('DCB_VALOR').AsFloat > 0) Then
                                                                     begin
                                                                           M_VLBENE := qryConsulta.FieldByName('DCB_VALOR').AsFloat;
                                                                           M_PEBENE := 0;
                                                                     end
                                                                     Else
                                                                     Begin
                                                                           M_PEBENE := qryConsulta.FieldByName('DCB_PERCENTUAL').AsFloat;
                                                                           M_VLBENE := uFuncoes.Gerapercentual(M_VLSALA,M_PEBENE) * M_QTBENE;
                                                                     End;
                                                                   End
                                                                   Else
                                                                   begin
                                                                     If (dmFolha.cdsLancBeneficios.FieldByName('LAN_VALOR_BENEFICIO').AsCurrency > 0) Then
                                                                     begin
                                                                           M_VLBENE := dmFolha.cdsLancBeneficios.FieldByName('LAN_VALOR_BENEFICIO').AsCurrency;
                                                                           M_PEBENE := 0;
                                                                     End;
                                                                   End;
                                                                     //
                                                                     IF (M_DESBEN = 1) Then
                                                                     Begin
                                                                        M_VLRECE := M_VLRECE + M_VLBENE;
                                                                        M_TOBENE := M_TOBENE + M_VLBENE;
                                                                     End
                                                                     ELSE
                                                                        M_VLRECE := M_VLRECE - M_VLBENE;
                                                                End;
                                                                //
                                                                //REC_FOLHA()       // INCLUI REGISTRO
                                                                REC_FOLHA(aFolha, M_NMBENE, M_NMDESC, M_HOGERA,
                                                                         M_CDFUNC, M_CDBENE, M_DESBEN, iEmpresa,
                                                                         M_QTBENE, M_VLBENE, M_PEBENE, M_DTGERA);
                                                          End;
                                                     End;  // fim-do-with
                                                 End; // fim-se   M_CDBENE > 100
                                                 //
                                                 dmFolha.cdsLancBeneficios.Next;
                                           End;  // fim-do-enquanto
                                           //
                                          { If (M_FLFERIAS = 'S') Then
                                           begin
                                                M_CDBENE := 116;
                                                M_QTBENE := 1;
                                                M_VLBENE := uFuncoes.Arredondar((M_VLSALA + M_BENFER)/3,2);
                                                M_FLFIXO := 'N';
                                                M_PEBENE := 0;
                                                M_NMDESC := '';
                                                //
                                                M_NMBENE := '1/3 SALARIO';
                                                M_DESBEN := 1;
                                                //
                                                //REC_FOLHA()       // INCLUI REGISTRO
                                                REC_FOLHA(aFolha, M_NMBENE, M_NMDESC, M_HOGERA,
                                                    M_CDFUNC, M_CDBENE, M_DESBEN, iEmpresa,
                                                    M_QTBENE, M_VLBENE, M_PEBENE, M_DTGERA);
                                           End;    }
                                      End;       // fim-do-se  dmFolha.cdsLancBeneficios.IsEmpty
                                      //
                                      If (M_FLFERIAS = 'S') Then
                                        begin
                                             M_CDBENE := 116;
                                             M_QTBENE := 1;
                                             M_VLBENE := uFuncoes.Arredondar((M_VLSALA + M_BENFER)/3,2);
                                             M_FLFIXO := 'N';
                                             M_PEBENE := 0;
                                             M_NMDESC := '';
                                             //
                                             M_NMBENE := '1/3 SALARIO';
                                             M_DESBEN := 1;
                                             //
                                             //REC_FOLHA()       // INCLUI REGISTRO
                                             REC_FOLHA(aFolha, M_NMBENE, M_NMDESC, M_HOGERA,
                                                    M_CDFUNC, M_CDBENE, M_DESBEN, iEmpresa,
                                                    M_QTBENE, M_VLBENE, M_PEBENE, M_DTGERA);
                                        End;
                                     //
                                     //  BENEFICIOS FIXOS - INSS - 002
                                     //
                                     M_CDBENE := 2;
                                     M_NMBENE := 'INSS';
                                     M_QTBENE := 1;
                                     M_DESBEN := 2;
                                     M_NMDESC := '';
                                     // NOVO
                                     M_SLBRUT := uFuncoes.Arredondar(M_VLSALA + M_TOHORA + M_TOBENE,2);
                                     //
                                     qryConsulta := TSQLQuery.Create(nil);
                                     With qryConsulta do
                                       try
                                          SQLConnection := sqlCon_Folha;
                                          SQL.Clear;
                                          Close;
                                          SQL.Add('Select DCB_CODIGO, DCB_DESCRICAO, DCB_VALOR, DCB_PERCENTUAL from DESCONTOS_BENEFICIO');
                                          SQL.Add('Where (DCB_CODIGO = :pCODIGO)');
                                          Params.ParamByName('pCODIGO').AsInteger := M_CDBENE;
                                          Open;
                                          //
                                          If not (IsEmpty) Then
                                          begin
                                              //dmFolha2.cdsConsulta.Close;
                                              With dmFolha2.cdsConsulta do
                                                begin
                                                     Active := False;
                                                     CommandText := 'Select * from PREVIDENCIA Where (PRE_FAIXA >= :pFAIXA)';
                                                     Params.ParamByName('pFAIXA').AsFloat := M_SLBRUT;
                                                     //Params.ParamByName('pFAIXA').AsFloat := M_VLSALA;
                                                     Active := True;
                                                End;
                                             {dmFolha2.cdsConsulta.FetchParams;
                                             dmFolha2.cdsConsulta.Open;}
                                             dmFolha2.cdsConsulta.First;
                                             //
                                             If not (dmFolha2.cdsConsulta.IsEmpty)
                                               and (dmFolha2.cdsConsulta.FieldByName('PRE_PEDESCONTO').AsFloat > 0) then
                                             begin
                                                  M_NMBENE := qryConsulta.FieldByName('DCB_DESCRICAO').AsString;
                                                  M_PEBENE := dmFolha2.cdsConsulta.FieldByName('PRE_PEDESCONTO').AsFloat;
                                                  // novo
                                                  M_VLBENE := uFuncoes.Gerapercentual(M_SLBRUT,M_PEBENE) * M_QTBENE;
                                                  M_VLRECE := M_VLRECE - (uFuncoes.Arredondar(M_PEBENE * M_SLBRUT/100,2) * M_QTBENE);
                                                  M_VLINSS := uFuncoes.Arredondar(M_VLBENE,2);
                                                  {M_VLBENE := uFuncoes.Gerapercentual(M_VLSALA,M_PEBENE) * M_QTBENE;
                                                  M_VLRECE := M_VLRECE - (uFuncoes.Arredondar(M_PEBENE * M_VLSALA /100,2) * M_QTBENE);}
                                                  //REC_FOLHA;
                                                  REC_FOLHA(aFolha, M_NMBENE, M_NMDESC, M_HOGERA,
                                                    M_CDFUNC, M_CDBENE, M_DESBEN, iEmpresa,
                                                    M_QTBENE, M_VLBENE, M_PEBENE, M_DTGERA);
                                                  //
                                             End;
                                          End;
                                      Finally
                                           Free;
                                      End;
                                     //End;      // Fim-do-With
                                     //
                                     //  BENEFICIOS FIXOS - IMPOSTO DE RENDA - 003
                                     //
                                     M_CDBENE := 3;
                                     M_NMBENE := 'IMPOSTO DE RENDA';
                                     M_QTBENE := 1;
                                     M_DESBEN := 2;
                                     M_NMDESC := '';
                                     //
                                     qryConsulta := TSQLQuery.Create(nil);
                                     With qryConsulta do
                                      try
                                          SQLConnection := sqlCon_Folha;
                                          SQL.Clear;
                                          Close;
                                          SQL.Add('Select DCB_CODIGO, DCB_DESCRICAO, DCB_VALOR, DCB_PERCENTUAL from DESCONTOS_BENEFICIO');
                                          SQL.Add('Where (DCB_CODIGO = :pCODIGO)');
                                          Params.ParamByName('pCODIGO').AsInteger := M_CDBENE;
                                          Open;
                                          //
                                          If not (IsEmpty) Then
                                          begin
                                          End;
                                               //dmFolha2.cdsConsulta.Close;
                                               With dmFolha2.cdsConsulta do
                                                begin
                                                     Active := False;
                                                     CommandText := 'Select * from IMPOSTO_RENDA Where (IMR_FAIXA >= :pFAIXA)';
                                                     Params.ParamByName('pFAIXA').AsFloat := M_SLBRUT;
                                                     //Params.ParamByName('pFAIXA').AsFloat := M_VLSALA;
                                                     Active := True;
                                                End;
                                              {dmFolha2.cdsConsulta.FetchParams;
                                              dmFolha2.cdsConsulta.Open; }
                                              dmFolha2.cdsConsulta.First;
                                              //
                                              If not (dmFolha2.cdsConsulta.IsEmpty)
                                                and (dmFolha2.cdsConsulta.FieldByName('IMR_PEDESCONTO').AsFloat > 0) Then
                                              begin
                                                   M_PEBENE := dmFolha2.cdsConsulta.FieldByName('IMR_PEDESCONTO').AsFloat;
                                                   // novo
                                                   M_VLBASE := uFuncoes.Arredondar(M_SLBRUT - M_VLINSS -(M_QTFILH * M_DESDEP),2);
                                                   M_VLBENE := uFuncoes.Gerapercentual(M_VLBASE,M_PEBENE) * M_QTBENE;
                                                   M_VLRECE := M_VLRECE - (uFuncoes.Arredondar(M_PEBENE * M_VLBASE/100,2) * M_QTBENE);
                                                   {M_VLBENE := uFuncoes.Gerapercentual(M_VLSALA,M_PEBENE) * M_QTBENE;
                                                   M_VLRECE := M_VLRECE - (uFuncoes.Arredondar(M_PEBENE * M_VLSALA /100,2) * M_QTBENE);}
                                                   //REC_FOLHA;
                                                   REC_FOLHA(aFolha, M_NMBENE, M_NMDESC, M_HOGERA,
                                                    M_CDFUNC, M_CDBENE, M_DESBEN, iEmpresa,
                                                    M_QTBENE, M_VLBENE, M_PEBENE, M_DTGERA);
                                              End;
                                        Finally
                                             Free;
                                        End;
                                     //End;      // Fim-do-With
                                      //
                                      // EXCLUIR DESCONTOS E BENEFICIOS - LANCADOS - NAO FIXOS
                                      //         aqui
                                      IF (M_FLFECH = 'S') Then
                                      begin
                                           qryUpdate := TSQLQuery.Create(nil);
                                           With qryUpdate do  // dmFolha2.qryConsulta
                                            try
                                                 SQLConnection := sqlCon_Folha;
                                                 Close;
                                                 SQL.Add('Delete from LANCAMENTOS Where (FUN_MATRICULA = :pMATRICULA) AND (LAN_FLFIXO = :pFIXO)');
                                                 Params.ParamByName('pMATRICULA').AsInteger := M_CDFUNC;
                                                 Params.ParamByName('pFIXO').AsString       := 'N';
                                                 ExecSQL();
                                            Finally
                                                 Free;
                                            End;
                                            //End;

                                      End;
                                End;  // FIM-DO-SE
                               //
                               Cont := Cont + 1;
                               {BmsXPProgressBar1.Position := (Cont * 100) div Total;
                               lblPercentual.Caption := InttoStr(BmsXPProgressBar1.Position)+'%';
                               Application.ProcessMessages;}
                              // proximo Funcionário
                              Next;
                          End;  // fim-do-enquanto Funcionario
                          //
                          {IF (M_FLFECH = 'S') Then
                           begin
                                dmFolha.cdsConfig.Edit;
                                dmFolha.cdsConfigCFG_FOLHA.AsString := aFolha;
                                dmFolha.cdsConfig.ApplyUpdates(0);
                           End;}
                     End
                     Else
                     begin
                          Application.MessageBox('Não há funcionários cadastro na empresa.','Concluído',
                             MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
                          Exit;
                     End;
                End;
               //
               Comit(Transc);
               //
               Result := true;
     Except
           on Exc:Exception do
              begin
                    Application.MessageBox(PChar('Erro ao tentar gerar folha!!!'
                            + Exc.Message), 'ATENÇÃO', MB_OK+MB_ICONSTOP+MB_APPLMODAL);
                     //  Cancelar transação no BD.
                     Rollback;
              End;
     End;
end;



procedure TdmFolha.REC_FOLHA(aCDFOLH, aNMBENE, aNMDESC, aHOGERA : String;
iCDFUNC, iCDBENE, iDESBEN, iEmpresa : Integer;
fQTBENE, fVLBENE, fPEBENE : Double; aDTGERA : TDate);
begin
     With spIncDadosFolha do
      begin
           Close;
           //
           Params.ParamByName('PCODIGO').AsString      := aCDFOLH;
           Params.ParamByName('PMATRICULA').AsInteger  := iCDFUNC;
           Params.ParamByName('PBENEFICIO').AsInteger  := iCDBENE;
           Params.ParamByName('PQTBENEFICIO').AsFloat  := fQTBENE;
           Params.ParamByName('PVLBENEFICIO').AsFloat  := fVLBENE;
           Params.ParamByName('PPEBENEFICIO').AsFloat  := fPEBENE;
           Params.ParamByName('PNMBENEFICIO').AsString := aNMBENE;
           Params.ParamByName('PNMDESCRICAO').AsString := aNMDESC;
           Params.ParamByName('PDESBEN').AsString      := InttoStr(iDESBEN);
           Params.ParamByName('PDTGERACAO').AsDate     := aDTGERA;
           Params.ParamByName('PHOGERACAO').AsString   := aHOGERA;
           Params.ParamByName('PUSUARIO').AsInteger    := StrtoInt(uPrincFolha.M_CDUSUA);
           Params.ParamByName('pEMPRESA').AsInteger    := iEmpresa;
           //
           ExecProc();
      End;
end;

function TdmFolha.GetSalarioFuncionario(iCodigo: Integer): Double;
var qraux : TSQLquery;
    texto : string;
begin
  texto  := 'Select FUN_MATRICULA, FUN_SALARIO from FUNCIONARIOS Where (FUN_MATRICULA = :pCODIGO) ';
  //
  QrAux := TSqlquery.Create(nil);
  with QrAux do
   try
       SQLConnection := sqlCon_Folha;
       sql.Add(texto);
       Params.ParamByName('pCODIGO').AsInteger := iCodigo;
       Open;
       //
       If not (IsEmpty) Then
         result := FieldByName('FUN_SALARIO').AsFloat;
   finally
      free;
   end;
end;

function TdmFolha.GerarFolha13(iEmpresa: Integer; aDataPagamento: TDate;
  aFolha, aFluxoFechar: String): Boolean;
Var
    M_FLFECH, RESP, M_FLFERIAS, M_FLGERA : String;
    M_QTFILH, M_HORA, M_MINUTO, Cont , Total : Integer;
    M_QTHORA, M_PEHORA : Double;
    M_SLBRUT, M_VLBASE, M_TOHORA, M_TOBENE : Double;
    M_VLINSS, M_DESDEP, M_BENFER : Double;
    M_DTGERA : TDate;
    M_HOGERA, M_NMFUNC, M_VALES, M_CPFCGC, M_NMBENE, M_NMDESC, M_FLFIXO : String;
    M_CDFUNC, M_CDBENE, M_DESBEN : Integer;
    M_VLSALA, M_VLRECE, M_VLBENE, M_PEBENE, M_QTBENE : Double;
    //M_VLSALA, M_VLBENE, M_PEBENE : Double;
    qryUpdate, qryConsulta : TSQLQuery;
begin
     Result := false;
     //
     Start;
     //
     Try
               //
               If (aFluxoFechar = 'S' ) Then
                   M_FLFECH := 'S'
               Else
                   M_FLFECH := 'N';
               //
               dmFolha.parametros;
               //
               M_DESDEP := dmFolha.cdsConfig.FieldByName('CFG_DESCONTO_DEPENDENTE').AsFloat;
               //
               IF (M_FLFECH = 'S') Then
                begin
                   { qryUpdate := TSQLQuery.Create(nil);
                    //    Atualiza EMPRESA
                     With qryUpdate do
                       try
                           SQLConnection := sqlCon_Folha;
                           SQL.Clear;
                           Close;
                           SQL.Add('Update EMPRESAS SET EMP_FOLHA = :pFOLHA');
                           SQL.Add('Where (EMP_CODIGO = :pCODIGO)');
                           Params.ParamByName('pCODIGO').AsInteger := iEmpresa;
                           Params.ParamByName('pFOLHA').AsString   := aFolha;
                           ExecSQL();
                       Finally
                           Free;
                       End;}
                End;
                //  Atualizar FOLHA
                qryUpdate := TSQLQuery.Create(nil);
                With qryUpdate do
                   try
                       SQLConnection := sqlCon_Folha;
                       SQL.Clear;
                       Close;
                       SQL.Add('Delete from FOLHA Where (FOL_CODIGO = :pCODIGO)');
                       SQL.Add('and (FOL_EMPRESA = :pEMPRESA)');
                       Params.ParamByName('pCODIGO').AsString := aFolha;
                       Params.ParamByName('pEMPRESA').AsInteger := iEmpresa;
                       ExecSQL();
                   Finally
                       Free;
                   End;
               //
               M_DTGERA := DATE();
               M_HOGERA := TimeToStr(Time());
               M_PEHORA := dmFolha.cdsConfig.FieldByName('CFG_PEHORAEXTRAS').AsFloat;
               //
               With cdsFuncionarios2 do
                begin
                     Active := False;
                     Params.ParamByName('pEMPRESA').AsInteger := iEmpresa;
                     Active := True;
                     //
                     Total := cdsFuncionarios2.RecordCount;
                     //BmsXPProgressBar1.Position := 0;
                     Cont  := 0;
                     //
                     If Not (IsEmpty) Then
                     begin
                          First;
                          While not (Eof) do
                          begin
                              M_SLBRUT := 0;
                              M_VLBASE := 0;
                              M_TOHORA := 0;
                              M_TOBENE := 0;
                              M_VLINSS := 0;
                              M_FLGERA := 'S';
                              //
                              If (FieldByName('FUN_EMPRESA').AsInteger = iEmpresa)
                                and (FieldByName('FUN_RECISAO').IsNull)
                                and (M_FLGERA = 'S') Then
                                begin
                                     M_CDFUNC := FieldByName('FUN_MATRICULA').AsInteger;
                                     M_NMFUNC := FieldByName('FUN_NOME').AsString;
                                     M_VALES  := FieldByName('FUN_VALETRANS').AsString;
                                     M_VLSALA := FieldByName('FUN_SALARIO').AsCurrency;
                                     M_CPFCGC := FieldByName('FUN_CPF').AsString;
                                     M_QTFILH := FieldByName('FUN_QTFILHOS').AsInteger;
                                     M_QTHORA := FieldByName('FUN_HORAS_TRABALHO').AsInteger;
                                     M_VLRECE := 0;
                                     //
                                     //  BENEFICIOS FIXOS - SALARIO BASE - 0001
                                     //
                                     M_CDBENE := 1;
                                     M_NMBENE := 'SALARIO BASE';
                                     M_QTBENE := 1;
                                     M_DESBEN := 1;
                                     M_VLBENE := M_VLSALA;
                                     M_PEBENE := 0;
                                     M_NMDESC := '';
                                     //
                                     qryConsulta := TSQLQuery.Create(nil);
                                     //
                                     With qryConsulta do
                                       try
                                          SQLConnection := sqlCon_Folha;
                                          SQL.Clear;
                                          Close;
                                          SQL.Add('Select DCB_CODIGO, DCB_DESCRICAO, DCB_VALOR, DCB_PERCENTUAL from DESCONTOS_BENEFICIO');
                                          SQL.Add('Where (DCB_CODIGO = :pCODIGO)');
                                          Params.ParamByName('pCODIGO').AsInteger := M_CDBENE;
                                          Open;
                                          //
                                          If not (IsEmpty) Then
                                              M_NMBENE := qryConsulta.FieldByName('DCB_DESCRICAO').AsString;
                                          //
                                          M_VLRECE := M_VLRECE + M_VLBENE;
                                          //
                                          //If not VerificarRegistroFolha(aFolha, M_CDFUNC, M_CDBENE) Then
                                             REC_FOLHA(aFolha, M_NMBENE, M_NMDESC, M_HOGERA,
                                                      M_CDFUNC, M_CDBENE, M_DESBEN, iEmpresa,
                                                      M_QTBENE, M_VLBENE, M_PEBENE, M_DTGERA);
                                        Finally
                                             Free;
                                        End;
                                       //End;      // Fim-do-With
                                     //
                                     // BENEFICIOS FIXOS - SALARIO FAMILIA - 004
                                     //
                                     M_CDBENE := 4;
                                     M_NMBENE := 'SALARIO FAMILIA';
                                     M_QTBENE := M_QTFILH;
                                     M_DESBEN := 1;
                                     M_NMDESC := '';
                                     //
                                     qryConsulta := TSQLQuery.Create(nil);
                                     //
                                     With qryConsulta do
                                      try
                                          SQLConnection := sqlCon_Folha;
                                          SQL.Clear;
                                          Close;
                                          SQL.Add('Select DCB_CODIGO, DCB_DESCRICAO, DCB_VALOR, DCB_PERCENTUAL from DESCONTOS_BENEFICIO');
                                          SQL.Add('Where (DCB_CODIGO = :pCODIGO)');
                                          Params.ParamByName('pCODIGO').AsInteger := M_CDBENE;
                                          Open;
                                          //
                                          If not (IsEmpty) Then
                                          begin
                                              //dmFolha2.cdsConsulta.Close;
                                              //With dmFolha2.dstConsulta do
                                              With dmFolha2.cdsConsulta do
                                                begin
                                                     Active := False;
                                                     CommandText := 'Select * from SALARIO_FAMILIA Where (SFM_FAIXA >= :pFAIXA)';
                                                     Params.ParamByName('pFAIXA').AsFloat := M_VLSALA;
                                                     Active := True;
                                               End;
                                              dmFolha2.cdsConsulta.FetchParams;
                                              dmFolha2.cdsConsulta.Open;
                                              dmFolha2.cdsConsulta.First;
                                              //     Aqui
                                              If not (dmFolha2.cdsConsulta.IsEmpty)
                                               and (M_QTBENE > 0) and (dmFolha2.cdsConsulta.FieldByName('SFM_VALOR').AsFloat > 0) Then
                                              begin
                                                   M_VLBENE := dmFolha2.cdsConsulta.FieldByName('SFM_VALOR').AsFloat;
                                                   M_NMBENE := qryConsulta.FieldByName('DCB_DESCRICAO').AsString;
                                                   M_PEBENE := 0;
                                                   M_VLRECE := M_VLRECE + (M_VLBENE * M_QTBENE);
                                                   //
                                                   //REC_FOLHA;
                                                   REC_FOLHA(aFolha, M_NMBENE, M_NMDESC, M_HOGERA,
                                                    M_CDFUNC, M_CDBENE, M_DESBEN, iEmpresa,
                                                    M_QTBENE, M_VLBENE, M_PEBENE, M_DTGERA);
                                              End;
                                          End;
                                       Finally
                                           Free;
                                       End;
                                     //
                                     //  BENEFICIOS FIXOS - FGTS - 0051
                                     //
                                     M_CDBENE := 51;
                                     M_NMBENE := 'FGTS';
                                     M_QTBENE := 1;
                                     M_DESBEN := 2;
                                     M_NMDESC := '';
                                     //
                                     qryConsulta := TSQLQuery.Create(nil);
                                     With qryConsulta do
                                       try
                                          SQLConnection := sqlCon_Folha;
                                          SQL.Clear;
                                          Close;
                                          SQL.Add('Select DCB_CODIGO, DCB_DESCRICAO, DCB_VALOR, DCB_PERCENTUAL from DESCONTOS_BENEFICIO');
                                          SQL.Add('Where (DCB_CODIGO = :pCODIGO)');
                                          Params.ParamByName('pCODIGO').AsInteger := M_CDBENE;
                                          Open;
                                          //
                                          If not (IsEmpty) Then
                                          begin
                                              M_NMBENE := qryConsulta.FieldByName('DCB_DESCRICAO').AsString;
                                              M_PEBENE := qryConsulta.FieldByName('DCB_PERCENTUAL').AsFloat;
                                              //M_VLBENE := 0;
                                              M_VLBENE := uFuncoes.Gerapercentual(M_VLSALA,M_PEBENE) * M_QTBENE;
                                              M_VLRECE := M_VLRECE - (uFuncoes.Arredondar(M_PEBENE * M_VLSALA /100,2) * M_QTBENE);
                                              //
                                              //REC_FOLHA;
                                              REC_FOLHA(aFolha, M_NMBENE, M_NMDESC, M_HOGERA,
                                                    M_CDFUNC, M_CDBENE, M_DESBEN, iEmpresa,
                                                    M_QTBENE, M_VLBENE, M_PEBENE, M_DTGERA);
                                          End;
                                       Finally
                                            Free;
                                       End;
                                     //
                                     //  BENEFICIOS FIXOS - INSS - 002
                                     //
                                     M_CDBENE := 2;
                                     M_NMBENE := 'INSS';
                                     M_QTBENE := 1;
                                     M_DESBEN := 2;
                                     M_NMDESC := '';
                                     // NOVO
                                     M_SLBRUT := uFuncoes.Arredondar(M_VLSALA + M_TOHORA + M_TOBENE,2);
                                     //
                                     qryConsulta := TSQLQuery.Create(nil);
                                     With qryConsulta do
                                       try
                                          SQLConnection := sqlCon_Folha;
                                          SQL.Clear;
                                          Close;
                                          SQL.Add('Select DCB_CODIGO, DCB_DESCRICAO, DCB_VALOR, DCB_PERCENTUAL from DESCONTOS_BENEFICIO');
                                          SQL.Add('Where (DCB_CODIGO = :pCODIGO)');
                                          Params.ParamByName('pCODIGO').AsInteger := M_CDBENE;
                                          Open;
                                          //
                                          If not (IsEmpty) Then
                                          begin
                                              //dmFolha2.cdsConsulta.Close;
                                              With dmFolha2.cdsConsulta do
                                                begin
                                                     Active := False;
                                                     CommandText := 'Select * from PREVIDENCIA Where (PRE_FAIXA >= :pFAIXA)';
                                                     Params.ParamByName('pFAIXA').AsFloat := M_SLBRUT;
                                                     //Params.ParamByName('pFAIXA').AsFloat := M_VLSALA;
                                                     Active := True;
                                                End;
                                             {dmFolha2.cdsConsulta.FetchParams;
                                             dmFolha2.cdsConsulta.Open;}
                                             dmFolha2.cdsConsulta.First;
                                             //
                                             If not (dmFolha2.cdsConsulta.IsEmpty)
                                               and (dmFolha2.cdsConsulta.FieldByName('PRE_PEDESCONTO').AsFloat > 0) then
                                             begin
                                                  M_NMBENE := qryConsulta.FieldByName('DCB_DESCRICAO').AsString;
                                                  M_PEBENE := dmFolha2.cdsConsulta.FieldByName('PRE_PEDESCONTO').AsFloat;
                                                  // novo
                                                  M_VLBENE := uFuncoes.Gerapercentual(M_SLBRUT,M_PEBENE) * M_QTBENE;
                                                  M_VLRECE := M_VLRECE - (uFuncoes.Arredondar(M_PEBENE * M_SLBRUT/100,2) * M_QTBENE);
                                                  M_VLINSS := uFuncoes.Arredondar(M_VLBENE,2);
                                                  {M_VLBENE := uFuncoes.Gerapercentual(M_VLSALA,M_PEBENE) * M_QTBENE;
                                                  M_VLRECE := M_VLRECE - (uFuncoes.Arredondar(M_PEBENE * M_VLSALA /100,2) * M_QTBENE);}
                                                  //REC_FOLHA;
                                                  REC_FOLHA(aFolha, M_NMBENE, M_NMDESC, M_HOGERA,
                                                    M_CDFUNC, M_CDBENE, M_DESBEN, iEmpresa,
                                                    M_QTBENE, M_VLBENE, M_PEBENE, M_DTGERA);
                                                  //
                                             End;
                                          End;
                                      Finally
                                           Free;
                                      End;
                                     //End;      // Fim-do-With
                                     //
                                     //  BENEFICIOS FIXOS - IMPOSTO DE RENDA - 003
                                     //
                                     M_CDBENE := 3;
                                     M_NMBENE := 'IMPOSTO DE RENDA';
                                     M_QTBENE := 1;
                                     M_DESBEN := 2;
                                     M_NMDESC := '';
                                     //
                                     qryConsulta := TSQLQuery.Create(nil);
                                     With qryConsulta do
                                      try
                                          SQLConnection := sqlCon_Folha;
                                          SQL.Clear;
                                          Close;
                                          SQL.Add('Select DCB_CODIGO, DCB_DESCRICAO, DCB_VALOR, DCB_PERCENTUAL from DESCONTOS_BENEFICIO');
                                          SQL.Add('Where (DCB_CODIGO = :pCODIGO)');
                                          Params.ParamByName('pCODIGO').AsInteger := M_CDBENE;
                                          Open;
                                          //
                                          If not (IsEmpty) Then
                                          begin
                                          End;
                                               //dmFolha2.cdsConsulta.Close;
                                               With dmFolha2.cdsConsulta do
                                                begin
                                                     Active := False;
                                                     CommandText := 'Select * from IMPOSTO_RENDA Where (IMR_FAIXA >= :pFAIXA)';
                                                     Params.ParamByName('pFAIXA').AsFloat := M_SLBRUT;
                                                     //Params.ParamByName('pFAIXA').AsFloat := M_VLSALA;
                                                     Active := True;
                                                End;
                                              {dmFolha2.cdsConsulta.FetchParams;
                                              dmFolha2.cdsConsulta.Open; }
                                              dmFolha2.cdsConsulta.First;
                                              //
                                              If not (dmFolha2.cdsConsulta.IsEmpty)
                                                and (dmFolha2.cdsConsulta.FieldByName('IMR_PEDESCONTO').AsFloat > 0) Then
                                              begin
                                                   M_PEBENE := dmFolha2.cdsConsulta.FieldByName('IMR_PEDESCONTO').AsFloat;
                                                   // novo
                                                   M_VLBASE := uFuncoes.Arredondar(M_SLBRUT - M_VLINSS -(M_QTFILH * M_DESDEP),2);
                                                   M_VLBENE := uFuncoes.Gerapercentual(M_VLBASE,M_PEBENE) * M_QTBENE;
                                                   M_VLRECE := M_VLRECE - (uFuncoes.Arredondar(M_PEBENE * M_VLBASE/100,2) * M_QTBENE);
                                                   {M_VLBENE := uFuncoes.Gerapercentual(M_VLSALA,M_PEBENE) * M_QTBENE;
                                                   M_VLRECE := M_VLRECE - (uFuncoes.Arredondar(M_PEBENE * M_VLSALA /100,2) * M_QTBENE);}
                                                   //REC_FOLHA;
                                                   REC_FOLHA(aFolha, M_NMBENE, M_NMDESC, M_HOGERA,
                                                    M_CDFUNC, M_CDBENE, M_DESBEN, iEmpresa,
                                                    M_QTBENE, M_VLBENE, M_PEBENE, M_DTGERA);
                                              End;
                                        Finally
                                             Free;
                                        End;
                                End;  // FIM-DO-SE
                               //
                               Cont := Cont + 1;
                               {BmsXPProgressBar1.Position := (Cont * 100) div Total;
                               lblPercentual.Caption := InttoStr(BmsXPProgressBar1.Position)+'%';
                               Application.ProcessMessages;}
                              // proximo Funcionário
                              Next;
                          End;  // fim-do-enquanto Funcionario
                          //
                          {IF (M_FLFECH = 'S') Then
                           begin
                                dmFolha.cdsConfig.Edit;
                                dmFolha.cdsConfigCFG_FOLHA.AsString := aFolha;
                                dmFolha.cdsConfig.ApplyUpdates(0);
                           End;}
                     End
                     Else
                     begin
                          Application.MessageBox('Não há funcionários cadastro na empresa.','Concluído',
                             MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
                          Exit;
                     End;
                End;
               //
               Comit(Transc);
               //
               Result := true;
     Except
           on Exc:Exception do
              begin
                    Application.MessageBox(PChar('Erro ao tentar gerar folha!!!'
                            + Exc.Message), 'ATENÇÃO', MB_OK+MB_ICONSTOP+MB_APPLMODAL);
                     //  Cancelar transação no BD.
                     Rollback;
              End;
     End;
end;

function TdmFolha.VerificarRegistroFolha(aCodigo: String; iMatricula,
  iBeneficio: Integer): Boolean;
var qraux : TSQLquery;
    texto : string;
begin
  result := False;
  texto  := 'Select FOL_CODIGO, FUN_MATRICULA, FOL_BENEFICIO from FOLHA ';
  texto  :=  texto + 'Where (FOL_CODIGO = :pCODIGO)  and (FUN_MATRICULA = :pMATRICULA) and (FOL_BENEFICIO = :pBENEFICIO)';
  //
  QrAux := TSqlquery.Create(nil);
  with QrAux do
   try
       SQLConnection := sqlCon_Folha;
       sql.Add(texto);
       Params.ParamByName('pCODIGO').AsString     := aCodigo;
       Params.ParamByName('pMATRICULA').AsInteger := iMatricula;
       Params.ParamByName('pBENEFICIO').AsInteger := iBeneficio;
       Open;
       //
       If not (IsEmpty) Then
         result := True;
   finally
      free;
   end;
end;

end.
