unit uFrmReciboPagamento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmRelatorio, StdCtrls, Buttons, Mask, ExtCtrls, DBXpress,
  FMTBcd, DB, DBClient, Provider, SqlExpr, ppDB, ppDBPipe, ppComm,
  ppRelatv, ppProd, ppClass, ppReport, ppPrnabl, ppCtrls, ppBands, ppCache,
  ppVar, RpDefine, RpBase, RpSystem, RpRender, RpRenderPDF;

type
  TfrmRelReciboPaga = class(TfrmRelatorio)
    dstRecibo: TSQLDataSet;
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
    dstReciboFUN_CPF: TStringField;
    dspRecibo: TDataSetProvider;
    cdsRecibo: TClientDataSet;
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
    cdsReciboFOL_VALOR: TCurrencyField;
    cdsReciboFOL_PERCENTUAL: TCurrencyField;
    cdsReciboFOL_VLLIQUIDO: TCurrencyField;
    cdsReciboFOL_VLDESC: TCurrencyField;
    dsRecibo: TDataSource;
    ppReport1: TppReport;
    ppDBPipeline1: TppDBPipeline;
    ppHeaderBand1: TppHeaderBand;
    ppColumnHeaderBand1: TppColumnHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppColumnFooterBand1: TppColumnFooterBand;
    ppFooterBand1: TppFooterBand;
    ppDBText28: TppDBText;
    ppDBText29: TppDBText;
    ppDBTRemu: TppDBText;
    ppDBTDesc: TppDBText;
    ppLabel50: TppLabel;
    ppLabel48: TppLabel;
    ppDBText26: TppDBText;
    ppLabel49: TppLabel;
    ppDBText27: TppDBText;
    ppLabel51: TppLabel;
    ppLabel52: TppLabel;
    ppLabel53: TppLabel;
    ppLine18: TppLine;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppLabel54: TppLabel;
    ppLabel55: TppLabel;
    ppLabel56: TppLabel;
    ppDBTotRemu: TppDBCalc;
    ppDBTotDesc: TppDBCalc;
    ppVLLIQU: TppVariable;
    txtEmpresa4: TppLabel;
    ppLine16: TppLine;
    ppLabel57: TppLabel;
    ppLine17: TppLine;
    txtMesRefe: TppLabel;
    ppLine13: TppLine;
    cdsReciboFOL_VTBENE: TCurrencyField;
    cdsReciboFOL_VTDESC: TCurrencyField;
    RvSystem1: TRvSystem;
    BitBtn1: TBitBtn;
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
    cdsFuncionariosFUN_DTINICIO_FERIAS: TDateField;
    cdsFuncionariosFUN_DTFIM_FERIAS: TDateField;
    dstReciboFOL_PEBENEFICIO: TBCDField;
    cdsReciboFOL_PEBENEFICIO: TBCDField;
    cdsFuncionariosFUN_HORAS_TRABALHO: TBCDField;
    RvRenderPDF1: TRvRenderPDF;
    procedure BtImprimirClick(Sender: TObject);
    procedure ppDBTRemuPrint(Sender: TObject);
    procedure ppDBTDescPrint(Sender: TObject);
    procedure cdsReciboCalcFields(DataSet: TDataSet);
    procedure ppVLLIQUCalc(Sender: TObject; var Value: Variant);
    procedure BitBtn1Click(Sender: TObject);
    procedure RvSystem1Print(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelReciboPaga: TfrmRelReciboPaga;

implementation

uses udmFolha, uFuncoes, uPrincFolha;

{$R *.dfm}

procedure TfrmRelReciboPaga.BtImprimirClick(Sender: TObject);
Var
    TD : TTransactionDesc;
    M_LINHA : String;
begin
  inherited;
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
                     ppReport1.PrintReport;
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
end;

procedure TfrmRelReciboPaga.ppDBTRemuPrint(Sender: TObject);
begin
  inherited;
     If (cdsReciboFOL_DESBEN.AsString  = '1') Then
         ppDBTRemu.Visible :=  True
     Else
         ppDBTRemu.Visible := False;
end;

procedure TfrmRelReciboPaga.ppDBTDescPrint(Sender: TObject);
begin
  inherited;
     If (cdsReciboFOL_DESBEN.AsInteger = 2)
      and not uFuncoes.Empty(cdsReciboFOL_VLDESC.AsString) Then
         ppDBTDesc.Visible :=  True
     Else
         ppDBTDesc.Visible := False;
end;

procedure TfrmRelReciboPaga.cdsReciboCalcFields(DataSet: TDataSet);
begin
  inherited;
     If (cdsReciboFOL_DESBEN.AsString  = '1') Then
     Begin
          cdsReciboFOL_VALOR.AsCurrency := cdsReciboFOL_QTBENEFICIO.AsCurrency * cdsReciboFOL_VLBENEFICIO.AsFloat;
          cdsReciboFOL_VTBENE.AsCurrency := cdsReciboFOL_VTBENE.AsCurrency + cdsReciboFOL_VALOR.AsCurrency;
     end
     Else
     begin
          cdsReciboFOL_PERCENTUAL.AsCurrency := cdsReciboFOL_QTBENEFICIO.AsCurrency * cdsReciboFOL_VLBENEFICIO.AsFloat;
          cdsReciboFOL_VLDESC.AsCurrency     := cdsReciboFOL_QTBENEFICIO.AsCurrency * cdsReciboFOL_VLBENEFICIO.AsFloat;
          cdsReciboFOL_VTDESC.AsCurrency := cdsReciboFOL_VTDESC.AsCurrency + cdsReciboFOL_VLDESC.AsCurrency;
     End;
end;

procedure TfrmRelReciboPaga.ppVLLIQUCalc(Sender: TObject;
  var Value: Variant);
begin
  inherited;
     ppVLLIQU.AsCurrency := ppDBTotRemu.Value - ppDBTotDesc.Value;
end;

procedure TfrmRelReciboPaga.BitBtn1Click(Sender: TObject);
begin
  inherited;
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
      RVSystem1.SystemPreview.FormState := wsMaximized;
      RVSystem1.DefaultDest := rdPreview; { poderia ser rdPrinter para impressora }
      RVSystem1.SystemPrinter.Units := unCM; { Vamos trabalhar em Centimetoros }
      RVSystem1.Execute;
end;

procedure TfrmRelReciboPaga.RvSystem1Print(Sender: TObject);
Var
    Coluna,Linha : Double;
    M_NUMMES, M_NRPAGI, M_QTREGI : Integer;
    M_VLREMU, M_VLDESC, M_VLFGTS : Double;
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
              With cdsFuncionarios do
              begin
                   Active := False;
                   Params.ParamByName('pEMPRESA').AsInteger := StrtoInt(edtEmpresa.Text);
                   Active := True;
              End;
              //
              If not (cdsFuncionarios.IsEmpty) Then
                begin
                     //
                     Coluna := 1;
                     M_QTREGI := 1;
                     //
                     With Sender as TBaseReport do
                     Begin
                        Linha  := Linha + 0.4;
                        GotoXY(Coluna,Linha);
                        Print(' ');
                        //
                        While not (cdsFuncionarios.eof) do
                        begin
                          If (M_QTREGI > 4) Then
                          begin
                                 NewPage;
                                 {Linha  := 0.4;
                                 Coluna := 1;}
                                 M_NRPAGI := M_NRPAGI + 1;
                                 M_QTREGI := 1;
                          End;
                          //
                          If (M_QTREGI = 1) or (M_QTREGI = 3) Then
                             Linha := 0.4;
                          If (M_QTREGI = 2) or (M_QTREGI = 4) Then
                             Linha := 14;
                          //
                          If (M_QTREGI = 1) or (M_QTREGI = 2) Then
                             Coluna := 1;
                          If (M_QTREGI = 3) or (M_QTREGI = 4) Then
                             Coluna := 11;
                          //
                          M_VLREMU := 0;
                          M_VLDESC := 0;
                          //
                          GotoXY(Coluna,Linha); //
                          FontColor := clBlack; // Modifica a fonte padrão
                          FontSize := 10;
                          FontName := 'Courier New';
                          FontColor := clBlack;
                          Linha  := Linha + 0.4;
                          GotoXY(Coluna,Linha);
                          Print(uFuncoes.PadC(lbl_Funcionario.Caption,41));
                          // linha em branco
                          Linha  := Linha + 0.4;
                          GotoXY(Coluna,Linha);
                          Print(' ');
                          //
                          Linha  := Linha + 0.4;
                          GotoXY(Coluna,Linha);
                          Print(uFuncoes.Replicate('=',41));
                          Linha  := Linha + 0.4;
                          GotoXY(Coluna,Linha);
                          Print(uFuncoes.PadC('RECIBO DE PAGAMENTO',41));
                          Linha  := Linha + 0.4;
                          GotoXY(Coluna,Linha);
                          Print(uFuncoes.Replicate('=',41));
                          Linha  := Linha + 0.4;
                          GotoXY(Coluna,Linha);
                          Print('MÊS DE REFERENCIA : '+
                                       uFuncoes.MesExtenso2(StrtoDate('01/'+copy(edtMesAno.Text,1,2)+'/'+copy(edtMesAno.Text,3,4)))
                                       +' DE '+Copy(DatetoStr(Date()),7,4));
                          // linha em branco
                          Linha  := Linha + 0.4;
                          GotoXY(Coluna,Linha);
                          Print(' ');
                          //
                          Linha  := Linha + 0.4;
                          GotoXY(Coluna,Linha);
                          Print(uFuncoes.Replicate('-',41));
                          // linha em branco
                          Linha  := Linha + 0.4;
                          GotoXY(Coluna,Linha);
                          Print(' ');
                          //
                          Linha  := Linha + 0.4;
                          GotoXY(Coluna,Linha);
                          Print(Format('%7s', ['MATRICU.'])+ ' ' +  Format('%-40s',['NOME']));
                          Linha  := Linha + 0.4;
                          GotoXY(Coluna,Linha);
                          Print(Format('%7s',  [uFuncoes.StrZero(cdsFuncionariosFUN_MATRICULA.AsString,7)])  + '  '+
                                Format('%-40s',[cdsFuncionariosFUN_NOME.AsString]));
                          // linha em branco
                          Linha  := Linha + 0.4;
                          GotoXY(Coluna,Linha);
                          Print(' ');
                          //
                          Linha  := Linha + 0.4;
                          GotoXY(Coluna,Linha);
                          Print(Format('%3s',  ['COD'])+ ' '+ Format('%-15s',  ['DESCRICAO']) +
                                Format('%10s', ['REMUNERACOES'])+ ' '+ Format('%9s',  ['DESCONTOS']));
                          Linha  := Linha + 0.4;
                          GotoXY(Coluna,Linha);
                          Print(uFuncoes.Replicate('-',41));
                          //
                          With cdsRecibo do
                          begin
                               Active := False;
                               Params.ParamByName('pCODIGO').AsString   := edtMesAno.Text;
                               Params.ParamByName('pEMPRESA').AsInteger := StrtoInt(edtEmpresa.Text);
                               Params.ParamByName('pMATRICULA').AsInteger := cdsFuncionariosFUN_MATRICULA.AsInteger;
                               Active := True;
                               First;
                               //
                          End;
                          //
                          M_VLFGTS := 0;
                          While not (cdsRecibo.Eof) do
                          begin
                               Linha  := Linha + 0.4;
                               GotoXY(Coluna,Linha);
                               If (cdsReciboFOL_DESBEN.AsInteger = 1) Then
                               begin
                                 Print(uFuncoes.StrZero(cdsReciboFOL_BENEFICIO.AsString,3)+' '+
                                       Format('%-14s', [Copy(cdsReciboFOL_NMBENEFICIO.AsString,1,14)])+' '+
                                       Format('%10s',  [FormatFloat('###,##0.#0',cdsReciboFOL_VALOR.AsFloat)]));
                                 M_VLREMU := M_VLREMU + cdsReciboFOL_VALOR.AsFloat;
                               End
                               Else
                               begin
                                 Print(uFuncoes.StrZero(cdsReciboFOL_BENEFICIO.AsString,3)+' '+
                                       Format('%-14s',[Copy(cdsReciboFOL_NMBENEFICIO.AsString,1,14)])+' '+
                                       Format('%10s', [uFuncoes.Replicate(' ',10)])+' '+
                                       Format('%11s', [FormatFloat('###,##0.#0',cdsReciboFOL_VLDESC.AsFloat)]));
                                 M_VLDESC := M_VLDESC + cdsReciboFOL_VLDESC.AsFloat;
                               End;
                               //
                               If (cdsReciboFOL_BENEFICIO.AsInteger = 51) Then
                                  M_VLFGTS := cdsReciboFOL_VLBENEFICIO.AsCurrency; 
                               //
                               cdsRecibo.Next;
                          End;
                          //
                          Linha  := Linha + 0.4;
                          GotoXY(Coluna,Linha);
                          Println(' ');
                          Linha  := Linha + 0.4;
                          GotoXY(Coluna,Linha);
                          Println(' ');
                          //
                          Linha  := Linha + 0.4;
                          GotoXY(Coluna,Linha);
                          Print('*** TOTAIS ***'+uFuncoes.Replicate(' ',3)+Format('%12s',[FormatFloat('#,##0.#0',M_VLREMU)])+ ' '+Format('%11s',[FormatFloat('#,##0.#0',M_VLDESC)]) );
                          Linha  := Linha + 0.4;
                          GotoXY(Coluna,Linha);
                          //Print('*** RECOLHIMENTO FGTS ***');
                          Print(' ');
                          Linha  := Linha + 0.4;
                          GotoXY(Coluna,Linha);
                          Print(' ');
                          Linha  := Linha + 0.4;
                          GotoXY(Coluna,Linha);
                          //Print('*** LIQUIDO A RECEBER *** '+ Format('%15s',[FormatFloat('#,##0.#0',M_VLREMU - (M_VLDESC - M_VLFGTS))]));
                          Print('*** LIQUIDO A RECEBER *** '+ Format('%15s',[FormatFloat('#,##0.#0',M_VLREMU - (M_VLDESC))]));
                          //
                          Linha := 14;
                          M_QTREGI := M_QTREGI + 1;
                          // 1
                          cdsFuncionarios.Next;
                          //
                          {NewPage;
                          Linha  := 0.4;
                          Coluna := 1;
                          M_NRPAGI := M_NRPAGI + 1;
                          M_QTREGI := 1;}
                        End;  // fim-do-enquanto
                     End;
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

end.
