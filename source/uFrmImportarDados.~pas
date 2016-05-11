unit uFrmImportarDados;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls,
  ComCtrls, DBXpress, FileCtrl, DB, DBTables,  FMTBcd, SqlExpr, BmsXPProgressBar  ;

  //JvExControls, JvWaitingGradient, JvWaitingProgress, JvExComCtrls, JvProgressBar

type
  TfrmImportar = class(TForm)
    Panel1: TPanel;
    BtIniciar: TBitBtn;
    BtSair: TBitBtn;
    Panel2: TPanel;
    Label1: TLabel;
    edtPasta: TEdit;
    qryFunc: TQuery;
    qryFuncMAT01: TStringField;
    qryFuncNOME01: TStringField;
    qryFuncCONTA: TStringField;
    qryFuncEND01: TStringField;
    qryFuncCEP01: TStringField;
    qryFuncMUN01: TStringField;
    qryFuncUF01: TStringField;
    qryFuncSEX01: TStringField;
    qryFuncDTNAS01: TStringField;
    qryFuncNAC01: TStringField;
    qryFuncNAT01: TStringField;
    qryFuncANOC01: TStringField;
    qryFuncNATZ01: TStringField;
    qryFuncECIV01: TStringField;
    qryFuncGESC01: TStringField;
    qryFuncCPF01: TStringField;
    qryFuncPIS01: TStringField;
    qryFuncCART01: TStringField;
    qryFuncVINC01: TStringField;
    qryFuncDTADM01: TStringField;
    qryFuncSADM01: TFloatField;
    qryFuncCBO01: TStringField;
    qryFuncOFGTS01: TStringField;
    qryFuncFAIXA: TStringField;
    qryFuncTADM01: TStringField;
    qryIncluirFunc: TSQLQuery;
    lblPercentual: TLabel;
    BmsXPProgressBar1: TBmsXPProgressBar;
    qryLimpar: TSQLQuery;
    procedure BtSairClick(Sender: TObject);
    procedure BtIniciarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmImportar: TfrmImportar;

implementation

uses uFuncoes, uPrincFolha, udmFolha;

{$R *.dfm}

procedure TfrmImportar.BtSairClick(Sender: TObject);
begin
     Close;
end;

procedure TfrmImportar.BtIniciarClick(Sender: TObject);
Var
    TD : TTransactionDesc;
    Dir : String;
    cont, Total: integer;
begin
    If uFuncoes.Empty(edtPasta.Text) then
     begin
           edtPasta.SetFocus;
           Exit;
     End;
   //
   Dir := edtPasta.Text;
   if not DirectoryExists(Dir) then
   begin
        ShowMessage ('Diretório não existe!!!');
        edtPasta.Clear;
        edtPasta.SetFocus;
        Exit;
   End;
   //
   try
     BtIniciar.Enabled := False;
     //
     dmFolha.Start; 
     //
     try
          qryFunc.DatabaseName := Dir;
          dmFolha.parametros;
          //
          With qryLimpar do
            begin
                 Close;
                 ExecSQL();
            End;
          //
          dmFolha.cdsConfig.Edit;
          dmFolha.cdsConfigCFG_FUNCIONARIO.AsInteger := 0;
          dmFolha.cdsConfig.Post;
          //
          With qryFunc do
            begin
                 Close;
                 Open;
                 First;
                 //
                 Total := qryFunc.RecordCount;
                 BmsXPProgressBar1.Position := 0;
                 //
                 Cont  := 0;
                 //
                 While not (EoF) do
                  begin
                       With qryIncluirFunc do
                        begin
                             dmFolha.cdsConfig.Edit;
                             dmFolha.cdsConfigCFG_FUNCIONARIO.AsInteger :=
                               dmFolha.cdsConfigCFG_FUNCIONARIO.AsInteger + 1;
                             dmFolha.cdsConfig.Post;
                             Close;
                             Params.ParamByName('pMATRICULA').AsInteger := dmFolha.cdsConfigCFG_FUNCIONARIO.AsInteger;
                             Params.ParamByName('pCATEGORIA').AsInteger := 1;
                             Params.ParamByName('pFUN_NOME').AsString   := qryFunc.FieldByName('NOME01').AsString;
                             Params.ParamByName('pENDERECO').AsString := qryFunc.FieldByName('END01').AsString;
                             Params.ParamByName('pCEP').AsString      := qryFunc.FieldByName('CEP01').AsString;
                             Params.ParamByName('pCIDADE').AsInteger  := 1;
                             Params.ParamByName('pCPF').AsString      := qryFunc.FieldByName('CPF01').AsString;
                             If not uFuncoes.Empty(qryFunc.FieldByName('DTNAS01').AsString) Then
                                Params.ParamByName('pDATANASC').AsDate   := uFuncoes.FormatData(qryFunc.FieldByName('DTNAS01').AsString);
                             Params.ParamByName('pPISPASEP').AsString := qryFunc.FieldByName('PIS01').AsString;
                             Params.ParamByName('pCTPS').AsString     := Copy(qryFunc.FieldByName('CART01').AsString,1,10);
                             Params.ParamByName('pCTPSSERIE').AsString := qryFunc.FieldByName('VINC01').AsString;
                             If not uFuncoes.Empty(qryFunc.FieldByName('DTADM01').AsString) Then
                                Params.ParamByName('pADMISSAO').AsDate   := uFuncoes.FormatData(qryFunc.FieldByName('DTADM01').AsString);
                             If (qryFunc.FieldByName('SADM01').AsCurrency = 0) Then
                                 Params.ParamByName('pSALARIO').AsCurrency   := 240
                             Else
                                 Params.ParamByName('pSALARIO').AsCurrency   := qryFunc.FieldByName('SADM01').AsCurrency;
                             Params.ParamByName('pDATACADASTRO').AsDate  := Date();
                             Params.ParamByName('pEMPRESA').AsInteger    := 1;
                             Params.ParamByName('pHORAS').AsFloat        := 220;
                             If not uFuncoes.Empty(qryFunc.FieldByName('CBO01').AsString) Then
                                Params.ParamByName('pCBO').AsInteger     := 5243;
                             If not uFuncoes.Empty(qryFunc.FieldByName('GESC01').AsString) Then
                                Params.ParamByName('pESCOLARIDADE').AsInteger := qryFunc.FieldByName('GESC01').AsInteger;
                             //
                             ExecSQL();
                        End;
                       //
                       Cont := Cont + 1;
                       BmsXPProgressBar1.Position := (Cont * 100) div Total;
                       lblPercentual.Caption := InttoStr(BmsXPProgressBar1.Position)+'%';
                       Application.ProcessMessages;
                       //
                       Next;
                  End;
                  //
                  dmFolha.cdsConfig.ApplyUpdates(0);
                  //
            End;
          //
          dmFolha.Comit(Transc);
          //
          Application.MessageBox(PChar('Importação concluída com sucesso.'),
                  'ATENÇÃO', MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
          Close;
     Except
          on e: exception do
          begin
              Application.MessageBox(PChar('Error ao tentar importar dados! Erro:'+#13
                      + E.Message),
                      'ATENÇÃO', MB_OK+MB_ICONSTOP+MB_APPLMODAL);
              dmFolha.Rollback;
              Close;
          End;
     End;
   Finally
         qryFunc.Close;
         BtIniciar.Enabled := True;
   End;
end;

end.
