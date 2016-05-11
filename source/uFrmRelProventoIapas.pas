unit uFrmRelProventoIapas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmRelatorio, StdCtrls, Buttons, Mask, ExtCtrls, FMTBcd,
  DBClient, Provider, DB, SqlExpr, ppDB, ppDBPipe, ppComm, ppRelatv,
  ppProd, ppClass, ppReport, ppStrtch, ppMemo, ppCtrls, ppPrnabl, ppBands,
  ppCache, ppVar, DBXpress, Grids, DBGrids;

type
  TfrmRelProvIapas = class(TfrmRelatorio)
    ppReport1: TppReport;
    ppDBPipeline1: TppDBPipeline;
    dstProventoIAPAS: TSQLDataSet;
    dstProventoIAPASFUN_MATRICULA: TIntegerField;
    dstProventoIAPASFUN_NOME: TStringField;
    dstProventoIAPASFUN_SALARIO: TFMTBCDField;
    dstProventoIAPASFUN_EMPRESA: TIntegerField;
    dstProventoIAPASFUN_QTFILHOS: TIntegerField;
    dstProventoIAPASFUN_DTINICIO_FERIAS: TDateField;
    dstProventoIAPASFUN_DTFIM_FERIAS: TDateField;
    dstProventoIAPASFUN_DTDIREITO_FERIAS: TDateField;
    dspProventoIAPAS: TDataSetProvider;
    cdsProventoIAPAS: TClientDataSet;
    dsProventos: TDataSource;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppImage1: TppImage;
    lbl_Empresa: TppLabel;
    txtRelatorio: TppLabel;
    cdsProventoIAPASFUN_MATRICULA: TIntegerField;
    cdsProventoIAPASFUN_NOME: TStringField;
    cdsProventoIAPASFUN_SALARIO: TFMTBCDField;
    cdsProventoIAPASFUN_EMPRESA: TIntegerField;
    cdsProventoIAPASFUN_QTFILHOS: TIntegerField;
    cdsProventoIAPASFUN_DTINICIO_FERIAS: TDateField;
    cdsProventoIAPASFUN_DTFIM_FERIAS: TDateField;
    cdsProventoIAPASFUN_DTDIREITO_FERIAS: TDateField;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLine3: TppLine;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    ppSystemVariable1: TppSystemVariable;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppDBText3: TppDBText;
    ppSummaryBand1: TppSummaryBand;
    ppDBCalc1: TppDBCalc;
    cdsProventoIAPASMATRICULA: TStringField;
    cdsProventoIAPASFUN_SALFAM: TCurrencyField;
    ppDBText4: TppDBText;
    ppDBCalc2: TppDBCalc;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel14: TppLabel;
    ppLine4: TppLine;
    ppLine5: TppLine;
    dstFuncionarios: TSQLDataSet;
    dspFuncionarios: TDataSetProvider;
    cdsFuncionarios: TClientDataSet;
    cdsFuncionariosFOL_CODIGO: TStringField;
    cdsFuncionariosFUN_MATRICULA: TIntegerField;
    cdsFuncionariosFUN_NOME: TStringField;
    cdsFuncionariosFOL_QTBENEFICIO: TBCDField;
    cdsFuncionariosFOL_DESBEN: TStringField;
    cdsFuncionariosFOL_VLBENEFICIO: TFMTBCDField;
    dsFuncionarios: TDataSource;
    BtImprimir2: TBitBtn;
    cdsDados: TClientDataSet;
    cdsDadosMATRICULA: TStringField;
    cdsDadosNOME: TStringField;
    cdsDadosVALOR: TCurrencyField;
    dsDados: TDataSource;
    cdsDadosSAL_CONTRIBUICAO: TCurrencyField;
    cdsDadosSAL_FAMILIA: TCurrencyField;
    cdsDadosSAL_MATERNIDADE: TCurrencyField;
    cdsDadosOUTRAS_REMUNERACOES: TCurrencyField;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    cdsFuncionariosFOL_BENEFICIO: TIntegerField;
    dstFuncionariosFOL_CODIGO: TStringField;
    dstFuncionariosFUN_MATRICULA: TIntegerField;
    dstFuncionariosFUN_NOME: TStringField;
    dstFuncionariosFUN_SALARIO: TFMTBCDField;
    dstFuncionariosFOL_BENEFICIO: TIntegerField;
    dstFuncionariosFOL_QTBENEFICIO: TBCDField;
    dstFuncionariosFOL_DESBEN: TStringField;
    dstFuncionariosFOL_VLBENEFICIO: TFMTBCDField;
    cdsFuncionariosFUN_SALARIO: TFMTBCDField;
    cdsDadosIAPAS: TCurrencyField;
    ppDBText8: TppDBText;
    ppDBCalc3: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    ppDBCalc5: TppDBCalc;
    ppDBCalc6: TppDBCalc;
    ppLabel16: TppLabel;
    mnoFaixas: TppMemo;
    txtSalContrib: TppMemo;
    txtValorIAPAS: TppMemo;
    cdsResumo: TClientDataSet;
    cdsResumoCDS_CODIGO: TIntegerField;
    cdsResumoCDS_FAIXA: TFloatField;
    cdsResumoCDS_PEDESCONTO: TFloatField;
    cdsResumoCDS_VALOR: TCurrencyField;
    DataSource1: TDataSource;
    dstFuncionariosFOL_PEBENEFICIO: TBCDField;
    cdsFuncionariosFOL_PEBENEFICIO: TBCDField;
    procedure BtImprimirClick(Sender: TObject);
    procedure cdsProventoIAPASCalcFields(DataSet: TDataSet);
    procedure BtImprimir2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelProvIapas: TfrmRelProvIapas;

implementation

uses udmFolha, uPrincFolha, uFuncoes, udmFolha2;

{$R *.dfm}

procedure TfrmRelProvIapas.BtImprimirClick(Sender: TObject);
begin
  inherited;
      try
          BtImprimir.Enabled := False;
          //
          try
             TD.TransactionID  := StrtoInt(uPrincFolha.M_CDUSUA);
             TD.IsolationLevel := xilREADCOMMITTED;
             dmFolha.sqlCon_Folha.StartTransaction(TD);
             //
             With cdsProventoIAPAS do
              begin
                   Active := False;
                   //Params.ParamByName('pCODIGO').AsString   := edtMesAno.Text;
                   Params.ParamByName('pEMPRESA').AsInteger := StrtoInt(edtEmpresa.Text);
                   Active := True;
              End;
              //
              cdsProventoIAPAS.Open;
              If not (cdsProventoIAPAS.IsEmpty) Then
                begin
                     If FileExists(ExtractFilePath( Application.ExeName )+'\logo.jpg') Then
                          ppImage1.Picture.LoadFromFile(ExtractFilePath( Application.ExeName )+'\logo.jpg');
                     //
                     lbl_Empresa.Caption  := 'EMPRESA : '+lbl_Funcionario.Caption;
                     txtRelatorio.Caption := 'RELAÇÃO DE PROVENTOS E IAPAS DE '+
                                    uFuncoes.MesExtenso2(StrtoDate('01/'+copy(edtMesAno.Text,1,2)+'/'+copy(edtMesAno.Text,3,4)))
                                    +' DE '+Copy(DatetoStr(Date()),7,4);
                     //
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
end;

procedure TfrmRelProvIapas.cdsProventoIAPASCalcFields(DataSet: TDataSet);
begin
  inherited;
     cdsProventoIAPASMATRICULA.AsString :=
          uFuncoes.StrZero(cdsProventoIAPASFUN_MATRICULA.AsString,7);
     //
     If (cdsProventoIAPASFUN_QTFILHOS.AsInteger > 0 ) Then
        cdsProventoIAPASFUN_SALFAM.AsCurrency :=
              cdsProventoIAPASFUN_QTFILHOS.AsInteger *
              dmFolha2.SALARIO_FAMILIA(cdsProventoIAPASFUN_SALARIO.AsCurrency)
     Else
        cdsProventoIAPASFUN_SALFAM.AsCurrency := 0;
end;

procedure TfrmRelProvIapas.BtImprimir2Click(Sender: TObject);
Var
    TD : TTransactionDesc;
    M_VLBENE, M_VLDESC, M_VLSALA : Double;
    M_SLFAMI, M_SLMATE, M_OUREMU, M_VLIAPA, M_VLBRUT : Double;
    M_VLCONT, M_TOIAPA, M_VLINIC : Double;
begin
  inherited;
     Try
         BtImprimir2.Enabled := False;
         try
             TD.TransactionID  := StrtoInt(uPrincFolha.M_CDUSUA);
             TD.IsolationLevel := xilREADCOMMITTED;
             dmFolha.sqlCon_Folha.StartTransaction(TD);
             //
              cdsDados.Close;
              cdsDados.Open;
              cdsDados.EmptyDataSet;
              //
              dmFolha2.cdsConsulta.Close;
              With dmFolha2.dstConsulta  do
                begin
                     Active := False;
                     CommandText := 'Select FUN_MATRICULA, FUN_NOME, FUN_SALARIO from FUNCIONARIOS Where (FUN_EMPRESA = :pEMPRESA)';
                     CommandText := CommandText  + ' and (FUN_RECISAO is null) ';
                     CommandText := CommandText  + ' order by FUN_MATRICULA';
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
                                               M_SLFAMI := 0;
                                               M_SLMATE := 0;
                                               M_OUREMU := 0;
                                               M_VLSALA := 0;
                                               M_VLIAPA := 0;
                                               M_VLINIC := 0;
                                               //
                                               cdsFuncionarios.First;
                                               While not (cdsFuncionarios.Eof) do
                                                begin
                                                     If (cdsFuncionarios.FieldByName('FOL_DESBEN').AsString = '1')
                                                      and (cdsFuncionarios.FieldByName('FOL_BENEFICIO').AsInteger <> 4)  Then
                                                         M_VLBENE := M_VLBENE + (cdsFuncionarios.FieldByName('FOL_VLBENEFICIO').AsCurrency*cdsFuncionarios.FieldByName('FOL_QTBENEFICIO').AsCurrency)
                                                     Else
                                                         M_VLDESC := M_VLDESC + (cdsFuncionarios.FieldByName('FOL_VLBENEFICIO').AsCurrency*cdsFuncionarios.FieldByName('FOL_QTBENEFICIO').AsCurrency );
                                                     //
                                                     If (cdsFuncionarios.FieldByName('FOL_BENEFICIO').AsInteger = 4) Then
                                                         M_SLFAMI := cdsFuncionarios.FieldByName('FOL_VLBENEFICIO').AsCurrency*cdsFuncionarios.FieldByName('FOL_QTBENEFICIO').AsCurrency;
                                                     If (cdsFuncionarios.FieldByName('FOL_BENEFICIO').AsInteger = 2) Then
                                                         M_VLIAPA := cdsFuncionarios.FieldByName('FOL_VLBENEFICIO').AsCurrency*cdsFuncionarios.FieldByName('FOL_QTBENEFICIO').AsCurrency;
                                                     If (cdsFuncionarios.FieldByName('FOL_BENEFICIO').AsInteger > 100) Then
                                                         M_OUREMU := M_OUREMU + (cdsFuncionarios.FieldByName('FOL_VLBENEFICIO').AsCurrency*cdsFuncionarios.FieldByName('FOL_QTBENEFICIO').AsCurrency);
                                                     //
                                                     cdsFuncionarios.Next;
                                                End;
                                                //
                                                M_VLSALA := cdsFuncionarios.FieldByname('FUN_SALARIO').AsCurrency;
                                                With cdsDados do
                                                  begin
                                                       Append;
                                                       FieldByName('MATRICULA').AsString := uFuncoes.StrZero(cdsFuncionarios.FieldByname('FUN_MATRICULA').AsString ,7);
                                                       FieldByName('NOME').AsString      := cdsFuncionarios.FieldByname('FUN_NOME').AsString;
                                                       FieldByName('VALOR').AsCurrency   := M_VLSALA;
                                                       FieldByName('SAL_CONTRIBUICAO').AsCurrency  := M_VLBENE;
                                                       FieldByName('SAL_FAMILIA').AsCurrency       := M_SLFAMI;
                                                       FieldByName('SAL_MATERNIDADE').AsCurrency   := M_SLMATE;
                                                       FieldByName('OUTRAS_REMUNERACOES').AsCurrency  := M_OUREMU;
                                                       FieldByName('IAPAS').AsCurrency   := M_VLIAPA;
                                                       Post;
                                                  End;
                                                 //
                                                 cdsResumo.First;
                                                 M_VLINIC := 0;
                                                 While not (cdsResumo.Eof) do
                                                 begin
                                                      cdsResumo.edit;
                                                      If (M_VLBENE >= M_VLINIC)
                                                        and (cdsResumo.FieldByname('CDS_FAIXA').AsFloat >= M_VLBENE) Then
                                                            cdsResumo.FieldByname('CDS_VALOR').AsFloat :=
                                                                 cdsResumo.FieldByname('CDS_VALOR').AsFloat + M_VLBENE;
                                                      //
                                                      M_VLINIC := cdsResumo.FieldByname('CDS_FAIXA').AsFloat;
                                                      cdsResumo.Next;
                                                 End;
                                          End;
                                  End;
                                 //
                              dmFolha2.cdsConsulta.next;
                         End;  // fim-do-enquanto
                         //
                         If not (cdsDados.IsEmpty) Then
                         begin
                            //
                            With cdsResumo do
                              begin
                                   First;
                                   //
                                   mnoFaixas.Clear;
                                   txtSalContrib.Clear;
                                   txtValorIAPAS.Clear;
                                   //
                                   While not (Eof) do
                                    begin
                                         mnoFaixas.Lines.Add(FormatFloat('###,##0.#0',FieldByName('CDS_PEDESCONTO').AsFloat)+'%');
                                         //
                                         txtSalContrib.Lines.Add(FormatFloat('###,##0.#0',FieldByName('CDS_VALOR').AsCurrency));
                                         txtValorIAPAS.Lines.Add(FormatFloat('###,##0.#0',                                            uFuncoes.Gerapercentual(FieldByName('CDS_VALOR').AsCurrency, FieldByName('CDS_PEDESCONTO').AsFloat)));
                                         //
                                         next;
                                    End;
                              End;
                            //
                            With  ppReport1 do
                              begin
                                   If FileExists(ExtractFilePath( Application.ExeName )+'\logo.jpg') Then
                                      ppImage1.Picture.LoadFromFile(ExtractFilePath( Application.ExeName )+'\logo.jpg');
                                   //
                                   lbl_empresa.Caption  := 'EMPRESA    : '+lbl_Funcionario.Caption ;
                                   txtRelatorio.Caption := 'RELAÇÃO DE PROVENTOS E IAPAS DE '+Copy(edtMesAno.Text,1,2)+'/'+Copy(edtMesAno.Text,3,4);
                                   //
                                   PrintReport;
                              End;
                         End
                         Else
                         begin
                              Application.MessageBox('Registro de folha inexistente.','ATENÇÃO',
                                 MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
                              cdsDados.Close;
                         End;
                      End;
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
         BtImprimir2.Enabled := True;
     End;
end;

procedure TfrmRelProvIapas.FormShow(Sender: TObject);
begin
  inherited;
     cdsResumo.close;
     cdsResumo.open;
     cdsResumo.EmptyDataSet;
     //
     With dmFolha.cdsPrevidencia do
         begin
              Active := False;
              Active := true;
              First;
              //
              While not (Eof) do
                begin
                     With cdsResumo do
                      begin
                           Append;
                           FieldByname('CDS_CODIGO').AsInteger := dmFolha.cdsPrevidencia.FieldByName('PRE_CODIGO').AsInteger;
                           FieldByname('CDS_FAIXA').AsFloat    := dmFolha.cdsPrevidencia.FieldByName('PRE_FAIXA').AsFloat;
                           FieldByname('CDS_PEDESCONTO').AsFloat := dmFolha.cdsPrevidencia.FieldByName('PRE_PEDESCONTO').AsFloat;
                           FieldByname('CDS_VALOR').AsInteger  := 0;
                           Post;
                     End;
                     //
                     next;
                End;
         End;
end;

end.
