unit uFrmRelFolha;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Mask, Buttons, FMTBcd, DB, SqlExpr,
  DBClient, Provider, DBXpress, ppDB, ppDBPipe, ppComm, ppRelatv, ppProd,
  ppClass, ppReport, ppStrtch, ppMemo, ppPrnabl, ppCtrls, ppBands, ppCache,
  ppVar;

type
  TfrmRelFolhaPag = class(TForm)
    Panel4: TPanel;
    Panel5: TPanel;
    BtImprimir: TBitBtn;
    BtSair: TBitBtn;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    edtMesAno: TMaskEdit;
    rbgFecharFolha: TRadioGroup;
    dbeMatricula: TEdit;
    spLocalizar: TSpeedButton;
    dstRelFolha: TSQLDataSet;
    dspRelFolha: TDataSetProvider;
    cdsRelFolha: TClientDataSet;
    dsRelFolha: TDataSource;
    dstRelFolhaFOL_CODIGO: TStringField;
    dstRelFolhaFUN_MATRICULA: TIntegerField;
    dstRelFolhaFUN_NOME: TStringField;
    dstRelFolhaFUN_ADMISSAO: TDateField;
    dstRelFolhaFOL_DTGERACAO: TDateField;
    dstRelFolhaFUN_CPF: TStringField;
    dstRelFolhaFOL_BENEFICIO: TIntegerField;
    dstRelFolhaFOL_NMBENEFICIO: TStringField;
    dstRelFolhaFOL_DESBEN: TStringField;
    cdsRelFolhaFOL_CODIGO: TStringField;
    cdsRelFolhaFUN_MATRICULA: TIntegerField;
    cdsRelFolhaFUN_NOME: TStringField;
    cdsRelFolhaFUN_ADMISSAO: TDateField;
    cdsRelFolhaFOL_DTGERACAO: TDateField;
    cdsRelFolhaFUN_CPF: TStringField;
    cdsRelFolhaFOL_BENEFICIO: TIntegerField;
    cdsRelFolhaFOL_NMBENEFICIO: TStringField;
    cdsRelFolhaFOL_DESBEN: TStringField;
    ppReport1: TppReport;
    ppDBPFolha: TppDBPipeline;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppImage1: TppImage;
    ppDBMemo1: TppDBMemo;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppLabel3: TppLabel;
    ppDBText3: TppDBText;
    txtRecibo: TppLabel;
    ppLabel2: TppLabel;
    ppLabel4: TppLabel;
    ppDBText1: TppDBText;
    ppLabel5: TppLabel;
    ppDBText2: TppDBText;
    ppLabel6: TppLabel;
    ppDBText4: TppDBText;
    ppShape1: TppShape;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppLabel11: TppLabel;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    dstRelFolhaFOL_VLBENEFICIO: TFMTBCDField;
    cdsRelFolhaFOL_VLBENEFICIO: TFMTBCDField;
    Label3: TLabel;
    edtEmpresa: TEdit;
    spLocEmpresa: TSpeedButton;
    lbl_Funcionario: TLabel;
    dstRelFolhaFOL_QTBENEFICIO: TBCDField;
    cdsRelFolhaFOL_QTBENEFICIO: TBCDField;
    ppSystemVariable1: TppSystemVariable;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    ppLine1: TppLine;
    ppLabel14: TppLabel;
    ppDBCalc1: TppDBCalc;
    ppLine2: TppLine;
    ppDBText10: TppDBText;
    cdsRelFolhaFOL_VALOR: TCurrencyField;
    cdsRelFolhaFOL_PERCENTUAL: TCurrencyField;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    cdsRelFolhaFOL_VLLIQUIDO: TCurrencyField;
    ppDBCalc2: TppDBCalc;
    ppVariable2: TppVariable;
    ppLine3: TppLine;
    lbl_Empresa: TppLabel;
    ppShape2: TppShape;
    ppShape3: TppShape;
    ppShape4: TppShape;
    ppShape5: TppShape;
    ppShape6: TppShape;
    cdsRelFolhaCPF: TStringField;
    dstRelFolhaCBO_DESCRICAO: TStringField;
    cdsRelFolhaCBO_DESCRICAO: TStringField;
    ppDBText11: TppDBText;
    ppShape7: TppShape;
    cdsDados: TClientDataSet;
    dsDados: TDataSource;
    cdsDadosCDS_FOLHA: TStringField;
    cdsDadosCDS_MATRICULA: TIntegerField;
    cdsDadosCDS_NOMEFUNC: TStringField;
    cdsDadosCDS_BENEFICIO1: TIntegerField;
    cdsDadosCDS_SIGLA1: TStringField;
    cdsDadosCDS_VALOR1: TCurrencyField;
    cdsDadosCDS_BENEFICIO2: TIntegerField;
    cdsDadosSIGLA2: TStringField;
    cdsDadosCDS_VALOR2: TCurrencyField;
    ppReport2: TppReport;
    ppDBDados: TppDBPipeline;
    ppHeaderBand2: TppHeaderBand;
    ppDetailBand2: TppDetailBand;
    ppFooterBand2: TppFooterBand;
    ppImage2: TppImage;
    lbl_Empresa2: TppLabel;
    dstDadosFolha: TSQLDataSet;
    dspDadosFolha: TDataSetProvider;
    cdsDadosFolha: TClientDataSet;
    dstDadosFolhaFOL_CODIGO: TStringField;
    dstDadosFolhaFUN_MATRICULA: TIntegerField;
    dstDadosFolhaFOL_DTGERACAO: TDateField;
    dstDadosFolhaFOL_BENEFICIO: TIntegerField;
    dstDadosFolhaFOL_QTBENEFICIO: TBCDField;
    dstDadosFolhaFOL_NMBENEFICIO: TStringField;
    dstDadosFolhaFOL_DESBEN: TStringField;
    dstDadosFolhaFOL_VLBENEFICIO: TFMTBCDField;
    cdsDadosFolhaFOL_CODIGO: TStringField;
    cdsDadosFolhaFUN_MATRICULA: TIntegerField;
    cdsDadosFolhaFOL_DTGERACAO: TDateField;
    cdsDadosFolhaFOL_BENEFICIO: TIntegerField;
    cdsDadosFolhaFOL_QTBENEFICIO: TBCDField;
    cdsDadosFolhaFOL_NMBENEFICIO: TStringField;
    cdsDadosFolhaFOL_DESBEN: TStringField;
    cdsDadosFolhaFOL_VLBENEFICIO: TFMTBCDField;
    ppLine4: TppLine;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppSystemVariable3: TppSystemVariable;
    ppSystemVariable4: TppSystemVariable;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    txtTitulo: TppLabel;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    ppDBText17: TppDBText;
    ppDBText18: TppDBText;
    ppDBText19: TppDBText;
    ppLabel22: TppLabel;
    ppTotBeneficio: TppDBCalc;
    ppTotDesconto: TppDBCalc;
    ppLine5: TppLine;
    ppLine6: TppLine;
    ppLabel23: TppLabel;
    ppLabel24: TppLabel;
    ppLabel25: TppLabel;
    ppLabel26: TppLabel;
    ppLabel27: TppLabel;
    ppLabel28: TppLabel;
    ppLabel29: TppLabel;
    ppLabel30: TppLabel;
    ppLabel31: TppLabel;
    ppVlLiquido: TppVariable;
    ppLabel19: TppLabel;
    ppLine7: TppLine;
    ppLabel32: TppLabel;
    ppLabel33: TppLabel;
    ppLine8: TppLine;
    ppLine9: TppLine;
    ppLine10: TppLine;
    ppReport3: TppReport;
    ppDBSumario: TppDBPipeline;
    ppHeaderBand3: TppHeaderBand;
    ppDetailBand3: TppDetailBand;
    ppFooterBand3: TppFooterBand;
    ppImage3: TppImage;
    txtEmpresa3: TppLabel;
    txtTitulo3: TppLabel;
    ppLine11: TppLine;
    ppLabel36: TppLabel;
    ppLabel37: TppLabel;
    ppSystemVariable5: TppSystemVariable;
    ppSystemVariable6: TppSystemVariable;
    ppDBText20: TppDBText;
    ppDBText21: TppDBText;
    ppDBText22: TppDBText;
    ppDBText23: TppDBText;
    ppDBText24: TppDBText;
    ppDBText25: TppDBText;
    ppLabel34: TppLabel;
    ppLabel35: TppLabel;
    ppLabel38: TppLabel;
    ppLabel39: TppLabel;
    ppLabel40: TppLabel;
    ppLabel41: TppLabel;
    ppLabel42: TppLabel;
    ppLabel43: TppLabel;
    ppSummaryBand1: TppSummaryBand;
    ppDBCalc3: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    ppLabel44: TppLabel;
    ppLabel45: TppLabel;
    ppLine12: TppLine;
    ppShape8: TppShape;
    ppShape9: TppShape;
    ppReport4: TppReport;
    ppDBPipFolha: TppDBPipeline;
    ppHeaderBand4: TppHeaderBand;
    ppDetailBand4: TppDetailBand;
    ppFooterBand4: TppFooterBand;
    txtEmpresa4: TppLabel;
    ppColumnHeaderBand1: TppColumnHeaderBand;
    ppColumnFooterBand1: TppColumnFooterBand;
    ppLabel48: TppLabel;
    ppLabel49: TppLabel;
    ppDBText26: TppDBText;
    ppDBText27: TppDBText;
    ppLabel50: TppLabel;
    ppLabel51: TppLabel;
    ppLabel52: TppLabel;
    ppLabel53: TppLabel;
    ppLine13: TppLine;
    ppDBText28: TppDBText;
    ppDBText29: TppDBText;
    ppDBTRemu: TppDBText;
    ppDBTDesc: TppDBText;
    ppLabel54: TppLabel;
    ppLabel55: TppLabel;
    ppLabel56: TppLabel;
    ppLine14: TppLine;
    ppLabel46: TppLabel;
    ppLabel47: TppLabel;
    ppSystemVariable7: TppSystemVariable;
    ppSystemVariable8: TppSystemVariable;
    ppGroup3: TppGroup;
    ppGroupHeaderBand3: TppGroupHeaderBand;
    ppGroupFooterBand3: TppGroupFooterBand;
    ppDBTotRemu: TppDBCalc;
    dstRecibo: TSQLDataSet;
    dspRecibo: TDataSetProvider;
    cdsRecibo: TClientDataSet;
    cdsReciboFOL_VALOR: TCurrencyField;
    cdsReciboFOL_PERCENTUAL: TCurrencyField;
    cdsReciboFOL_VLLIQUIDO: TCurrencyField;
    dstReciboFOL_CODIGO: TStringField;
    dstReciboFUN_MATRICULA: TIntegerField;
    dstReciboFUN_NOME: TStringField;
    dstReciboFUN_ADMISSAO: TDateField;
    dstReciboFOL_DTGERACAO: TDateField;
    dstReciboFOL_BENEFICIO: TIntegerField;
    dstReciboFOL_QTBENEFICIO: TBCDField;
    dstReciboFOL_NMBENEFICIO: TStringField;
    dstReciboFOL_DESBEN: TStringField;
    dstReciboFOL_VLBENEFICIO: TFMTBCDField;
    cdsReciboFOL_CODIGO: TStringField;
    cdsReciboFUN_MATRICULA: TIntegerField;
    cdsReciboFUN_NOME: TStringField;
    cdsReciboFUN_ADMISSAO: TDateField;
    cdsReciboFOL_DTGERACAO: TDateField;
    cdsReciboFUN_CPF: TStringField;
    cdsReciboFOL_BENEFICIO: TIntegerField;
    cdsReciboFOL_QTBENEFICIO: TBCDField;
    cdsReciboFOL_NMBENEFICIO: TStringField;
    cdsReciboFOL_DESBEN: TStringField;
    cdsReciboFOL_VLBENEFICIO: TFMTBCDField;
    dsRecibo: TDataSource;
    cdsReciboFOL_VLDESC: TCurrencyField;
    dstReciboFUN_CPF: TStringField;
    ppDBTotDesc: TppDBCalc;
    ppVLLIQU: TppVariable;
    ppLine16: TppLine;
    ppLine17: TppLine;
    ppLabel57: TppLabel;
    txtMesRefe: TppLabel;
    ppLine18: TppLine;
    txtResumo: TppLabel;
    ppLine23: TppLine;
    ppLabel72: TppLabel;
    ppLabel73: TppLabel;
    ppLabel74: TppLabel;
    ppLabel75: TppLabel;
    ppLabel76: TppLabel;
    ppLabel77: TppLabel;
    txt: TppLabel;
    txtContribuicao: TppLabel;
    ppLabel58: TppLabel;
    ppLabel59: TppLabel;
    ppLabel60: TppLabel;
    txtQuantFunc: TppLabel;
    dstRelFolhaFOL_PEBENEFICIO: TBCDField;
    cdsRelFolhaFOL_PEBENEFICIO: TBCDField;
    dstDadosFolhaFOL_PEBENEFICIO: TBCDField;
    cdsDadosFolhaFOL_PEBENEFICIO: TBCDField;
    dstReciboFOL_PEBENEFICIO: TBCDField;
    cdsReciboFOL_PEBENEFICIO: TBCDField;
    rgParcelas: TRadioGroup;
    procedure BtSairClick(Sender: TObject);
    procedure edtMesAnoExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dbeMatriculaKeyPress(Sender: TObject; var Key: Char);
    procedure spLocalizarClick(Sender: TObject);
    procedure dbeMatriculaExit(Sender: TObject);
    procedure dbeMatriculaChange(Sender: TObject);
    procedure rbgFecharFolhaClick(Sender: TObject);
    procedure BtImprimirClick(Sender: TObject);
    procedure spLocEmpresaClick(Sender: TObject);
    procedure edtEmpresaChange(Sender: TObject);
    procedure edtEmpresaExit(Sender: TObject);
    procedure edtEmpresaKeyPress(Sender: TObject; var Key: Char);
    procedure ppDBText8Print(Sender: TObject);
    procedure ppDBText9Print(Sender: TObject);
    procedure ppDBText10Print(Sender: TObject);
    procedure cdsRelFolhaCalcFields(DataSet: TDataSet);
    procedure ppVariable2Calc(Sender: TObject; var Value: Variant);
    procedure ppVlLiquidoCalc(Sender: TObject; var Value: Variant);
    procedure ppDBTRemuPrint(Sender: TObject);
    procedure ppDBTDescPrint(Sender: TObject);
    procedure cdsReciboCalcFields(DataSet: TDataSet);
    procedure ppVLLIQUCalc(Sender: TObject; var Value: Variant);
    procedure edtEmpresaEnter(Sender: TObject);
  private
    { Private declarations }
     procedure FOLHA(M_CDEMPR : INTEGER);
  public
    { Public declarations }
  end;

var
  frmRelFolhaPag: TfrmRelFolhaPag;
  M_NRMATR, M_CDEMPR, M_NRFORM : Integer;
  M_FL13SA : Boolean;

implementation

uses udmFolha, uFuncoes, uFrmLocFunc, uPrincFolha, DateUtils,
  uFrmLocEmpresa, udmFolha2, uFrmReciboPaga;

{$R *.dfm}

procedure TfrmRelFolhaPag.BtSairClick(Sender: TObject);
begin
     Close;
end;

procedure TfrmRelFolhaPag.edtMesAnoExit(Sender: TObject);
Var
     M_DTTEST, aMes : String;
     M_DATA : Tdate;
begin
    If uFuncoes.Empty(edtMesAno.Text) then
        edtMesAno.SetFocus
    Else
    Begin
         M_DTTEST := '01/'+Copy(edtMesAno.Text,1,2)+'/'+Copy(edtMesAno.Text,3,4);
         try
             If (M_DTTEST <> '01/13/'+Copy(edtMesAno.Text,3,4)) Then
             begin
                  StrtoDate(M_DTTEST);
                  M_DATA := StrtoDate(M_DTTEST);
                  M_DTTEST := DatetoStr(M_DATA);
             End;
             edtMesAno.Text := Copy(M_DTTEST,4,2)+Copy(M_DTTEST,7,4);
             //
             aMes := Copy(edtMesAno.Text,1,2);
             if (aMes = '13') Then
                 rgParcelas.Visible := True
             Else
                 rgParcelas.Visible := False;
         Except
              on EConvertError do
              begin
                  ShowMessage ('Referencia da folha com formato incorreto!');
                  edtMesAno.Clear;
                  edtMesAno.SetFocus;
                  Exit;
              End;
         End;
    End;
end;

procedure TfrmRelFolhaPag.FormShow(Sender: TObject);
Var
    M_MESFOL, M_ANOFOL : String;
begin
     dmFolha.parametros;
     lbl_Funcionario.Caption := '';
     edtEmpresa.SetFocus;
     //
     If (M_NRFORM <> 1) Then
     begin
           rbgFecharFolha.Visible := False;
           dbeMatricula.Visible := False;
           Label2.Visible := False;
           spLocalizar.Visible := False;
     End;
     //
     rgParcelas.Visible := false;
end;

procedure TfrmRelFolhaPag.dbeMatriculaKeyPress(Sender: TObject;
  var Key: Char);
begin
      If not( key in['0'..'9',#8, #13] ) then
           key:=#0;
      //
      if (key = #13) and uFuncoes.Empty(dbeMatricula.Text) Then
        begin
             Key := #0;
             spLocalizarClick(Sender);
        End;
end;

procedure TfrmRelFolhaPag.spLocalizarClick(Sender: TObject);
begin
    Application.CreateForm(TfrmLocalizarFuncionario, frmLocalizarFuncionario);
    Try
        frmLocalizarFuncionario.ShowModal;
    Finally
        If not uFuncoes.Empty(frmLocalizarFuncionario.cdsConsultar.FieldByname('FUN_MATRICULA').AsString) Then
        begin
            M_NRMATR := frmLocalizarFuncionario.cdsConsultar.FieldByname('FUN_MATRICULA').AsInteger;
            dbeMatricula.Text := inttoStr(M_NRMATR);
        End;
        //
        frmLocalizarFuncionario.Release;
        frmLocalizarFuncionario := nil;
    End;
end;

procedure TfrmRelFolhaPag.dbeMatriculaExit(Sender: TObject);
begin
     If not uFuncoes.Empty(dbeMatricula.Text) Then
     begin
          dbeMatricula.Text := uFuncoes.StrZero(dbeMatricula.Text,7);
          rbgFecharFolha.ItemIndex := 0;
     End;
end;

procedure TfrmRelFolhaPag.dbeMatriculaChange(Sender: TObject);
begin
     If not uFuncoes.Empty(dbeMatricula.Text) Then
         rbgFecharFolha.ItemIndex := 0;
end;

procedure TfrmRelFolhaPag.rbgFecharFolhaClick(Sender: TObject);
begin
     If (rbgFecharFolha.ItemIndex = 1) Then
        dbeMatricula.Clear;
end;

procedure TfrmRelFolhaPag.BtImprimirClick(Sender: TObject);
Var
    TD : TTransactionDesc;
    M_LINHA, aMes : String;
begin
      If uFuncoes.Empty(edtMesAno.Text) then
      begin
           edtMesAno.SetFocus;
           Exit;
      End;
      //
      If uFuncoes.Empty(edtEmpresa.Text) then
      begin
           edtEmpresa.SetFocus;
           Exit;
      End;
      //
    If (M_NRFORM = 1) Then
    begin
      try
          BtImprimir.Enabled := False;
          //
          try
             TD.TransactionID  := StrtoInt(uPrincFolha.M_CDUSUA);
             TD.IsolationLevel := xilREADCOMMITTED;
             dmFolha.sqlCon_Folha.StartTransaction(TD);
             //
             cdsRelFolha.Close;
             With dstRelFolha do
              begin
                   Active := False;
                   M_LINHA := 'Select F.FOL_CODIGO, F.FUN_MATRICULA, FU.FUN_NOME, FU.FUN_ADMISSAO, F.FOL_DTGERACAO, FU.FUN_CPF, ';
                   M_LINHA := M_LINHA + 'F.FOL_BENEFICIO, F.FOL_QTBENEFICIO, F.FOL_PEBENEFICIO, F.FOL_NMBENEFICIO, F.FOL_DESBEN, F.FOL_VLBENEFICIO, CBO_DESCRICAO ';
                   M_LINHA := M_LINHA + 'from FOLHA F INNER join FUNCIONARIOS FU ON FU.FUN_MATRICULA = F.FUN_MATRICULA ';
                   M_LINHA := M_LINHA + 'INNER join CBO C ON C.CBO_CODIGO = FU.FUN_CBO ';
                   M_LINHA := M_LINHA + 'Where (F.FOL_CODIGO = :pCODIGO) AND (F.FOL_EMPRESA = :pEMPRESA) ';
                   //
                   CommandText := M_LINHA;

                   If not uFuncoes.Empty(dbeMatricula.Text) Then
                      CommandText :=  CommandText + 'and (F.FUN_MATRICULA = :pMATRICULA) ';
                   //
                   CommandText :=  CommandText + 'order by F.FUN_MATRICULA, F.FOL_BENEFICIO ';
                   //
                   Params.ParamByName('pCODIGO').AsString   := edtMesAno.Text;
                   Params.ParamByName('pEMPRESA').AsInteger := StrtoInt(edtEmpresa.Text);
                   If not uFuncoes.Empty(dbeMatricula.Text) Then
                      Params.ParamByName('pMATRICULA').AsInteger := StrtoInt(dbeMatricula.Text);
                   Active := True;
              End;
              cdsRelFolha.FetchParams;
              cdsRelFolha.Open;
              If not (cdsRelFolha.IsEmpty) Then
                begin
                     aMes := Copy(edtMesAno.Text,1, 2);
                     //
                     If (aMes = '13') Then
                         M_FL13SA := True
                     Else
                         M_FL13SA := False;
                     //    
                     If FileExists(ExtractFilePath( Application.ExeName )+'\logo.jpg') Then
                          ppImage1.Picture.LoadFromFile(ExtractFilePath( Application.ExeName )+'\logo.jpg');
                     //
                     lbl_Empresa.Caption := 'EMPRESA : '+lbl_Funcionario.Caption;
                     If (Copy(edtMesAno.Text,1,2) = '13') Then
                      begin
                           If (rgParcelas.ItemIndex = 0) Then
                              txtRecibo.Caption :=  'RECIBO DE PAGAMENTO 13º - 1ª PARCELA';
                           If (rgParcelas.ItemIndex = 1) Then
                              txtRecibo.Caption :=  'RECIBO DE PAGAMENTO 13º - 2ª PARCELA';
                           If (rgParcelas.ItemIndex = 2) Then
                              txtRecibo.Caption :=  'RECIBO DE PAGAMENTO 13º';
                      End
                     Else
                         txtRecibo.Caption :=  'RECIBO DE PAGAMENTO';
                     //
                     If (rbgFecharFolha.ItemIndex = 0) Then
                        ppGroupFooterBand1.Height := 55
                     Else
                        ppGroupFooterBand1.Height := 20;
                     ppReport1.PrintReport;
                End
                Else
                    Application.MessageBox('Registro de folha inexistente.','ATENÇÃO',
                        MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
             //
             dmFolha.sqlCon_Folha.Commit(TD);
          Except
               on Exc:Exception do
                begin
                    Application.MessageBox(PChar('Erro ao tentar gerar relatório!!!'
                            + Exc.Message), 'ATENÇÃO', MB_OK+MB_ICONSTOP+MB_APPLMODAL);
                     //  Cancelar transação no BD.
                     dmFolha.sqlCon_Folha.Rollback(TD);
                End;
          End;
      Finally
          BtImprimir.Enabled := True;
      End;
   End;   // fim-do-se M_NRFORM = 1
   //
    If (M_NRFORM = 2) Then
    begin
      try
          BtImprimir.Enabled := False;
          //
          try
             TD.TransactionID  := StrtoInt(uPrincFolha.M_CDUSUA);
             TD.IsolationLevel := xilREADCOMMITTED;
             dmFolha.sqlCon_Folha.StartTransaction(TD);
             //
             dmFolha2.cdsConsulta.Close;
             With dmFolha2.dstConsulta do
              begin
                   Active := False;
                   CommandText := 'Select FUN_MATRICULA, FUN_NOME, FUN_DTINICIO_FERIAS, FUN_DTFIM_FERIAS, FUN_DTDIREITO_FERIAS, FUN_RECISAO ';
                   CommandText := CommandText + ' From FUNCIONARIOS Where (FUN_EMPRESA = :pEMPRESA) ';
                   Params.ParamByName('pEMPRESA').AsInteger := StrtoInt(edtEmpresa.Text);
                   Active := True;
              End;
             dmFolha2.cdsConsulta.FetchParams;
             dmFolha2.cdsConsulta.Open;
             //
             If not (dmFolha2.cdsConsulta.IsEmpty) Then
                begin
                     //
                     cdsDados.Close;
                     cdsDados.Open;
                     cdsDados.EmptyDataSet;
                     //
                     dmFolha2.cdsConsulta.First;
                     While not (dmFolha2.cdsConsulta.Eof) do
                      begin
                         If (dmFolha2.cdsConsulta.FieldByName('FUN_RECISAO').IsNull) Then
                         Begin
                            // descontos
                            With cdsDadosFolha do
                            begin
                                 Active := False;
                                 Params.ParamByName('pMATRICULA').AsInteger := dmFolha2.cdsConsulta.FieldByName('FUN_MATRICULA').AsInteger;
                                 Params.ParamByName('pCODIGO').AsString     := edtMesAno.Text;
                                 Params.ParamByName('pDESBEN').AsInteger    := 2;
                                 Active := true;
                            End;
                            //
                            If not (cdsDadosFolha.IsEmpty) Then
                            begin
                               cdsDadosFolha.First;
                               While not (cdsDadosFolha.Eof) do
                               begin
                                  With cdsDados do
                                  begin
                                     // Incluir
                                     Append;
                                     FieldByName('CDS_FOLHA').AsString      := edtMesAno.Text;
                                     FieldByName('CDS_MATRICULA').AsInteger := dmFolha2.cdsConsulta.FieldByName('FUN_MATRICULA').AsInteger;
                                     FieldByName('CDS_NOMEFUNC').AsString   := dmFolha2.cdsConsulta.FieldByName('FUN_NOME').AsString;
                                     FieldByName('CDS_BENEFICIO2').AsInteger := cdsDadosFolha.FieldByName('FOL_BENEFICIO').AsInteger;
                                     FieldByName('CDS_SIGLA2').AsString      := cdsDadosFolha.FieldByName('FOL_NMBENEFICIO').AsString;
                                     FieldByName('CDS_VALOR2').AsCurrency    := cdsDadosFolha.FieldByName('FOL_VLBENEFICIO').AsCurrency
                                                                                * cdsDadosFolha.FieldByName('FOL_QTBENEFICIO').AsFloat;
                                     // Grava
                                     Post;
                                 End;   // fim-do-with
                                 // proximo
                                 cdsDadosFolha.Next;
                               End;  // fim-do-enquanto
                            End;  // fim-se cdsDadosFolha.IsEmpty
                            //
                            cdsDados.Locate('CDS_MATRICULA',dmFolha2.cdsConsulta.FieldByName('FUN_MATRICULA').AsInteger,[]);
                            // beneficios
                            With cdsDadosFolha do
                            begin
                                 Active := False;
                                 Params.ParamByName('pMATRICULA').AsInteger := dmFolha2.cdsConsulta.FieldByName('FUN_MATRICULA').AsInteger;
                                 Params.ParamByName('pCODIGO').AsString     := edtMesAno.Text;
                                 Params.ParamByName('pDESBEN').AsInteger    := 1;
                                 Active := true;
                            End;
                            //
                            If not (cdsDadosFolha.IsEmpty) Then
                            begin
                               cdsDadosFolha.First;
                               While not (cdsDadosFolha.Eof) do
                               begin
                                  With cdsDados do
                                  begin
                                   If (cdsDados.FieldByName('CDS_MATRICULA').AsInteger
                                     = dmFolha2.cdsConsulta.FieldByName('FUN_MATRICULA').AsInteger ) Then
                                   begin
                                     If (cdsDados.Eof) Then
                                     begin
                                          Append;
                                          FieldByName('CDS_FOLHA').AsString      := edtMesAno.Text;
                                          FieldByName('CDS_MATRICULA').AsInteger := dmFolha2.cdsConsulta.FieldByName('FUN_MATRICULA').AsInteger;
                                          FieldByName('CDS_NOMEFUNC').AsString   := dmFolha2.cdsConsulta.FieldByName('FUN_NOME').AsString;
                                     End
                                     Else
                                         Edit;
                                     //
                                     FieldByName('CDS_BENEFICIO1').AsInteger := cdsDadosFolha.FieldByName('FOL_BENEFICIO').AsInteger;
                                     FieldByName('CDS_SIGLA1').AsString      := cdsDadosFolha.FieldByName('FOL_NMBENEFICIO').AsString;
                                     FieldByName('CDS_VALOR1').AsCurrency    := cdsDadosFolha.FieldByName('FOL_VLBENEFICIO').AsCurrency
                                                                                * cdsDadosFolha.FieldByName('FOL_QTBENEFICIO').AsFloat;
                                     // Grava
                                     Post;
                                     Next;
                                   End;
                                 End;   // fim-do-with
                                 // proximo
                                 cdsDadosFolha.Next;
                               End;  // fim-do-enquanto
                            End;  // fim-se cdsDadosFolha.IsEmpty
                         End; // fim-se  FUN_RECISAO
                         //
                         dmFolha2.cdsConsulta.Next;
                      End;
                     //
                End;
                //
                If not (cdsDados.IsEmpty ) Then
                begin
                     If FileExists(ExtractFilePath( Application.ExeName )+'\logo.jpg') Then
                          ppImage2.Picture.LoadFromFile(ExtractFilePath( Application.ExeName )+'\logo.jpg');
                     //
                     txtTitulo.Caption   := 'FOLHA DE PAGAMENTO DE '+
                                    uFuncoes.MesExtenso2(StrtoDate('01/'+copy(edtMesAno.Text,1,2)+'/'+copy(edtMesAno.Text,3,4)))
                                    +' DE '+Copy(DatetoStr(Date()),7,4);
                     lbl_Empresa2.Caption := 'EMPRESA : '+lbl_Funcionario.Caption;
                     //
                     ppReport2.PrintReport;
                End
                Else
                    Application.MessageBox('Registro de folha inexistente.','ATENÇÃO',
                        MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
             //
             dmFolha.sqlCon_Folha.Commit(TD);
          Except
               on Exc:Exception do
                begin
                    Application.MessageBox(PChar('Erro ao tentar gerar relatório!!!'
                            + Exc.Message), 'ATENÇÃO', MB_OK+MB_ICONSTOP+MB_APPLMODAL);
                     //  Cancelar transação no BD.
                     dmFolha.sqlCon_Folha.Rollback(TD);
                End;
          End;
      Finally
          BtImprimir.Enabled := True;
      End;
   End;   // fim-do-se M_NRFORM = 2
   //
    If (M_NRFORM = 3) Then
    begin
      try
          BtImprimir.Enabled := False;
          //
          try
             TD.TransactionID  := StrtoInt(uPrincFolha.M_CDUSUA);
             TD.IsolationLevel := xilREADCOMMITTED;
             dmFolha.sqlCon_Folha.StartTransaction(TD);
             // descontos
             dmFolha2.cdsConsulta.Close;
             With dmFolha2.dstConsulta do
              begin
                   Active := False;
                   CommandText := 'Select F.FOL_BENEFICIO, F.FOL_NMBENEFICIO, F.FOL_DESBEN, SUM(F.fol_vlbeneficio * F.FOL_QTBENEFICIO) AS VALOR from FOLHA F ';
                   CommandText := CommandText + ' Where (F.FOL_EMPRESA = :pEMPRESA) AND (FOL_CODIGO = :pCODIGO) AND (F.FOL_DESBEN = :pDESBEN) ';
                   CommandText := CommandText + 'Group by F.FOL_BENEFICIO, F.FOL_NMBENEFICIO, F.FOL_DESBEN order by F.FOL_BENEFICIO ';
                   Params.ParamByName('pEMPRESA').AsInteger := StrtoInt(edtEmpresa.Text);
                   Params.ParamByName('pCODIGO').AsString   := edtMesAno.Text;
                   Params.ParamByName('pDESBEN').AsInteger  := 2;
                   Active := True;
              End;
             dmFolha2.cdsConsulta.FetchParams;
             dmFolha2.cdsConsulta.Open;
             //
             cdsDados.Close;
             cdsDados.Open;
             cdsDados.EmptyDataSet;
             //
             If not (dmFolha2.cdsConsulta.IsEmpty) Then
               begin
                     //
                     dmFolha2.cdsConsulta.First;
                     While not (dmFolha2.cdsConsulta.Eof) do
                      begin
                           With cdsDados do
                            begin
                                 // Incluir
                                 Append;
                                 FieldByName('CDS_FOLHA').AsString      := edtMesAno.Text;
                                 FieldByName('CDS_MATRICULA').AsInteger := 1;
                                 FieldByName('CDS_NOMEFUNC').AsString   := dmFolha2.cdsConsulta.FieldByName('FOL_NMBENEFICIO').AsString;
                                 FieldByName('CDS_BENEFICIO2').AsInteger := dmFolha2.cdsConsulta.FieldByName('FOL_BENEFICIO').AsInteger;
                                 FieldByName('CDS_SIGLA2').AsString      := dmFolha2.cdsConsulta.FieldByName('FOL_NMBENEFICIO').AsString;
                                 FieldByName('CDS_VALOR2').AsCurrency    := dmFolha2.cdsConsulta.FieldByName('VALOR').AsCurrency;
                                 // Grava
                                 Post;
                            End;   // fim-do-with
                            // proximo
                            dmFolha2.cdsConsulta.Next;
                      End;  // fim-do-enquanto
               End;  // fim-se cdsDadosFolha.IsEmpty
               //
               cdsDados.First;
             // beneficios
             dmFolha2.cdsConsulta.Close;
             With dmFolha2.dstConsulta do
              begin
                   Active := False;
                   CommandText := 'Select F.FOL_BENEFICIO, F.FOL_NMBENEFICIO, F.FOL_DESBEN, SUM(F.fol_vlbeneficio * F.FOL_QTBENEFICIO) AS VALOR from FOLHA F ';
                   CommandText := CommandText + ' Where (F.FOL_EMPRESA = :pEMPRESA) AND (FOL_CODIGO = :pCODIGO) AND (F.FOL_DESBEN = :pDESBEN) ';
                   CommandText := CommandText + 'Group by F.FOL_BENEFICIO, F.FOL_NMBENEFICIO, F.FOL_DESBEN order by F.FOL_BENEFICIO ';
                   Params.ParamByName('pEMPRESA').AsInteger := StrtoInt(edtEmpresa.Text);
                   Params.ParamByName('pCODIGO').AsString   := edtMesAno.Text;
                   Params.ParamByName('pDESBEN').AsInteger  := 1;
                   Active := True;
              End;
             dmFolha2.cdsConsulta.FetchParams;
             dmFolha2.cdsConsulta.Open;
             //
             If not (dmFolha2.cdsConsulta.IsEmpty) Then
               begin
                     //
                     dmFolha2.cdsConsulta.First;
                     While not (dmFolha2.cdsConsulta.Eof) do
                      begin
                           With cdsDados do
                            begin
                                 If (cdsDados.Eof) Then
                                 begin
                                     Append;
                                     FieldByName('CDS_FOLHA').AsString      := edtMesAno.Text;
                                     FieldByName('CDS_MATRICULA').AsInteger := 1;
                                     FieldByName('CDS_NOMEFUNC').AsString   := dmFolha2.cdsConsulta.FieldByName('FOL_NMBENEFICIO').AsString;
                                 End
                                 Else
                                     Edit;
                                 //
                                 FieldByName('CDS_BENEFICIO1').AsInteger := dmFolha2.cdsConsulta.FieldByName('FOL_BENEFICIO').AsInteger;
                                 FieldByName('CDS_SIGLA1').AsString      := dmFolha2.cdsConsulta.FieldByName('FOL_NMBENEFICIO').AsString;
                                 FieldByName('CDS_VALOR1').AsCurrency    := dmFolha2.cdsConsulta.FieldByName('VALOR').AsCurrency;
                                 // Grava
                                 Post;
                                 Next;
                            End;   // fim-do-with
                            // proximo
                            dmFolha2.cdsConsulta.Next;
                      End;  // fim-do-enquanto
               End;  // fim-se cdsDadosFolha.IsEmpty
                //
                If not (cdsDados.IsEmpty ) Then
                begin
                     If FileExists(ExtractFilePath( Application.ExeName )+'\logo.jpg') Then
                          ppImage3.Picture.LoadFromFile(ExtractFilePath( Application.ExeName )+'\logo.jpg');
                     //
                     txtTitulo3.Caption   := 'FOLHA DE PAGAMENTO DE '+
                                    uFuncoes.MesExtenso2(StrtoDate('01/'+copy(edtMesAno.Text,1,2)+'/'+copy(edtMesAno.Text,3,4)))
                                    +' DE '+Copy(DatetoStr(Date()),7,4);
                     txtEmpresa3.Caption := 'EMPRESA : '+lbl_Funcionario.Caption;
                     txtResumo.Caption   := 'RESUMO DA FOLHA DE '+
                                    uFuncoes.MesExtenso2(StrtoDate('01/'+copy(edtMesAno.Text,1,2)+'/'+copy(edtMesAno.Text,3,4)))
                                    +' DE '+Copy(DatetoStr(Date()),7,4);
                     ppLine23.Left  := txtResumo.Left; 
                     ppLine23.Width := txtResumo.Width;
                     //
                     txtQuantFunc.Caption := InttoStr(dmFolha.QUANT_FUNCIONARIO(StrtoInt(edtEmpresa.text)));
                     //
                     ppReport3.PrintReport;
                End
                Else
                    Application.MessageBox('Registro de folha inexistente.','ATENÇÃO',
                        MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
             //
             dmFolha.sqlCon_Folha.Commit(TD);
          Except
               on Exc:Exception do
                begin
                    Application.MessageBox(PChar('Erro ao tentar gerar relatório!!!'
                            + Exc.Message), 'ATENÇÃO', MB_OK+MB_ICONSTOP+MB_APPLMODAL);
                     //  Cancelar transação no BD.
                     dmFolha.sqlCon_Folha.Rollback(TD);
                End;
          End;
      Finally
          BtImprimir.Enabled := True;
      End;
   End;   // fim-do-se M_NRFORM = 4
    If (M_NRFORM = 4) Then
    begin
      try
          BtImprimir.Enabled := False;
          //
          try
             TD.TransactionID  := StrtoInt(uPrincFolha.M_CDUSUA);
             TD.IsolationLevel := xilREADCOMMITTED;
             dmFolha.sqlCon_Folha.StartTransaction(TD);
             //
             With cdsRecibo do
              begin
                   Active := False;
                   Params.ParamByName('pCODIGO').AsString   := edtMesAno.Text;
                   Params.ParamByName('pEMPRESA').AsInteger := StrtoInt(edtEmpresa.Text);
                   Active := True;
              End;
              //
              If not (cdsRecibo.IsEmpty) Then
                begin
                     //
                     txtEmpresa4.Caption := lbl_Funcionario.Caption;
                     txtMesRefe.Caption  := 'MÊS DE REFERENCIA : '+
                                       uFuncoes.MesExtenso2(StrtoDate('01/'+copy(edtMesAno.Text,1,2)+'/'+copy(edtMesAno.Text,3,4)))
                                       +' DE '+Copy(DatetoStr(Date()),7,4);
                     //
                     ppReport4.PrintReport;
                     //
                     {Application.CreateForm(TfrmReciboPagamento, frmReciboPagamento);
                     Try
                         frmReciboPagamento.qrReciboPagamento.Preview;
                     Finally
                         frmReciboPagamento.Release;
                         frmReciboPagamento := nil;
                     End;}
                End
                Else
                    Application.MessageBox('Registro de folha inexistente.','ATENÇÃO',
                        MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
             //
             dmFolha.sqlCon_Folha.Commit(TD);
          Except
               on Exc:Exception do
                begin
                    Application.MessageBox(PChar('Erro ao tentar gerar relatório!!!'
                            + Exc.Message), 'ATENÇÃO', MB_OK+MB_ICONSTOP+MB_APPLMODAL);
                     //  Cancelar transação no BD.
                     dmFolha.sqlCon_Folha.Rollback(TD);
                End;
          End;
      Finally
          BtImprimir.Enabled := True;
      End;
   End;   // fim-do-se M_NRFORM = 4
end;

procedure TfrmRelFolhaPag.spLocEmpresaClick(Sender: TObject);
begin
    Application.CreateForm(TfrmLocalizarEmpresa, frmLocalizarEmpresa);
    Try
        frmLocalizarEmpresa.ShowModal;
    Finally
        M_CDEMPR := frmLocalizarEmpresa.cdsConsultar.FieldByname('EMP_CODIGO').AsInteger;
        edtEmpresa.Text := inttoStr(M_CDEMPR);
        //
        frmLocalizarEmpresa.Release;
        frmLocalizarEmpresa := nil;
    End;
end;

procedure TfrmRelFolhaPag.edtEmpresaChange(Sender: TObject);
begin
     If uFuncoes.Empty(edtEmpresa.Text) then
     Begin
          lbl_Funcionario.Caption := '';
          edtMesAno.Clear; 
     End;
end;

procedure TfrmRelFolhaPag.edtEmpresaExit(Sender: TObject);
begin
     If not uFuncoes.Empty(edtEmpresa.Text) Then
         If (uFuncoes.ValidarLoja(StrtoInt(edtEmpresa.Text))) Then
            begin
                 edtEmpresa.Text := uFuncoes.StrZero(edtEmpresa.Text,3);
                 lbl_Funcionario.Caption := dmFolha.GetNomeEmpresa(StrtoInt(edtEmpresa.Text));
                 //dmFolha2.qryConsulta.FieldByName('EMP_FANTASIA').AsString;
                 FOLHA(StrtoInt(edtEmpresa.Text));
                 edtMesAno.SetFocus; 
            End
            Else
            begin
                 Application.MessageBox('Registro de empresa inexistente.','ATENÇÃO',
                     MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
                 //
                 lbl_Funcionario.Caption := '';
                 edtEmpresa.Clear;
                 edtEmpresa.SetFocus;
                 Exit;
            End;
end;

procedure TfrmRelFolhaPag.edtEmpresaKeyPress(Sender: TObject;
  var Key: Char);
begin
     If not( key in['0'..'9',#8, #13] ) then
         key := #0;

      if (key = #13) and uFuncoes.Empty(edtEmpresa.Text) Then
        begin
             Key := #0;
             spLocEmpresaClick(Sender);
        End;
end;

procedure TfrmRelFolhaPag.ppDBText8Print(Sender: TObject);
begin
     If (cdsRelFolhaFOL_PEBENEFICIO.AsFloat > 0) then
     begin
         ppDBText8.Visible := True;
         ppLabel15.Visible := True;
     End
     Else
     begin
         ppDBText8.Visible := False;
         ppLabel15.Visible := False;
     End;
end;

procedure TfrmRelFolhaPag.ppDBText9Print(Sender: TObject);
begin
     //If (cdsRelFolhaFOL_PEBENEFICIO.AsFloat > 0)
     If (cdsRelFolhaFOL_VLBENEFICIO.AsFloat > 0) Then
         ppDBText9.Visible := True
     Else
         ppDBText9.Visible := False;
end;

procedure TfrmRelFolhaPag.ppDBText10Print(Sender: TObject);
begin
     If (cdsRelFolhaFOL_PEBENEFICIO.AsFloat = 0) then
         ppDBText10.Visible := True
     Else
         ppDBText10.Visible := False;
end;

procedure TfrmRelFolhaPag.cdsRelFolhaCalcFields(DataSet: TDataSet);
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

procedure TfrmRelFolhaPag.ppVariable2Calc(Sender: TObject;
  var Value: Variant);
begin
     If (M_FL13SA) and (rgParcelas.ItemIndex < 2)Then
         ppVariable2.AsCurrency := (ppDBCalc1.Value - ppDBCalc2.Value)/2
     Else
         ppVariable2.AsCurrency := ppDBCalc1.Value - ppDBCalc2.Value;
end;

procedure TfrmRelFolhaPag.FOLHA(M_CDEMPR: INTEGER);
Var
    M_MESFOL, M_ANOFOL : String;
    qryAux : TSQLQuery;
begin
     //
     qryAux := TSQLQuery.Create(nil);
     With qryAux do  //
      try
           //SQL.Clear;
           SQLConnection := dmFolha.sqlCon_Folha;
           Close;
           SQL.Add('Select EMP_CODIGO, EMP_FOLHA from EMPRESAS');
           SQL.Add('Where (EMP_CODIGO = :pCODIGO)');
           Params.ParamByName('pCODIGO').AsInteger := M_CDEMPR;
           Open;
           //
           If not (IsEmpty) Then
            begin
                 If uFuncoes.Empty(FieldByName('EMP_FOLHA').AsString) Then
                 begin
                      //edtMesAno.ReadOnly := False;
                      edtMesAno.SetFocus;
                 End
                 Else
                 begin
                      M_MESFOL := Copy(FieldByName('EMP_FOLHA').AsString,1,2);
                      M_ANOFOL := Copy(FieldByName('EMP_FOLHA').AsString,3,4);
                      If (StrtoInt(M_MESFOL)+1 > 13) Then
                       begin
                            M_MESFOL := '01';
                            M_ANOFOL := uFuncoes.StrZero(InttoStr(StrtoInt(M_ANOFOL)+1),4);
                       End
                       Else
                            M_MESFOL := uFuncoes.StrZero(InttoStr(StrtoInt(M_MESFOL)),2);
                       //
                       edtMesAno.Text := M_MESFOL+M_ANOFOL;
                      //
                      //edtMesAno.ReadOnly := True;
                 End;
            End;   // fim - do - se
      Finally
          Free;
      End;  // fim-with
end;

procedure TfrmRelFolhaPag.ppVlLiquidoCalc(Sender: TObject;
  var Value: Variant);
begin
     ppVlLiquido.AsCurrency := ppTotBeneficio.Value - ppTotDesconto.Value;
end;

procedure TfrmRelFolhaPag.ppDBTRemuPrint(Sender: TObject);
begin
     If (cdsReciboFOL_DESBEN.AsString  = '1') Then
         ppDBTRemu.Visible :=  True
     Else
         ppDBTRemu.Visible := False;
end;

procedure TfrmRelFolhaPag.ppDBTDescPrint(Sender: TObject);
begin
    { If (cdsRelFolhaFOL_PEBENEFICIO.AsFloat = 0) then
         ppDBText10.Visible := True
     Else
         ppDBText10.Visible := False;}

     If (cdsReciboFOL_DESBEN.AsInteger = 2)
      and not uFuncoes.Empty(cdsReciboFOL_VLDESC.AsString) Then
         ppDBTDesc.Visible :=  True
     Else
         ppDBTDesc.Visible := False;
end;

procedure TfrmRelFolhaPag.cdsReciboCalcFields(DataSet: TDataSet);
begin
     If (cdsReciboFOL_DESBEN.AsString  = '1') Then
          cdsReciboFOL_VALOR.AsCurrency := cdsReciboFOL_QTBENEFICIO.AsCurrency * cdsReciboFOL_VLBENEFICIO.AsFloat
     Else
     begin
          cdsReciboFOL_PERCENTUAL.AsCurrency := cdsReciboFOL_QTBENEFICIO.AsCurrency * cdsReciboFOL_VLBENEFICIO.AsFloat;
          cdsReciboFOL_VLDESC.AsCurrency     := cdsReciboFOL_QTBENEFICIO.AsCurrency * cdsReciboFOL_VLBENEFICIO.AsFloat;
     End;
     //
end;

procedure TfrmRelFolhaPag.ppVLLIQUCalc(Sender: TObject;
  var Value: Variant);
begin
     ppVLLIQU.AsCurrency := ppDBTotRemu.Value - ppDBTotDesc.Value;
end;


procedure TfrmRelFolhaPag.edtEmpresaEnter(Sender: TObject);
begin
     rgParcelas.Visible := False;
end;

end.
