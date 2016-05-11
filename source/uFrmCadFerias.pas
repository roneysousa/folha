unit uFrmCadFerias;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, DBXpress, Mask, DBCtrls, ToolEdit,
  CurrEdit, FMTBcd, DB, DBClient, Provider, SqlExpr, ppDB, ppDBPipe, ppVar,
  ppCtrls, ppBands, ppClass, ppStrtch, ppMemo, ppPrnabl, ppCache, ppComm,
  ppRelatv, ppProd, ppReport;

type
  TfrmCadFerias = class(TForm)
    Panel4: TPanel;
    Panel1: TPanel;
    Panel5: TPanel;
    BtCancelar: TBitBtn;
    BtGravar: TBitBtn;
    Label10: TLabel;
    spLocalizar: TSpeedButton;
    Label1: TLabel;
    edtNome: TEdit;
    Panel2: TPanel;
    dbeMatricula: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    btAviso: TBitBtn;
    btRecibo: TBitBtn;
    edtVLRECE: TCurrencyEdit;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    edtTirar: TEdit;
    edtFLFERIA: TEdit;
    edtDTENTR: TDateEdit;
    edtDTSAID: TDateEdit;
    dstFuncionarios: TSQLDataSet;
    dspFuncionarios: TDataSetProvider;
    cdsFuncionarios: TClientDataSet;
    cdsFuncionariosFUN_MATRICULA: TIntegerField;
    cdsFuncionariosFUN_NOME: TStringField;
    cdsFuncionariosFUN_VALETRANS: TStringField;
    cdsFuncionariosFUN_SALARIO: TFMTBCDField;
    cdsFuncionariosFUN_CPF: TStringField;
    cdsFuncionariosFUN_RECISAO: TDateField;
    cdsFuncionariosFUN_QTFILHOS: TIntegerField;
    cdsFuncionariosFUN_EMPRESA: TIntegerField;
    dstRelFolha: TSQLDataSet;
    dspRelFolha: TDataSetProvider;
    cdsRelFolha: TClientDataSet;
    cdsRelFolhaFOL_VALOR: TCurrencyField;
    cdsRelFolhaFOL_PERCENTUAL: TCurrencyField;
    cdsRelFolhaFOL_VLLIQUIDO: TCurrencyField;
    cdsRelFolhaCPF: TStringField;
    dsRelFolha: TDataSource;
    ppReport1: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppImage1: TppImage;
    ppDBMemo1: TppDBMemo;
    lbl_Empresa: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBTDesBen: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppLabel15: TppLabel;
    ppFooterBand1: TppFooterBand;
    ppSystemVariable1: TppSystemVariable;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    ppLine1: TppLine;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppLabel3: TppLabel;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppShape1: TppShape;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel14: TppLabel;
    ppLine3: TppLine;
    ppShape2: TppShape;
    ppDBText3: TppDBText;
    ppShape3: TppShape;
    ppShape4: TppShape;
    ppDBText1: TppDBText;
    ppShape5: TppShape;
    ppDBText2: TppDBText;
    ppShape6: TppShape;
    ppDBText4: TppDBText;
    ppDBText11: TppDBText;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppDBCalc1: TppDBCalc;
    ppLine2: TppLine;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppDBCalc2: TppDBCalc;
    ppShape7: TppShape;
    ppVariable2: TppVariable;
    ppDBPFolha: TppDBPipeline;
    cdsFuncionariosFUN_DTINICIO_FERIAS: TDateField;
    cdsFuncionariosFUN_DTFIM_FERIAS: TDateField;
    cdsFuncionariosFUN_DTDIREITO_FERIAS: TDateField;
    cdsRelFolhaFUN_CPF: TStringField;
    cdsFuncionariosFUN_HORAS_TRABALHO: TBCDField;
    dstRelFolhaFUN_MATRICULA: TIntegerField;
    dstRelFolhaFUN_NOME: TStringField;
    dstRelFolhaFUN_ADMISSAO: TDateField;
    dstRelFolhaFUN_EMPRESA: TIntegerField;
    dstRelFolhaFOL_DTGERACAO: TDateField;
    dstRelFolhaFUN_CPF: TStringField;
    dstRelFolhaFOL_BENEFICIO: TIntegerField;
    dstRelFolhaFOL_QTBENEFICIO: TBCDField;
    dstRelFolhaFOL_PEBENEFICIO: TBCDField;
    dstRelFolhaFOL_NMBENEFICIO: TStringField;
    dstRelFolhaFOL_DESBEN: TStringField;
    dstRelFolhaFOL_VLBENEFICIO: TFMTBCDField;
    dstRelFolhaCBO_DESCRICAO: TStringField;
    cdsRelFolhaFUN_MATRICULA: TIntegerField;
    cdsRelFolhaFUN_NOME: TStringField;
    cdsRelFolhaFUN_ADMISSAO: TDateField;
    cdsRelFolhaFUN_EMPRESA: TIntegerField;
    cdsRelFolhaFOL_DTGERACAO: TDateField;
    cdsRelFolhaFOL_BENEFICIO: TIntegerField;
    cdsRelFolhaFOL_QTBENEFICIO: TBCDField;
    cdsRelFolhaFOL_PEBENEFICIO: TBCDField;
    cdsRelFolhaFOL_NMBENEFICIO: TStringField;
    cdsRelFolhaFOL_DESBEN: TStringField;
    cdsRelFolhaFOL_VLBENEFICIO: TFMTBCDField;
    cdsRelFolhaCBO_DESCRICAO: TStringField;
    procedure BtCancelarClick(Sender: TObject);
    procedure BtGravarClick(Sender: TObject);
    procedure dbeMatriculaChange(Sender: TObject);
    procedure spLocalizarClick(Sender: TObject);
    procedure dbeMatriculaKeyPress(Sender: TObject; var Key: Char);
    procedure dbeMatriculaExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dbeMatriculaEnter(Sender: TObject);
    procedure btReciboClick(Sender: TObject);
    procedure cdsRelFolhaCalcFields(DataSet: TDataSet);
    procedure ppVariable2Calc(Sender: TObject; var Value: Variant);
    procedure ppDBText9Print(Sender: TObject);
    procedure ppDBText10Print(Sender: TObject);
    procedure edtDTENTRExit(Sender: TObject);
    procedure edtDTSAIDExit(Sender: TObject);
    procedure ppDBTDesBenPrint(Sender: TObject);
  private
    { Private declarations }
    procedure BUSCAR_FUNC(M_NRMATR : Integer);
    procedure LIMPAR;
    function Gerar_Folha(M_CDEMPR, M_NRMATR : Integer; M_MESREF : String; M_DTPAGA : TDate) : Double;
    procedure REC_FOLHA;
    procedure VALOR_RECEBER;
    function Valor_Ferias(M_NRMATR : Integer; W_DTINIC : TDate) : Double;
  public
    { Public declarations }
  end;

var
  frmCadFerias: TfrmCadFerias;
  //
  M_NRMATR, M_CDFUNC, M_CDBENE, M_DESBEN, W_CDEMPR : Integer;
  M_CDFOLH, M_NMFUNC, M_VALES, M_CPFCGC, M_NMBENE, M_NMDESC, M_HOGERA, M_FLFIXO : String;
  M_VLSALA, M_VLRECE, M_VLBENE, M_PEBENE, M_QTBENE, M_VLFERI : Double;
  M_DTGERA, M_DTAQUI, M_DTGOZO : TDate;

implementation

Uses uPrincFolha, udmFolha, uFuncoes, uFrmLocFunc, udmFolha2;

{$R *.dfm}

procedure TfrmCadFerias.BtCancelarClick(Sender: TObject);
begin
      Close;
end;

procedure TfrmCadFerias.BtGravarClick(Sender: TObject);
Var
    M_DTAQUI : TDate;
    qraux : TSQLquery;
    texto : string;
begin
     If (edtDTENTR.Text = '  /  /    ') Then
       Begin
           Application.MessageBox('Digite a data de entrada de férias.','ATENÇÃO',
               MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
           edtDTENTR.SetFocus;
           Exit;
       End;
      //
     If (edtDTSAID.Text = '  /  /    ') Then
       Begin
           Application.MessageBox('Digite a data de saída de férias.','ATENÇÃO',
               MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
           edtDTSAID.SetFocus;
           Exit;
       End;
      //
      Try
          BtGravar.Enabled := False;
          //
          {TD.TransactionID  := StrtoInt(uPrincFolha.M_CDUSUA);
          TD.IsolationLevel := xilREADCOMMITTED;
          dmFolha.sqlCon_Folha.StartTransaction(TD);}
          dmFolha.Start;
          //
          Try
               With cdsFuncionarios do
                begin
                     Active := False;
                     Params.ParamByName('pMATRICULA').AsInteger := StrtoInt(dbeMatricula.Text);
                     Active := True;
                     //
                     If not (IsEmpty) Then
                      begin
                           Edit;
                           M_DTAQUI := FieldByName('FUN_DTDIREITO_FERIAS').AsDateTime;
                           FieldByName('FUN_DTINICIO_FERIAS').AsDateTime := edtDTENTR.Date;
                           FieldByName('FUN_DTFIM_FERIAS').AsDateTime    := edtDTSAID.Date;
                           FieldByName('FUN_DTDIREITO_FERIAS').AsDateTime :=
                                    IncMonth(dmFolha.cdsFuncionarios.FieldByName('FUN_DTDIREITO_FERIAS').AsDateTime,12)+1;
                           ApplyUpdates(0);
                      End;
                      //
                      Texto := 'UpDate FERIAS set FER_PERIODO_GOZO = :pDTINICAL, FER_PERIODO_GOZO_FINAL = :pFINAL';
                      Texto := Texto + ' Where (FUN_MATRICULA = :pMATRICULA) and (FER_PERIODO_AQUISICAO = :pAQUISICAO)';
                      //
                      QrAux := TSqlquery.Create(nil);
                      with QrAux do
                      try
                         SQLConnection := dmFolha.sqlCon_Folha;
                         sql.Add(texto);
                         Params.ParamByName('pMATRICULA').AsInteger := StrtoInt(dbeMatricula.Text);
                         Params.ParamByName('pAQUISICAO').AsDate    := M_DTAQUI;
                         Params.ParamByName('pDTINICAL').AsDate     := edtDTENTR.Date;
                         Params.ParamByName('pFINAL').AsDate        := edtDTSAID.Date;
                         ExecSQL();
                         //
                       //
                      finally
                        free;
                      end;
                      {With dmFolha2.qryConsulta do
                        begin
                             SQL.Clear;
                             Close;
                             SQL.Add('UpDate FERIAS set FER_PERIODO_GOZO = :pDTINICAL, FER_PERIODO_GOZO_FINAL = :pFINAL');
                             SQL.Add('Where (FUN_MATRICULA = :pMATRICULA) and (FER_PERIODO_AQUISICAO = :pAQUISICAO)');
                             Params.ParamByName('pMATRICULA').AsInteger := StrtoInt(dbeMatricula.Text);
                             Params.ParamByName('pAQUISICAO').AsDate    := M_DTAQUI;
                             Params.ParamByName('pDTINICAL').AsDate     := edtDTENTR.Date;
                             Params.ParamByName('pFINAL').AsDate        := edtDTSAID.Date;
                             ExecSQL();
                        End;}
                      //
                      Close;
                 End;
               //
               dmFolha.Comit(Transc);
               //sqlCon_Folha.Commit(TD);
               //
               Application.MessageBox('Registro gravado com sucesso.','Concluído',
                    MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
               //
               Close;
          Except
               on Exc:Exception do
                begin
                    Application.MessageBox(PChar('Erro ao tentar gravar registro!!!'
                            + Exc.Message), 'ATENÇÃO', MB_OK+MB_ICONSTOP+MB_APPLMODAL);
                     //  Cancelar transação no BD.
                     dmFolha.Rollback; 
                     //sqlCon_Folha.Rollback(TD);
                End;
          End;
      Finally
            BtGravar.Enabled := True;
      End;
end;

procedure TfrmCadFerias.dbeMatriculaChange(Sender: TObject);
begin
     If uFuncoes.Empty(dbeMatricula.Text) Then
        edtNome.Clear;
     //
     LIMPAR;
end;

procedure TfrmCadFerias.spLocalizarClick(Sender: TObject);
begin
    Application.CreateForm(TfrmLocalizarFuncionario, frmLocalizarFuncionario);
    Try
        //LIMPAR; 
        frmLocalizarFuncionario.ShowModal;
    Finally
        M_NRMATR := frmLocalizarFuncionario.cdsConsultar.FieldByname('FUN_MATRICULA').AsInteger;
        dbeMatricula.Text := inttoStr(M_NRMATR);
        //
        frmLocalizarFuncionario.Release;
        frmLocalizarFuncionario := nil;
    End;
end;

procedure TfrmCadFerias.dbeMatriculaKeyPress(Sender: TObject;
  var Key: Char);
begin
      If not( key in['0'..'9',#8, #13, #27] ) then
         key:=#0;
      //
      If (key = #27) Then
      begin
            Key := #0;
            BtCancelarClick(Sender);
      End;
      //
      if (key = #13) and uFuncoes.Empty(dbeMatricula.Text) Then
        begin
             Key := #0;
             spLocalizarClick(Sender);
        End;
end;

procedure TfrmCadFerias.dbeMatriculaExit(Sender: TObject);
begin
     If not uFuncoes.Empty(dbeMatricula.Text) Then
           If (uFuncoes.ValidarMatricula(StrtoInt(dbeMatricula.Text))) Then
            begin
                 {With dmFolha.qryConsulta do
                 begin}
                      dbeMatricula.Text := uFuncoes.StrZero(dbeMatricula.Text,7);
                      edtNome.Text      := dmFolha.GetNomeFuncionario(StrtoInt(dbeMatricula.Text));
                      //FieldByName('FUN_NOME').AsString;
                      //
                      BUSCAR_FUNC(StrtoInt(dbeMatricula.Text));
                 //End;
            End
            Else
            begin
                 Application.MessageBox('Registro de funcionário inexistente.','ATENÇÃO',
                     MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
                 //
                 dbeMatricula.Clear;
                 dbeMatricula.SetFocus;
                 Exit;
            End;
end;

procedure TfrmCadFerias.FormShow(Sender: TObject);
begin
    btAviso.Enabled  := False;
    btRecibo.Enabled := False;
    //
    BtGravar.Enabled := False;
end;

procedure TfrmCadFerias.BUSCAR_FUNC(M_NRMATR: Integer);
Var
    M_REFUNC, M_REFATU, M_FLFERI : String;
    M_DTATUA, M_DTDIRE : TDate;
begin
     M_DTATUA := Date();
     M_FLFERI := 'N';
     //
     With dmFolha.cdsFuncionarios do
     begin
          Close;
          Params.ParamByName('pMATRICULA').AsInteger  := M_NRMATR;
          Open;
          //
          If not (IsEmpty) Then
            begin
                 M_DTDIRE := FieldByName('FUN_DTDIREITO_FERIAS').AsDateTime-1;
                 M_REFUNC := uFuncoes.DIAMESREFERENCIA(FieldByName('FUN_DTDIREITO_FERIAS').AsDateTime-1);
                 M_REFATU := uFuncoes.DIAMESREFERENCIA(M_DTATUA);
                 //
                 If not (FieldByName('FUN_DTINICIO_FERIAS').IsNull)
                   and not (FieldByName('FUN_DTFIM_FERIAS').IsNull) Then
                   begin
                     If (M_DTATUA >= FieldByName('FUN_DTINICIO_FERIAS').AsDateTime)
                        and (M_DTATUA <= FieldByName('FUN_DTFIM_FERIAS').AsDateTime) Then
                            edtFLFERIA.Text := 'SIM'
                        Else
                            edtFLFERIA.Text := 'NÃO';
                   End
                   Else
                      edtFLFERIA.Text := 'NÃO';
                 //
                 If (M_DTDIRE > FieldByName('FUN_DTINICIO_FERIAS').AsDateTime)
                   or (FieldByName('FUN_DTINICIO_FERIAS').IsNull) Then
                     M_FLFERI := 'S';
                 //
                 If (M_REFATU > M_REFUNC)
                  and (M_FLFERI = 'S') Then
                  begin
                       edtDTENTR.ReadOnly := False;
                       edtDTENTR.Text := FieldByName('FUN_DTINICIO_FERIAS').AsString;
                       edtDTSAID.ReadOnly := False;
                       edtDTSAID.Text := FieldByName('FUN_DTFIM_FERIAS').AsString;
                       //
                       M_DTAQUI := FieldByName('FUN_DTDIREITO_FERIAS').AsDateTime;
                       M_DTGOZO := FieldByName('FUN_DTINICIO_FERIAS').AsDateTime;
                       //
                       edtTirar.Text  := 'SIM';
                       //
                       BtGravar.Enabled := True;
                       btAviso.Enabled  := True;
                       btRecibo.Enabled := True;
                       //
                       edtVLRECE.Value := dmFolha.GetSalarioFuncionario(M_NRMATR) + uFuncoes.Arredondar(dmFolha.GetSalarioFuncionario(M_NRMATR) / 3, 2);
                       {Gerar_Folha(FieldByName('FUN_EMPRESA').AsInteger,
                                                      M_NRMATR,
                                                      uFuncoes.MESREFERENCIA(Date()),Date());}
                  End
                  else
                  begin
                       edtDTENTR.ReadOnly := True;
                       edtDTENTR.Text := FieldByName('FUN_DTINICIO_FERIAS').AsString;
                       edtDTSAID.ReadOnly := True;
                       edtDTSAID.Text := FieldByName('FUN_DTFIM_FERIAS').AsString;

                       //
                       edtTirar.Text  := 'NÃO';
                       //
                       BtGravar.Enabled := False;
                       //
                       edtVLRECE.Value := dmFolha.GetSalarioFuncionario(M_NRMATR) + uFuncoes.Arredondar(dmFolha.GetSalarioFuncionario(M_NRMATR) / 3, 2);
                       //
                       If (edtFLFERIA.Text = 'SIM') Then
                       Begin
                            //edtVLRECE.Value := Valor_Ferias(StrToInt(dbeMatricula.Text), edtDTENTR.Date);
                            //
                            btAviso.Enabled  := True;
                            btRecibo.Enabled := True;
                       End
                       Else
                       begin
                            //edtVLRECE.Value := dmFolha.GetSalarioFuncionario(M_NRMATR) + uFuncoes.Arredondar(dmFolha.GetSalarioFuncionario(M_NRMATR) / 3, 2);
                            btAviso.Enabled  := False;
                            btRecibo.Enabled := False;
                       End;
                  End;
            End;
     End;
end;

procedure TfrmCadFerias.LIMPAR;
begin
     BtGravar.Enabled := False;
     btAviso.Enabled  := False;
     btRecibo.Enabled := False;
     //
     edtDTENTR.Clear;
     edtDTSAID.Clear;
     edtVLRECE.Clear;
     edtTirar.Clear;
     edtFLFERIA.Clear;
end;

function TfrmCadFerias.Gerar_Folha(M_CDEMPR, M_NRMATR: Integer;
  M_MESREF: String; M_DTPAGA: TDate): Double;
Var
    M_FLFECH : String;
    M_QTFILH, M_HORA, M_MINUTO : Integer;
    M_QTHORA, M_PEHORA : Double;
    M_SLBRUT, M_VLBASE, M_TOHORA, M_TOBENE : Double;
    M_VLINSS, M_DESDEP, M_BENFER : Double;
    qryAuxiliar : TSQLQuery;
begin
     //
     M_CDFOLH := M_MESREF;
     M_FLFECH := 'N';
     W_CDEMPR := M_CDEMPR;
     //
     dmFolha.parametros;
     M_DESDEP := dmFolha.cdsConfig.FieldByName('CFG_DESCONTO_DEPENDENTE').AsFloat;
     //
     qryAuxiliar := TSQLQuery.Create(nil);
     //With dmFolha2.qryConsulta do
     with qryAuxiliar do
      try
            SQLConnection := dmFolha.sqlCon_Folha;
            SQL.Clear;
            Close;
            SQL.Add('Delete from FERIAS Where (FUN_MATRICULA = :pMATRICULA)');
            SQL.Add('and (FER_PERIODO_AQUISICAO = :pAQUISICAO)');
            Params.ParamByName('pMATRICULA').AsInteger := M_NRMATR;
            Params.ParamByName('pAQUISICAO').AsDate    := dmFolha.cdsFuncionarios.FieldByName('FUN_DTDIREITO_FERIAS').AsDateTime;
            ExecSQL();
      Finally
            Free;
      End;
     //
     M_DTGERA := DATE();
     M_HOGERA := TimeToStr(Time());
     M_PEHORA := dmFolha.cdsConfig.FieldByName('CFG_PEHORAEXTRAS').AsFloat;
     M_VLFERI := 0;
     //
               With cdsFuncionarios do
                begin
                     Active := False;
                     Params.ParamByName('pMATRICULA').AsInteger := M_NRMATR;
                     Active := True;
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
                              //
                              If (FieldByName('FUN_EMPRESA').AsInteger = M_CDEMPR)
                                and uFuncoes.Empty(FieldByName('FUN_RECISAO').AsString) Then
                                begin
                                     M_CDFUNC := FieldByName('FUN_MATRICULA').AsInteger;
                                     M_NMFUNC := FieldByName('FUN_NOME').AsString;
                                     M_VALES  := FieldByName('FUN_VALETRANS').AsString;
                                     M_VLSALA := FieldByName('FUN_SALARIO').AsCurrency + uFuncoes.Arredondar((FieldByName('FUN_SALARIO').AsCurrency/3),2);
                                     //M_VLSALA := FieldByName('FUN_SALARIO').AsCurrency + uFuncoes.Gerapercentual(FieldByName('FUN_SALARIO').AsCurrency, 33.33);
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
                                              M_NMBENE := dmFolha2.qryConsulta.FieldByName('DCB_DESCRICAO').AsString;
                                          //
                                          M_VLRECE := M_VLRECE + M_VLBENE;
                                          //
                                          REC_FOLHA;
                                          //
                                          VALOR_RECEBER;
                                     End;      // Fim-do-With
                                     //
                                     // BENEFICIOS FIXOS - SALARIO FAMILIA - 004
                                     //
                                     M_CDBENE := 4;
                                     M_NMBENE := 'SALARIO FAMILIA';
                                     M_QTBENE := M_QTFILH;
                                     M_DESBEN := 1;
                                     M_NMDESC := '';
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
                                          begin
                                              dmFolha2.cdsConsulta.Close;
                                              With dmFolha2.dstConsulta do
                                                begin
                                                     Active := False;
                                                     CommandText := 'Select * from SALARIO_FAMILIA Where (SFM_FAIXA >= :pFAIXA)';
                                                     Params.ParamByName('pFAIXA').AsFloat := M_VLSALA;
                                                     Active := True;
                                               End;
                                              dmFolha2.cdsConsulta.FetchParams;
                                              dmFolha2.cdsConsulta.Open;
                                              dmFolha2.cdsConsulta.First;
                                              //
                                              If not (dmFolha2.cdsConsulta.IsEmpty)
                                               and (M_QTBENE > 0) and (dmFolha2.cdsConsulta.FieldByName('SFM_VALOR').AsFloat > 0) Then
                                              begin
                                                   M_VLBENE := dmFolha2.cdsConsulta.FieldByName('SFM_VALOR').AsFloat;
                                                   M_NMBENE := dmFolha2.qryConsulta.FieldByName('DCB_DESCRICAO').AsString;
                                                   M_PEBENE := 0;
                                                   M_VLRECE := M_VLRECE + (M_VLBENE * M_QTBENE);
                                                   //
                                                   REC_FOLHA;
                                                   VALOR_RECEBER;
                                              End;
                                          End;
                                     End; // fim-do-with
                                     //
                                     //  DESCONTOS FIXOS - VALE ADIANTAMENTO - 005
                                     //
                                     M_CDBENE := 5;
                                     M_NMBENE := 'VALE ADIANTAMENTO';
                                     M_QTBENE := 1;
                                     M_DESBEN := 2;
                                     M_NMDESC := '';
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
                                              M_NMBENE := dmFolha2.qryConsulta.FieldByName('DCB_DESCRICAO').AsString;
                                      End;  // fom-do-with
                                      //
                   	                  //  Movimento
                                      //
                                      dmFolha.cdsMovimento.close;
                                      With dmFolha.dstMovimento do
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
                                                       dmFolha.cdsMovimento.FieldByName('MOV_FOLHA').AsString := M_CDFOLH;
                                                       dmFolha.cdsMovimento.Post;
                                                  End;
                                                 //
                                                 M_VLRECE := M_VLRECE - M_VLBENE;
                                                 //
                                                 REC_FOLHA;
                                                 VALOR_RECEBER;
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
                                                     CommandText := 'Select * from FALTAS Where (FUN_MATRICULA = :pMATRICULA) AND (FAL_FOLHA = :pFOLHA)';
                                                     Params.ParamByName('pMATRICULA').AsInteger := M_CDFUNC;
                                                     Params.ParamByName('pFOLHA').AsString      := uFuncoes.Replicate (' ',6);
                                                     Active := True;
                                               End;
                                              dmFolha2.cdsConsulta.FetchParams;
                                              dmFolha2.cdsConsulta.Open;
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
                                                                 dmFolha2.cdsConsulta.FieldByName('FAL_FOLHA').AsString := M_CDFOLH;
                                                                 //
                                                                 dmFolha2.cdsConsulta.Next;
                                                            End;
                                                            dmFolha2.cdsConsulta.ApplyUpdates(0);
                                                    End;
                                                   //
                                                   M_NMBENE := dmFolha2.qryConsulta.FieldByName('DCB_DESCRICAO').AsString;
                                                   M_PEBENE := dmFolha2.qryConsulta.FieldByName('DCB_PERCENTUAL').AsFloat;
                                                   //
                                                   M_VLBENE := uFuncoes.Arredondar((M_VLSALA/M_QTHORA)*M_QTBENE,2);
                                                   //
                                                   REC_FOLHA;
                                                   VALOR_RECEBER;
                                              End;
                                           End;
                                      End;  // fom-do-with
                                      //
                                      // DESCONTOS - HORA EXTRA - 007
                                      //
                                      M_CDBENE := 7;
                                      M_NMBENE := 'HORAS EXTRAS';
                                      M_QTBENE := 0;
                                      M_DESBEN := 1;
                                      M_NMDESC := '';
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
                                                     CommandText := 'Select * from HORAS_EXTRAS Where (FUN_MATRICULA = :pMATRICULA) AND (HOR_FOLHA = :pFOLHA)';
                                                     Params.ParamByName('pMATRICULA').AsInteger := M_CDFUNC;
                                                     Params.ParamByName('pFOLHA').AsString      := uFuncoes.Replicate (' ',6);
                                                     Active := True;
                                               End;
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
                                                         If M_MINUTO >= 60 Then
                                                         Begin
                                                               M_HORA   := M_HORA + 1;
                                                               M_MINUTO := 0;
                                                         end;
                                                         If (M_FLFECH = 'S') then
                                                            dmFolha2.cdsConsulta.FieldByName('HOR_FOLHA').AsString := M_CDFOLH;
                                                         // Proximo
                                                         dmFolha2.cdsConsulta.next;
                                                    End;
                                                   dmFolha2.cdsConsulta.ApplyUpdates(0);
                                                   //
                                                   M_QTBENE := M_HORA + (M_MINUTO/60);
                                                   M_NMBENE := dmFolha2.qryConsulta.FieldByName('DCB_DESCRICAO').AsString;
                                                   M_PEBENE := dmFolha2.qryConsulta.FieldByName('DCB_PERCENTUAL').AsFloat;
                                                   //
                                                   M_VLBENE := (M_VLSALA/M_QTHORA) * M_QTBENE;
                                                   M_VLBENE := M_VLBENE + uFuncoes.Arredondar(uFuncoes.Gerapercentual(M_VLBENE , M_PEHORA),2);
                                                   M_TOHORA := uFuncoes.Arredondar(M_VLBENE * M_QTBENE,2);
                                                   //
                                                   REC_FOLHA;
                                                   VALOR_RECEBER;
                                              End;
                                           End;
                                      End;  // fom-do-with
                                     //
                                     //  BENEFICIOS FIXOS - FGTS - 0051
                                     //
                                     M_CDBENE := 51;
                                     M_NMBENE := 'FGTS';
                                     M_QTBENE := 1;
                                     M_DESBEN := 2;
                                     M_NMDESC := '';
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
                                          begin
                                              M_NMBENE := dmFolha2.qryConsulta.FieldByName('DCB_DESCRICAO').AsString;
                                              M_PEBENE := dmFolha2.qryConsulta.FieldByName('DCB_PERCENTUAL').AsFloat;
                                              //M_VLBENE := 0;
                                              M_VLBENE := uFuncoes.Gerapercentual(M_VLSALA,M_PEBENE) * M_QTBENE;
                                              M_VLRECE := M_VLRECE - (uFuncoes.Arredondar(M_PEBENE * M_VLSALA /100,2) * M_QTBENE);
                                              //
                                              REC_FOLHA;
                                              VALOR_RECEBER;
                                          End;
                                     End;      // Fim-do-With
                                     //
                                     // DESCONTOS FIXOS - VALE TRANSPORTE - 0052
                                     //
                                     If (M_VALES = 'S') Then
                                     begin
                                        M_CDBENE := 52;
                                        M_NMBENE := 'VALE TRANSPORTE';
                                        M_QTBENE := 1;
                                        M_DESBEN := 2;
                                        M_NMDESC := '';
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
                                              begin
                                                   //M_VLBENE := 0;
                                                   M_PEBENE := dmFolha2.qryConsulta.FieldByName('DCB_PERCENTUAL').AsFloat;
                                                   M_VLBENE := uFuncoes.Gerapercentual(M_VLSALA,M_PEBENE) * M_QTBENE;
                                                   M_NMBENE := dmFolha2.qryConsulta.FieldByName('DCB_DESCRICAO').AsString;
                                                   M_VLRECE := M_VLRECE - (uFuncoes.Arredondar(M_PEBENE * M_VLSALA /100,2) * M_QTBENE);
                                                   //
                                                   REC_FOLHA;
                                                   VALOR_RECEBER;
                                              End;
                                         End; // fim-do-with
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
                                                               M_NMBENE := dmFolha2.qryConsulta.FieldByName('DCB_DESCRICAO').AsString;
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
                                                                // INCLUI REGISTRO
                                                                REC_FOLHA();
                                                                VALOR_RECEBER;
                                                          End;
                                                     End;  // fim-do-with
                                                 End; // fim-se   M_CDBENE > 100
                                                 //
                                                 dmFolha.cdsLancBeneficios.Next;
                                           End;  // fim-do-enquanto
                                      End;       // fim-do-se  dmFolha.cdsLancBeneficios.IsEmpty
                                      // 1/3 SALARIO
                                      M_CDBENE := 116;
                                      M_QTBENE := 1;
                                      M_VLBENE := uFuncoes.Arredondar((M_VLSALA + M_BENFER)/3,2);
                                      M_FLFIXO := 'N';
                                      M_PEBENE := 0;
                                      M_NMDESC := '';
                                      M_VLRECE := M_VLRECE + M_VLBENE;
                                      //
                                      M_NMBENE := '1/3 SALARIO';
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
                                             M_NMBENE :=  FieldByName('DCB_DESCRICAO').AsString;
                                      End;
                                      //
                                      REC_FOLHA();       // INCLUI REGISTRO
                                      VALOR_RECEBER;
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
                                          begin
                                              dmFolha2.cdsConsulta.Close;
                                              With dmFolha2.dstConsulta do
                                                begin
                                                     Active := False;
                                                     CommandText := 'Select * from PREVIDENCIA Where (PRE_FAIXA >= :pFAIXA)';
                                                     Params.ParamByName('pFAIXA').AsFloat := M_SLBRUT;
                                                     //Params.ParamByName('pFAIXA').AsFloat := M_VLSALA;
                                                     Active := True;
                                                End;
                                             dmFolha2.cdsConsulta.FetchParams;
                                             dmFolha2.cdsConsulta.Open;
                                             dmFolha2.cdsConsulta.First;
                                             //
                                             If not (dmFolha2.cdsConsulta.IsEmpty)
                                               and (dmFolha2.cdsConsulta.FieldByName('PRE_PEDESCONTO').AsFloat > 0) then
                                             begin
                                                  M_NMBENE := dmFolha2.qryConsulta.FieldByName('DCB_DESCRICAO').AsString;
                                                  M_PEBENE := dmFolha2.cdsConsulta.FieldByName('PRE_PEDESCONTO').AsFloat;
                                                  // novo
                                                  M_VLBENE := uFuncoes.Gerapercentual(M_SLBRUT,M_PEBENE) * M_QTBENE;
                                                  M_VLRECE := M_VLRECE - (uFuncoes.Arredondar(M_PEBENE * M_SLBRUT/100,2) * M_QTBENE);
                                                  M_VLINSS := uFuncoes.Arredondar(M_VLBENE,2);
                                                  {M_VLBENE := uFuncoes.Gerapercentual(M_VLSALA,M_PEBENE) * M_QTBENE;
                                                  M_VLRECE := M_VLRECE - (uFuncoes.Arredondar(M_PEBENE * M_VLSALA /100,2) * M_QTBENE);}
                                                  REC_FOLHA;
                                                  VALOR_RECEBER;
                                                  //
                                             End;
                                          End;
                                     End;      // Fim-do-With
                                     //
                                     //  BENEFICIOS FIXOS - IMPOSTO DE RENDA - 003
                                     //
                                     M_CDBENE := 3;
                                     M_NMBENE := 'IMPOSTO DE RENDA';
                                     M_QTBENE := 1;
                                     M_DESBEN := 2;
                                     M_NMDESC := '';
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
                                          begin
                                          End;
                                               dmFolha2.cdsConsulta.Close;
                                               With dmFolha2.dstConsulta do
                                                begin
                                                     Active := False;
                                                     CommandText := 'Select * from IMPOSTO_RENDA Where (IMR_FAIXA >= :pFAIXA)';
                                                     Params.ParamByName('pFAIXA').AsFloat := M_SLBRUT;
                                                     //Params.ParamByName('pFAIXA').AsFloat := M_VLSALA;
                                                     Active := True;
                                                End;
                                              dmFolha2.cdsConsulta.FetchParams;
                                              dmFolha2.cdsConsulta.Open;
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
                                                   REC_FOLHA;
                                                   VALOR_RECEBER;
                                              End;
                                     End;      // Fim-do-With
                                      //
                                      // EXCLUIR DESCONTOS E BENEFICIOS - LANCADOS - NAO FIXOS
                                      //
                                      IF (M_FLFECH = 'S') Then
                                      begin
                                           With dmFolha2.qryConsulta do
                                            begin
                                                 SQL.Clear;
                                                 Close;
                                                 SQL.Add('Delete from LANCAMENTOS Where (FUN_MATRICULA = :pMATRICULA) AND (LAN_FLFIXO = :pFIXO)');
                                                 Params.ParamByName('pMATRICULA').AsInteger := M_CDFUNC;
                                                 Params.ParamByName('pFIXO').AsString       := 'N';
                                                 ExecSQL();
                                            End;
                                      End;
                                End;  // FIM-DO-SE
                              // proximo Funcionário
                              Next;
                          End;  // fim-do-enquanto Funcionario
                     End;
                End;
                //
                result := M_VLFERI;
end;

procedure TfrmCadFerias.REC_FOLHA;
begin
     With dmFolha.spIncDadosFerias do
      begin
           Close;
           //
           Params.ParamByName('PMATRICULA').AsInteger  := M_CDFUNC;
           Params.ParamByName('PBENEFICIO').AsInteger  := M_CDBENE;
           Params.ParamByName('PQTBENEFICIO').AsFloat  := M_QTBENE;
           Params.ParamByName('PVLBENEFICIO').AsFloat  := M_VLBENE;
           Params.ParamByName('PPEBENEFICIO').AsFloat  := M_PEBENE;
           Params.ParamByName('PNMBENEFICIO').AsString := M_NMBENE;
           Params.ParamByName('PNMDESCRICAO').AsString := M_NMDESC;
           Params.ParamByName('PDESBEN').AsString      := InttoStr(M_DESBEN);
           Params.ParamByName('PDTGERACAO').AsDate     := M_DTGERA;
           Params.ParamByName('PHOGERACAO').AsString   := M_HOGERA;
           Params.ParamByName('PUSUARIO').AsInteger    := StrtoInt(uPrincFolha.M_CDUSUA);
           Params.ParamByName('pEMPRESA').AsInteger    := W_CDEMPR;
           Params.ParamByName('PAQUISICAO').AsDate     := M_DTAQUI;
           Params.ParamByName('PGOZO').AsDate          := M_DTGOZO;
           //
           ExecProc();
      End;
end;

procedure TfrmCadFerias.VALOR_RECEBER;
begin
     If (M_DESBEN = 1) Then
         M_VLFERI := M_VLFERI + (M_VLBENE * M_QTBENE)
     Else
         M_VLFERI := M_VLFERI - (M_VLBENE * M_QTBENE);
end;

procedure TfrmCadFerias.dbeMatriculaEnter(Sender: TObject);
begin
       edtNome.Clear;
end;

procedure TfrmCadFerias.btReciboClick(Sender: TObject);
Var
    M_LINHA : String;
begin
      btRecibo.Enabled := False;
      //
      try
          //
          //dmFolha.Start;
          try
             //
             //cdsRelFolha.Close;
             With cdsRelFolha do   // dstRelFolha
              begin
                   Active := False;
                   {M_LINHA := 'Select FO.FUN_MATRICULA, FU.FUN_NOME, FU.FUN_ADMISSAO, FU.FUN_EMPRESA, FO.FOL_DTGERACAO, FU.FUN_CPF, ';
                   M_LINHA := M_LINHA + ' FO.FOL_BENEFICIO, FO.FOL_QTBENEFICIO, FO.FOL_PEBENEFICIO, FO.FOL_NMBENEFICIO, ';
                   M_LINHA := M_LINHA + ' FO.FOL_DESBEN, FO.FOL_VLBENEFICIO, C.CBO_DESCRICAO ';
                   M_LINHA := M_LINHA + ' from FUNCIONARIOS FU INNER join FOLHA FO ON FU.FUN_MATRICULA = FO.FUN_MATRICULA ';
                   M_LINHA := M_LINHA + ' INNER join CBO C ON C.CBO_CODIGO = FU.FUN_CBO ';
                   M_LINHA := M_LINHA + ' Where (FO.FUN_MATRICULA = :pMATRICULA) ';

                   //
                   Select FO.FUN_MATRICULA, FU.FUN_NOME, FU.FUN_ADMISSAO, FU.FUN_EMPRESA, FO.FOL_DTGERACAO, FU.FUN_CPF,
                   FO.FOL_BENEFICIO, FO.FOL_QTBENEFICIO, FO.FOL_PEBENEFICIO, FO.FOL_NMBENEFICIO,
                   FO.FOL_DESBEN, FO.FOL_VLBENEFICIO, C.CBO_DESCRICAO
                   from FUNCIONARIOS FU INNER join FOLHA FO ON FU.FUN_MATRICULA = FO.FUN_MATRICULA
                   INNER join CBO C ON C.CBO_CODIGO = FU.FUN_CBO
                   Where (FO.FUN_MATRICULA = :pMATRICULA)
                   order by FO.FUN_MATRICULA, FO.FOL_BENEFICIO;
                   //
                   If (edtDTENTR.Text <> '  /  /    ' ) Then
                       M_LINHA := M_LINHA + ' AND (FU.FUN_DTINICIO_FERIAS = :pGOZO) ';
                   // FER_PERIODO_GOZO
                   //
                   CommandText := M_LINHA;
                   CommandText := CommandText + ' Group by FO.FUN_MATRICULA, FU.FUN_NOME, FU.FUN_ADMISSAO, FU.FUN_EMPRESA, FO.FOL_DTGERACAO, FU.FUN_CPF, '+
                                  'FO.FOL_BENEFICIO, FO.FOL_QTBENEFICIO, FO.FOL_PEBENEFICIO, FO.FOL_NMBENEFICIO, '+
                                  'FO.FOL_DESBEN, FO.FOL_VLBENEFICIO, C.CBO_DESCRICAO';
                   CommandText :=  CommandText + ' order by FO.FUN_MATRICULA, FO.FOL_BENEFICIO ';}
                   //
                   Params.ParamByName('pMATRICULA').AsInteger := Strtoint(dbeMatricula.text);
                   //
                   If (edtDTENTR.Text <> '  /  /    ' ) Then
                       Params.ParamByName('pGOZO').AsDate  := edtDTENTR.Date;
                   //
                   //FetchParams;
                   Active := True;
              End;
              //
              {cdsRelFolha.FetchParams;
              cdsRelFolha.Open;}
              //
              If not (cdsRelFolha.IsEmpty) Then
                begin
                     If FileExists(ExtractFilePath( Application.ExeName )+'\logo.jpg') Then
                          ppImage1.Picture.LoadFromFile(ExtractFilePath( Application.ExeName )+'\logo.jpg');
                     //
                     lbl_Empresa.Caption := 'EMPRESA : '+uFuncoes.GetNomeEmpresa(cdsRelFolha.FieldByName('FUN_EMPRESA').AsInteger);
                     // ppGroupFooterBand1.Height := 50
                     ppGroupFooterBand1.Height := 20;
                     ppReport1.PrintReport;
                End
                Else
                    Application.MessageBox('Registro de férias inexistente.','ATENÇÃO',
                        MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
             //
             //dmFolha.Comit(Transc);
             //
          Except
               on Exc:Exception do
                begin
                    Application.MessageBox(PChar('Erro ao tentar gerar relatório!!!'
                            + Exc.Message), 'ATENÇÃO', MB_OK+MB_ICONSTOP+MB_APPLMODAL);
                     //  Cancelar transação no BD.
                     //dmFolha.Rollback;
                     //
                End;
          End;
      Finally
          btRecibo.Enabled := True;
      End;
end;

procedure TfrmCadFerias.cdsRelFolhaCalcFields(DataSet: TDataSet);
begin
     If (cdsRelFolhaFOL_DESBEN.AsString  = '1') Then
         cdsRelFolhaFOL_VALOR.AsCurrency := cdsRelFolhaFOL_QTBENEFICIO.AsCurrency * cdsRelFolhaFOL_VLBENEFICIO.AsFloat
     Else
         cdsRelFolhaFOL_PERCENTUAL.AsCurrency := cdsRelFolhaFOL_QTBENEFICIO.AsCurrency * cdsRelFolhaFOL_VLBENEFICIO.AsFloat;
     //
     If not uFuncoes.Empty(cdsRelFolha.FieldByname('FUN_CPF').AsString) Then
         cdsRelFolha.FieldByname('CPF').AsString := Copy(cdsRelFolha.FieldByname('FUN_CPF').AsString,1,3)+'.'+
                          Copy(cdsRelFolha.FieldByname('FUN_CPF').AsString,4,3)+'.'+
                          Copy(cdsRelFolha.FieldByname('FUN_CPF').AsString,7,3)+'-'+
                          Copy(cdsRelFolha.FieldByname('FUN_CPF').AsString,10,2);
end;

procedure TfrmCadFerias.ppVariable2Calc(Sender: TObject;
  var Value: Variant);
begin
     ppVariable2.AsCurrency := ppDBCalc1.Value - ppDBCalc2.Value;
end;

procedure TfrmCadFerias.ppDBText9Print(Sender: TObject);
begin
     If (cdsRelFolhaFOL_VLBENEFICIO.AsFloat > 0) Then
         ppDBText9.Visible := True
     Else
         ppDBText9.Visible := False;
end;

procedure TfrmCadFerias.ppDBText10Print(Sender: TObject);
begin
     If (cdsRelFolhaFOL_PEBENEFICIO.AsFloat = 0) then
         ppDBText10.Visible := True
     Else
         ppDBText10.Visible := False;
end;

procedure TfrmCadFerias.edtDTENTRExit(Sender: TObject);
begin
    If (edtDTENTR.Text <> '  /  /    ') Then
    begin
        try
              StrToDate(edtDTENTR.Text);
              edtDTENTR.Date := StrToDate(edtDTENTR.Text);
        except
              on EConvertError do
              begin
                  ShowMessage ('Data Inválida!');
                  edtDTENTR.Date := Date();
                  edtDTENTR.SetFocus;
                  Exit;
              End;
        end;
    End;
end;

procedure TfrmCadFerias.edtDTSAIDExit(Sender: TObject);
begin
    If (edtDTSAID.Text <> '  /  /    ') Then
    begin
        try
              StrToDate(edtDTSAID.Text);
              edtDTSAID.Date := StrToDate(edtDTSAID.Text);
              If (edtDTSAID.Date <= edtDTENTR.Date) Then
                begin
                     edtDTSAID.SetFocus;
                     Exit; 
                End;
        except
              on EConvertError do
              begin
                  ShowMessage ('Data Inválida!');
                  edtDTSAID.Date := Date();
                  edtDTSAID.SetFocus;
                  Exit;
              End;
        end;
    End;
end;

function TfrmCadFerias.Valor_Ferias(M_NRMATR: Integer;
  W_DTINIC: TDate): Double;
Var
    M_VLDESC, M_VLBENE : Double;
begin
     M_VLDESC := 0;
     M_VLBENE := 0;
     //
     With dmFolha2.qryConsulta do
      begin
           SQL.Clear;
           Close;
           SQL.Add('Select Sum(FER_VLBENEFICIO * FER_QTBENEFICIO) as VALOR From FERIAS ');
           SQL.Add('Where (FUN_MATRICULA = :pMATRICULA) AND (FER_DESBEN = :pDESBEN) ');
           SQL.Add('And (FER_PERIODO_GOZO = :pGOZO) ');
           Params.ParamByName('pMATRICULA').AsInteger := M_NRMATR;
           Params.ParamByName('pDESBEN').AsString     := '1';
           Params.ParamByName('pGOZO').AsDate         := W_DTINIC;
           Open;
           //
           If not (IsEmpty) Then
              M_VLBENE := FieldByName('VALOR').AsFloat;
      End;
      //
     With dmFolha2.qryConsulta do
      begin
           SQL.Clear;
           Close;
           SQL.Add('Select Sum(FER_VLBENEFICIO * FER_QTBENEFICIO) as VALOR From FERIAS');
           SQL.Add('Where (FUN_MATRICULA = :pMATRICULA) AND (FER_DESBEN = :pDESBEN) ');
           SQL.Add('And (FER_PERIODO_GOZO = :pGOZO) ');
           Params.ParamByName('pMATRICULA').AsInteger := M_NRMATR;
           Params.ParamByName('pDESBEN').AsString     := '2';
           Params.ParamByName('pGOZO').AsDate         := W_DTINIC;
           Open;
           //
           If not (IsEmpty) Then
              M_VLDESC := FieldByName('VALOR').AsFloat;
      End;
      //
      result := M_VLBENE - M_VLDESC;
end;

procedure TfrmCadFerias.ppDBTDesBenPrint(Sender: TObject);
begin
     If (cdsRelFolhaFOL_PEBENEFICIO.AsFloat > 0) Then
     begin
         ppLabel15.Visible   := True;
         ppDBTDesBen.Visible := True;
     End
     Else
     begin
         ppLabel15.Visible   := False;
         ppDBTDesBen.Visible := False;
     End;
end;

End.
