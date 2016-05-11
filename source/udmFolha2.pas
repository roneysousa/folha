unit udmFolha2;

interface

uses
  SysUtils, Classes, FMTBcd, DB, DBClient, Provider, SqlExpr;

type
  TdmFolha2 = class(TDataModule)
    dstBairros: TSQLDataSet;
    dspBairros: TDataSetProvider;
    cdsBairros: TClientDataSet;
    dstBairrosBAI_CODIGO: TIntegerField;
    dstBairrosBAI_NOME: TStringField;
    dstBairrosCID_CODIGO: TIntegerField;
    cdsBairrosBAI_CODIGO: TIntegerField;
    cdsBairrosBAI_NOME: TStringField;
    cdsBairrosCID_CODIGO: TIntegerField;
    dsBairros: TDataSource;
    dstEmpresas: TSQLDataSet;
    dspEmpresas: TDataSetProvider;
    cdsEmpresas: TClientDataSet;
    cdsEmpresasEMP_CODIGO: TIntegerField;
    cdsEmpresasEMP_FANTASIA: TStringField;
    dsEmpresas: TDataSource;
    qryConsulta: TSQLQuery;
    dstFuncionarios: TSQLDataSet;
    dspFuncionarios: TDataSetProvider;
    cdsFuncionarios: TClientDataSet;
    dsFuncionarios: TDataSource;
    cdsFuncionariosFUN_MATRICULA: TIntegerField;
    cdsFuncionariosFUN_NOME: TStringField;
    dstConsulta: TSQLDataSet;
    dspConsulta: TDataSetProvider;
    cdsConsulta: TClientDataSet;
    dstEscolaridade: TSQLDataSet;
    dspEscolaridade: TDataSetProvider;
    cdsEscolaridade: TClientDataSet;
    cdsEscolaridadeESC_CODIGO: TIntegerField;
    cdsEscolaridadeESC_DESCRICAO: TStringField;
    qryLocCliente: TSQLQuery;
    qryLocClienteFUN_MATRICULA: TIntegerField;
    qryLocClienteFUN_NOME: TStringField;
    qryLocClienteFUN_FOTO: TBlobField;
    qryLocClienteCBO_DESCRICAO: TStringField;
    qryUsuarios: TSQLQuery;
  private
    { Private declarations }
  public
     procedure BAIRROS;
     procedure EMPRESAS;
     Procedure ESCOLARIDADE;
     Function SALARIO_FAMILIA(W_VLSALA : Double ) : double;
     function Validar_Horario(M_CDFUNC, M_DIASEM : Integer; M_HOINIC, M_HOFINA : String) : boolean;
     function LOCALIZAR_FUNC(M_NRMATR : Integer) : Boolean;
     function SITUACAO_FUNC(M_NRMATR, M_DIASEM : Integer; M_HOCHEG, M_HOSAID, M_FLPRES : String) : String;
    { Public declarations }
  end;

var
  dmFolha2: TdmFolha2;
  aNome, aDescCBO : String;

implementation

uses udmFolha;

{$R *.dfm}

{ TdmFolha2 }

procedure TdmFolha2.BAIRROS;
begin
     cdsBairros.Close;
     cdsBairros.Open;
end;

procedure TdmFolha2.EMPRESAS;
begin
     cdsEmpresas.Close;
     cdsEmpresas.Open;
end;

procedure TdmFolha2.ESCOLARIDADE;
begin
     cdsEscolaridade.Close;
     cdsEscolaridade.Open;
end;

function TdmFolha2.LOCALIZAR_FUNC(M_NRMATR: Integer): Boolean;
Var
   qryLocCliente : TSQLQuery;
begin
     //
     qryLocCliente := TSQLQuery.Create(nil);
     With qryLocCliente do
     try
          SQLConnection := dmFolha.sqlCon_Folha;
          Close;
          SQL.Add('Select F.FUN_MATRICULA, F.FUN_NOME, C.CBO_DESCRICAO, F.FUN_FOTO from FUNCIONARIOS F ');
          SQL.Add('INNER join CBO C ON F.FUN_CBO = C.CBO_CODIGO ');
          SQL.Add('Where (FUN_MATRICULA = :pMATRICULA) ');
          Params.ParamByName('pMATRICULA').AsInteger  := M_NRMATR;
          Open;
          //
          If not (IsEmpty) Then
           begin
              aNome := qryLocCliente.FieldByName('FUN_NOME').AsString;
              aDescCBO := qryLocCliente.FieldByName('CBO_DESCRICAO').AsString;
              result := True;
           End
          Else
              result := False;
     Finally
          Free;
     End;
end;

function TdmFolha2.SALARIO_FAMILIA(W_VLSALA : Double): double;
begin
     cdsConsulta.Close;
     With dstConsulta do
     begin
          Active := False;
          CommandText := 'Select * from SALARIO_FAMILIA Where (SFM_FAIXA >= :pFAIXA)';
          Params.ParamByName('pFAIXA').AsFloat := W_VLSALA;
          Active := True;
     End;
     //
     cdsConsulta.FetchParams;
     cdsConsulta.Open;
     cdsConsulta.First;
     //
     If not (cdsConsulta.IsEmpty) Then
          result := cdsConsulta.FieldByName('SFM_VALOR').AsFloat;
end;

function TdmFolha2.SITUACAO_FUNC(M_NRMATR, M_DIASEM: Integer; M_HOCHEG,
  M_HOSAID, M_FLPRES: String): String;

procedure DESCRICAO;
Begin
     If (cdsConsulta.FieldByName('HRA_ENTRADA').AsString = M_HOCHEG)
        and (cdsConsulta.FieldByName('HRA_SAIDA').AsString = M_HOSAID) Then
         Result := 'OK'
     Else
       If (M_FLPRES = 'S') Then
       begin
        If (cdsConsulta.FieldByName('HRA_ENTRADA').AsString > M_HOCHEG) Then
           Result := 'OK';
        If (cdsConsulta.FieldByName('HRA_ENTRADA').AsString < M_HOCHEG) Then
           Result := 'ATRASADO';
        If (cdsConsulta.FieldByName('HRA_ENTRADA').AsString >= M_HOCHEG)
          and (cdsConsulta.FieldByName('HRA_SAIDA').AsString < M_HOSAID) Then
           Result := 'HORA EXTRA';
       End
       Else
           Result := 'FALTOU';
End;

begin
     cdsConsulta.Close;
     With dstConsulta do
      begin
           Active := False;
           CommandText := 'Select * from HORARIOS Where (HRA_FUNCIONARIO = :pFUNCIONARIO) '+
                          ' and (HRA_DIASEMANA = :pDIASEMANA) ';
           Params.ParamByName('pFUNCIONARIO').AsInteger := M_NRMATR;
           Params.ParamByName('pDIASEMANA').AsInteger   := M_DIASEM;
           Active := True;
      End;
      cdsConsulta.FetchParams;
      cdsConsulta.Open;
      //
      If not (cdsConsulta.IsEmpty) Then
        begin
             If (M_HOCHEG <
                cdsConsulta.FieldByName('HRA_SAIDA').AsString ) Then
                  DESCRICAO
             Else
                if (M_HOCHEG >
                   cdsConsulta.FieldByName('HRA_SAIDA').AsString )
                 and not(cdsConsulta.Eof) Then
                begin
                     cdsConsulta.Next;
                     DESCRICAO;
                End;
        End
        Else
            result := 'FALTOU';
end;

function TdmFolha2.Validar_Horario(M_CDFUNC, M_DIASEM: Integer; M_HOINIC,
  M_HOFINA: String): boolean;
begin
     cdsConsulta.Close;
     With dstConsulta do
      begin
           Close;
           CommandText := 'Select * from HORARIOS Where (HRA_DIASEMANA = :pDIASEMANA) '+
                          'and (HRA_FUNCIONARIO = :pFUNCIONARIO)  and ((HRA_ENTRADA <= :pENTRADA) or (HRA_ENTRADA <= :pSAIDA)) AND ((HRA_SAIDA >= :pSAIDA) or (HRA_SAIDA >= :pENTRADA)) ';
           Params.ParamByName('pDIASEMANA').AsInteger   := M_DIASEM;
           Params.ParamByName('pFUNCIONARIO').AsInteger := M_CDFUNC;
           Params.ParamByName('pENTRADA').AsString      := M_HOINIC;
           Params.ParamByName('pSAIDA').AsString        := M_HOFINA;
           //
           Open;
      End;
    cdsConsulta.Open;
    //
    If (cdsConsulta.IsEmpty) Then
        Result := False
    Else
        Result := True;
    //
    cdsConsulta.Close;
end;

end.
