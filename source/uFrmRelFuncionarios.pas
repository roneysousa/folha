unit uFrmRelFuncionarios;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask, ExtCtrls, FMTBcd, DB, DBClient,
  Provider, SqlExpr, ppDB, ppDBPipe, ppComm, ppRelatv, ppProd, ppClass,
  ppReport, ppVar, ppCtrls, ppPrnabl, ppBands, ppCache, DBXpress;

type
  TfrmRelFuncionarios = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label3: TLabel;
    spLocEmpresa: TSpeedButton;
    lbl_Funcionario: TLabel;
    edtMesAno: TMaskEdit;
    edtEmpresa: TEdit;
    Panel5: TPanel;
    BtImprimir: TBitBtn;
    BtSair: TBitBtn;
    dstFuncionarios: TSQLDataSet;
    dspFuncionarios: TDataSetProvider;
    cdsFuncionarios: TClientDataSet;
    dsFuncionarios: TDataSource;
    cdsFuncionariosFOL_CODIGO: TStringField;
    cdsFuncionariosFUN_MATRICULA: TIntegerField;
    cdsFuncionariosFUN_NOME: TStringField;
    cdsFuncionariosFOL_QTBENEFICIO: TBCDField;
    cdsFuncionariosFOL_DESBEN: TStringField;
    cdsFuncionariosFOL_VLBENEFICIO: TFMTBCDField;
    cdsDados: TClientDataSet;
    cdsDadosMATRICULA: TStringField;
    cdsDadosNOME: TStringField;
    cdsDadosVALOR: TCurrencyField;
    ppReport1: TppReport;
    ppDBPipeline1: TppDBPipeline;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppImage1: TppImage;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLine1: TppLine;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    ppSystemVariable1: TppSystemVariable;
    lbl_empresa: TppLabel;
    lbl_referencia: TppLabel;
    ppLine2: TppLine;
    ppLine3: TppLine;
    ppLine4: TppLine;
    ppSummaryBand1: TppSummaryBand;
    ppLine5: TppLine;
    ppLabel4: TppLabel;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppReport2: TppReport;
    ppDBFuncCaixa: TppDBPipeline;
    dstFuncCaixa: TSQLDataSet;
    dspFuncCaixa: TDataSetProvider;
    cdsFuncCaixa: TClientDataSet;
    dsFuncCaixa: TDataSource;
    ppHeaderBand2: TppHeaderBand;
    ppDetailBand2: TppDetailBand;
    ppFooterBand2: TppFooterBand;
    ppImage2: TppImage;
    lbl_Empresa2: TppLabel;
    cdsFuncCaixaFUN_MATRICULA: TIntegerField;
    cdsFuncCaixaFUN_NOME: TStringField;
    cdsFuncCaixaFUN_EMPRESA: TIntegerField;
    cdsFuncCaixaFUN_DTINICIO_FERIAS: TDateField;
    cdsFuncCaixaFUN_DTFIM_FERIAS: TDateField;
    cdsFuncCaixaFUN_DTDIREITO_FERIAS: TDateField;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLine6: TppLine;
    ppLine7: TppLine;
    ppLine8: TppLine;
    ppLine9: TppLine;
    ppLabel11: TppLabel;
    ppLabel14: TppLabel;
    ppSystemVariable3: TppSystemVariable;
    ppSystemVariable4: TppSystemVariable;
    txtTitulo: TppLabel;
    ppReport3: TppReport;
    ppDBRelCaixa: TppDBPipeline;
    dsRelacaoCaixa: TDataSource;
    ppHeaderBand3: TppHeaderBand;
    ppDetailBand3: TppDetailBand;
    ppFooterBand3: TppFooterBand;
    ppImage3: TppImage;
    txtEmpresa: TppLabel;
    txtTitulo2: TppLabel;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppLine10: TppLine;
    ppLine11: TppLine;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppLabel22: TppLabel;
    ppLabel23: TppLabel;
    ppLine12: TppLine;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppSystemVariable5: TppSystemVariable;
    ppSystemVariable6: TppSystemVariable;
    ppDBText8: TppDBText;
    ppSummaryBand2: TppSummaryBand;
    ppDBCalc3: TppDBCalc;
    ppLine13: TppLine;
    rgOrdem: TRadioGroup;
    cdsFuncionariosFOL_PEBENEFICIO: TBCDField;
    procedure BtSairClick(Sender: TObject);
    procedure edtEmpresaChange(Sender: TObject);
    procedure edtEmpresaExit(Sender: TObject);
    procedure edtEmpresaKeyPress(Sender: TObject; var Key: Char);
    procedure spLocEmpresaClick(Sender: TObject);
    procedure edtMesAnoExit(Sender: TObject);
    procedure edtMesAnoKeyPress(Sender: TObject; var Key: Char);
    procedure BtImprimirClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    procedure FOLHA(M_CDEMPR : INTEGER);
  public
    { Public declarations }
  end;

var
  frmRelFuncionarios: TfrmRelFuncionarios;
  M_CDEMPR, M_NRFORM : Integer;

implementation

uses uFuncoes, udmFolha2, uFrmLocEmpresa, udmFolha, uPrincFolha;

{$R *.dfm}

procedure TfrmRelFuncionarios.BtSairClick(Sender: TObject);
begin
     Close;
end;

procedure TfrmRelFuncionarios.edtEmpresaChange(Sender: TObject);
begin
     If uFuncoes.Empty(edtEmpresa.Text) then
      begin
           lbl_Funcionario.Caption := '';
           edtMesAno.Clear;  
      End;
end;

procedure TfrmRelFuncionarios.edtEmpresaExit(Sender: TObject);
begin
     If not uFuncoes.Empty(edtEmpresa.Text) Then
         If (uFuncoes.ValidarLoja(StrtoInt(edtEmpresa.Text))) Then
            begin
                 edtEmpresa.Text := uFuncoes.StrZero(edtEmpresa.Text,3);
                 lbl_Funcionario.Caption := dmFolha.GetNomeEmpresa(StrtoInt(edtEmpresa.Text));
                 //dmFolha2.qryConsulta.FieldByName('EMP_FANTASIA').AsString;
                 //
                 FOLHA(StrtoInt(edtEmpresa.Text));
            End
            Else
            begin
                 Application.MessageBox('Registro de empresa inexistente.','ATEN��O',
                     MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
                 //
                 lbl_Funcionario.Caption := '';
                 edtEmpresa.Clear;
                 edtEmpresa.SetFocus;
                 Exit;
            End;
end;

procedure TfrmRelFuncionarios.FOLHA(M_CDEMPR: INTEGER);
Var
    M_MESFOL, M_ANOFOL : String;
    qryAux : TSQLQuery;
begin
     //
     qryAux := TSQLQuery.Create(nil);
     With qryAux do  // dmFolha2.qryConsulta
      try
           SQLConnection := dmFolha.sqlCon_Folha;
           SQL.Clear;
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
                      edtMesAno.ReadOnly := False;
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
                       if (edtMesAno.Enabled) Then
                          edtMesAno.SetFocus;
                 End;
            End;   // fim - do - se
      Finally
         Free;
      End;  // fim-with
end;

procedure TfrmRelFuncionarios.edtEmpresaKeyPress(Sender: TObject;
  var Key: Char);
begin
     If not( key in['0'..'9',#8, #13] ) then
         key := #0;
     //
      if (key = #13) and uFuncoes.Empty(edtEmpresa.Text) Then
        begin
             Key := #0;
             spLocEmpresaClick(Sender);
        End;
end;

procedure TfrmRelFuncionarios.spLocEmpresaClick(Sender: TObject);
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

procedure TfrmRelFuncionarios.edtMesAnoExit(Sender: TObject);
Var
     M_DTTEST : String;
     M_DATA : Tdate;
begin
    If uFuncoes.Empty(edtMesAno.Text) then
        edtMesAno.SetFocus
    Else
    Begin
         M_DTTEST := '01/'+Copy(edtMesAno.Text,1,2)+'/'+Copy(edtMesAno.Text,3,4);
         try
             StrtoDate(M_DTTEST);
             M_DATA := StrtoDate(M_DTTEST);
             M_DTTEST := DatetoStr(M_DATA);
             edtMesAno.Text := Copy(M_DTTEST,4,2)+Copy(M_DTTEST,7,4);
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

procedure TfrmRelFuncionarios.edtMesAnoKeyPress(Sender: TObject;
  var Key: Char);
begin
     If (key = #27) Then
      begin
           Key := #0;
           edtEmpresa.SetFocus;
           Exit;
      End;
end;

procedure TfrmRelFuncionarios.BtImprimirClick(Sender: TObject);
Var
    TD : TTransactionDesc;
    M_VLBENE, M_VLDESC : Double;
begin
     If uFuncoes.Empty(edtEmpresa.Text) Then
       Begin
           Application.MessageBox('Digite o c�digo da empresa.','ATEN��O',
               MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
           edtEmpresa.SetFocus;
           Exit;
       End;
     //
     If uFuncoes.Empty(edtMesAno.Text) Then
       Begin
           Application.MessageBox('Digite a referencia da folha.','ATEN��O',
               MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
           edtMesAno.SetFocus;
           Exit;
       End;
     //
   If (M_NRFORM = 1) Then
   begin
     try
         BtImprimir.Enabled := False;
         //
         dmFolha.Start;
         try
             {TD.TransactionID  := StrtoInt(uPrincFolha.M_CDUSUA);
             TD.IsolationLevel := xilREADCOMMITTED;
             dmFolha.sqlCon_Folha.StartTransaction(TD);}
             //
              cdsDados.Open;
              cdsDados.EmptyDataSet;
              //
              dmFolha2.cdsConsulta.Close;
              With dmFolha2.dstConsulta  do
                begin
                     Active := False;
                     CommandText := 'Select FUN_MATRICULA, FUN_NOME from FUNCIONARIOS Where (FUN_EMPRESA = :pEMPRESA)';
                     If (rgOrdem.ItemIndex = 0) Then
                        CommandText := CommandText  + ' order by FUN_MATRICULA'
                     Else
                        CommandText := CommandText  + ' order by FUN_NOME';
                     //   
                     Params.ParamByName('pEMPRESA').AsInteger := StrtoInt(edtEmpresa.Text);
                     Active := True;
                     //
                end;
               dmFolha2.cdsConsulta.FetchParams;
               dmFolha2.cdsConsulta.Open;
               //
               If not (dmFolha2.cdsConsulta.IsEmpty) Then
                   begin
                        dmFolha2.cdsConsulta.First;
                        While not (dmFolha2.cdsConsulta.Eof) do
                         begin
                              With cdsFuncionarios do
                                  begin
                                        Active := False;
                                        Params.ParamByName('pMATRICULA').AsInteger := dmFolha2.cdsConsulta.FieldByName('FUN_MATRICULA').AsInteger;
                                        Params.ParamByName('pCODIGO').AsString   := edtMesAno.Text;
                                        Params.ParamByName('pEMPRESA').AsInteger := StrtoInt(edtEmpresa.Text);
                                        Active := True;
                                        //
                                        If not (cdsFuncionarios.IsEmpty) then
                                          begin
                                               M_VLBENE := 0;
                                               M_VLDESC := 0;
                                               //
                                               cdsFuncionarios.First;
                                               While not (cdsFuncionarios.Eof) do
                                                begin
                                                     If (cdsFuncionarios.FieldByName('FOL_DESBEN').AsString = '1') Then
                                                         M_VLBENE := M_VLBENE + (cdsFuncionarios.FieldByName('FOL_VLBENEFICIO').AsCurrency*cdsFuncionarios.FieldByName('FOL_QTBENEFICIO').AsCurrency )
                                                     Else
                                                         M_VLDESC := M_VLDESC + (cdsFuncionarios.FieldByName('FOL_VLBENEFICIO').AsCurrency*cdsFuncionarios.FieldByName('FOL_QTBENEFICIO').AsCurrency );
                                                     //
                                                     cdsFuncionarios.Next;
                                                End;
                                                //
                                                With cdsDados do
                                                  begin
                                                       Append;
                                                       FieldByName('MATRICULA').AsString := uFuncoes.StrZero(cdsFuncionarios.FieldByname('FUN_MATRICULA').AsString ,7);
                                                       FieldByName('NOME').AsString      := cdsFuncionarios.FieldByname('FUN_NOME').AsString;
                                                       FieldByName('VALOR').AsCurrency   := M_VLBENE - M_VLDESC;
                                                       Post;
                                                  End
                                          End;
                                  End;
                                 //
                              dmFolha2.cdsConsulta.next;
                         End;  // fim-do-enquanto
                         //
                         If not (cdsDados.IsEmpty) Then
                         begin
                            With  ppReport1 do
                              begin
                                   If FileExists(ExtractFilePath( Application.ExeName )+'\logo.jpg') Then
                                      ppImage1.Picture.LoadFromFile(ExtractFilePath( Application.ExeName )+'\logo.jpg');
                                   //
                                   lbl_empresa.Caption    := 'EMPRESA    : '+lbl_Funcionario.Caption ;
                                   lbl_referencia.Caption := 'REFER�NCIA : '+Copy(edtMesAno.Text,1,2)+'/'+Copy(edtMesAno.Text,3,4);
                                   //
                                   PrintReport;
                              End;
                         End
                         Else
                         begin
                              Application.MessageBox('Registro de folha inexistente.','ATEN��O',
                                 MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
                              cdsDados.Close;
                         End;
                      End;
                //
                dmFolha.Comit(Transc);
         Except
               on Exc:Exception do
                begin
                    Application.MessageBox(PChar('Erro ao tentar gerar relat�rio!!!'
                            + Exc.Message), 'ATEN��O', MB_OK+MB_ICONSTOP+MB_APPLMODAL);
                    //  Cancelar transa��o no BD.
                    dmFolha.Rollback;
                End;
         End;
     Finally
         BtImprimir.Enabled := True;
     End;
  End;  // fim-se M_NRFORM := 1
  //
   If (M_NRFORM = 2) Then
   begin
     try
         BtImprimir.Enabled := False;
         try
             TD.TransactionID  := StrtoInt(uPrincFolha.M_CDUSUA);
             TD.IsolationLevel := xilREADCOMMITTED;
             dmFolha.sqlCon_Folha.StartTransaction(TD);
             //
              With cdsFuncCaixa do
                begin
                     Active := False;
                     Params.ParamByName('pEMPRESA').AsInteger := StrtoInt(edtEmpresa.Text);
                     Active := True;
                     //
                end;
               //
               If not (cdsFuncCaixa.IsEmpty) Then
                 begin
                        With ppReport2 do
                         begin
                              If FileExists(ExtractFilePath( Application.ExeName )+'\logo.jpg') Then
                                 ppImage2.Picture.LoadFromFile(ExtractFilePath( Application.ExeName )+'\logo.jpg');
                              //
                              lbl_Empresa2.Caption  := 'EMPRESA    : '+lbl_Funcionario.Caption ;
                              txtTitulo.Caption     := 'RELA��O DE CAIXA DE '+
                                    uFuncoes.MesExtenso2(StrtoDate('01/'+copy(edtMesAno.Text,1,2)+'/'+copy(edtMesAno.Text,3,4)))
                                    +' DE '+Copy(DatetoStr(Date()),7,4);
                              //
                              PrintReport;
                         End;
                 End
                 Else
                 begin
                      Application.MessageBox('Registro de folha inexistente.','ATEN��O',
                          MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
                 End;
                //
                dmFolha.sqlCon_Folha.Commit(TD);
         Except
               on Exc:Exception do
                begin
                    Application.MessageBox(PChar('Erro ao tentar gerar relat�rio!!!'
                            + Exc.Message), 'ATEN��O', MB_OK+MB_ICONSTOP+MB_APPLMODAL);
                    //  Cancelar transa��o no BD.
                    dmFolha.sqlCon_Folha.Rollback(TD);
                End;
         End;
     Finally
         BtImprimir.Enabled := True;
     End;
  End;  // fim-se M_NRFORM := 2
    //
   If (M_NRFORM = 3) Then
   begin
     try
         BtImprimir.Enabled := False;
         try
             TD.TransactionID  := StrtoInt(uPrincFolha.M_CDUSUA);
             TD.IsolationLevel := xilREADCOMMITTED;
             dmFolha.sqlCon_Folha.StartTransaction(TD);
             //
              cdsDados.Open;
              cdsDados.EmptyDataSet;
              //
              dmFolha2.cdsConsulta.Close;
              With dmFolha2.dstConsulta  do
                begin
                     Active := False;
                     CommandText := 'Select FUN_MATRICULA, FUN_NOME from FUNCIONARIOS Where (FUN_EMPRESA = :pEMPRESA) order by FUN_MATRICULA';
                     Params.ParamByName('pEMPRESA').AsInteger := StrtoInt(edtEmpresa.Text);
                     Active := True;
                     //
                end;
               dmFolha2.cdsConsulta.FetchParams;
               dmFolha2.cdsConsulta.Open;
               //
               If not (dmFolha2.cdsConsulta.IsEmpty) Then
                   begin
                        dmFolha2.cdsConsulta.First;
                        While not (dmFolha2.cdsConsulta.Eof) do
                         begin
                              With cdsFuncionarios do
                                  begin
                                        Active := False;
                                        Params.ParamByName('pMATRICULA').AsInteger := dmFolha2.cdsConsulta.FieldByName('FUN_MATRICULA').AsInteger;
                                        Params.ParamByName('pCODIGO').AsString   := edtMesAno.Text;
                                        Params.ParamByName('pEMPRESA').AsInteger := StrtoInt(edtEmpresa.Text);
                                        Active := True;
                                        //
                                        If not (cdsFuncionarios.IsEmpty) then
                                          begin
                                               M_VLBENE := 0;
                                               M_VLDESC := 0;
                                               //
                                               cdsFuncionarios.First;
                                               While not (cdsFuncionarios.Eof) do
                                                begin
                                                     If (cdsFuncionarios.FieldByName('FOL_DESBEN').AsString = '1') Then
                                                         M_VLBENE := M_VLBENE + (cdsFuncionarios.FieldByName('FOL_VLBENEFICIO').AsCurrency*cdsFuncionarios.FieldByName('FOL_QTBENEFICIO').AsCurrency )
                                                     Else
                                                         M_VLDESC := M_VLDESC + (cdsFuncionarios.FieldByName('FOL_VLBENEFICIO').AsCurrency*cdsFuncionarios.FieldByName('FOL_QTBENEFICIO').AsCurrency );
                                                     //
                                                     cdsFuncionarios.Next;
                                                End;
                                                //
                                                With cdsDados do
                                                  begin
                                                       Append;
                                                       FieldByName('MATRICULA').AsString := uFuncoes.StrZero(cdsFuncionarios.FieldByname('FUN_MATRICULA').AsString ,7);
                                                       FieldByName('NOME').AsString      := cdsFuncionarios.FieldByname('FUN_NOME').AsString;
                                                       FieldByName('VALOR').AsCurrency   := M_VLBENE - M_VLDESC;
                                                       Post;
                                                  End
                                          End;
                                  End;
                                 //
                              dmFolha2.cdsConsulta.next;
                         End;  // fim-do-enquanto
                         //
                         If not (cdsDados.IsEmpty) Then
                         begin
                            With  ppReport3 do
                              begin
                                   If FileExists(ExtractFilePath( Application.ExeName )+'\logo.jpg') Then
                                      ppImage3.Picture.LoadFromFile(ExtractFilePath( Application.ExeName )+'\logo.jpg');
                                   //
                                   txtEmpresa.Caption    := 'EMPRESA    : '+lbl_Funcionario.Caption ;
                                   txtTitulo2.Caption    := 'RELA��O DE CAIXA DE '+
                                         uFuncoes.MesExtenso2(StrtoDate('01/'+copy(edtMesAno.Text,1,2)+'/'+copy(edtMesAno.Text,3,4)))
                                         +' DE '+Copy(DatetoStr(Date()),7,4);
                                   //
                                   PrintReport;
                              End;
                         End
                         Else
                         begin
                              Application.MessageBox('Registro de folha inexistente.','ATEN��O',
                                 MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
                              cdsDados.Close;
                         End;
                      End;
                //
                dmFolha.sqlCon_Folha.Commit(TD);
         Except
               on Exc:Exception do
                begin
                    Application.MessageBox(PChar('Erro ao tentar gerar relat�rio!!!'
                            + Exc.Message), 'ATEN��O', MB_OK+MB_ICONSTOP+MB_APPLMODAL);
                    //  Cancelar transa��o no BD.
                    dmFolha.sqlCon_Folha.Rollback(TD);
                End;
         End;
     Finally
         BtImprimir.Enabled := True;
     End;
  End;  // fim-se M_NRFORM := 3
end;

procedure TfrmRelFuncionarios.FormShow(Sender: TObject);
begin
     lbl_Funcionario.Caption := '';
     If (M_NRFORM <> 1) Then
       rgOrdem.Visible := False;
end;

end.
