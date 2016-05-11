unit uFrmCadFaltas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ToolEdit, RXDBCtrl, StdCtrls, DBCtrls, Mask, Buttons, ComCtrls,
  ExtCtrls, DB;

type
  TfrmCadFaltas = class(TForm)
    Panel4: TPanel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Label1: TLabel;
    Label2: TLabel;
    Label5: TLabel;
    spLocalizar: TSpeedButton;
    lbl_Funcionario: TLabel;
    Panel1: TPanel;
    BtAdicionar: TBitBtn;
    BtCancelar: TBitBtn;
    BtGravar: TBitBtn;
    BtSair: TBitBtn;
    dbeMatricula: TDBEdit;
    dbmJustificativa: TDBMemo;
    dbeData: TDBDateEdit;
    dsFaltas: TDataSource;
    procedure FormShow(Sender: TObject);
    procedure spLocalizarClick(Sender: TObject);
    procedure dbeMatriculaChange(Sender: TObject);
    procedure BtSairClick(Sender: TObject);
    procedure BtAdicionarClick(Sender: TObject);
    procedure BtCancelarClick(Sender: TObject);
    procedure BtGravarClick(Sender: TObject);
    procedure dbeMatriculaExit(Sender: TObject);
    procedure dbmJustificativaKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    procedure tratabotoes;
  public
    { Public declarations }
  end;

var
  frmCadFaltas: TfrmCadFaltas;
  M_NRMATR : Integer;

implementation

uses uFrmLocFunc, udmFolha, uFuncoes, udmFolha2, SqlExpr;

{$R *.dfm}

procedure TfrmCadFaltas.FormShow(Sender: TObject);
begin
     lbl_Funcionario.Caption := '';
     BtAdicionar.SetFocus;
end;

procedure TfrmCadFaltas.tratabotoes;
begin
   BtAdicionar.Enabled := not BtAdicionar.Enabled;
   spLocalizar.Enabled := not spLocalizar.Enabled;
   BtCancelar.Enabled  := not BtCancelar.Enabled;
   BtGravar.Enabled    := not BtGravar.Enabled;
   BtSair.Enabled      := not BtSair.Enabled;
end;

procedure TfrmCadFaltas.spLocalizarClick(Sender: TObject);
begin
    Application.CreateForm(TfrmLocalizarFuncionario, frmLocalizarFuncionario);
    Try
        frmLocalizarFuncionario.ShowModal;
    Finally
        M_NRMATR := frmLocalizarFuncionario.cdsConsultar.FieldByname('FUN_MATRICULA').AsInteger;
        dbeMatricula.Text := inttoStr(M_NRMATR);
        //
        frmLocalizarFuncionario.Release;
        frmLocalizarFuncionario := nil;
    End;
end;

procedure TfrmCadFaltas.dbeMatriculaChange(Sender: TObject);
begin
      If uFuncoes.Empty(dbeMatricula.Text) Then
         lbl_Funcionario.Caption := '';
end;

procedure TfrmCadFaltas.BtSairClick(Sender: TObject);
begin
     Close;
end;

procedure TfrmCadFaltas.BtAdicionarClick(Sender: TObject);
begin
     tratabotoes;
     With dmFolha.cdsFaltas do
      begin
           Active := False;
           Params.ParamByName('pMATRICULA').AsInteger := dmFolha.mvcodigo('FUN_MATRICULA', 'HORAS_EXTRAS');
           Active := True;
           //
           Append;
           FieldByName('FAL_DTMOVI').AsDateTime := Date();
           dbeMatricula.SetFocus;
      End;
end;

procedure TfrmCadFaltas.BtCancelarClick(Sender: TObject);
begin
     tratabotoes;
     dmFolha.cdsFaltas.Cancel; 
     dmFolha.cdsFaltas.Close;
end;

procedure TfrmCadFaltas.BtGravarClick(Sender: TObject);
Var
    M_NRMATR : Integer;
    M_DTMOVI : TDate;
    qraux : TSQLquery;
    texto : string;
begin
     If uFuncoes.Empty(dbeMatricula.Text) Then
       Begin
           Application.MessageBox('Digite a matricula do funcion�rio.','ATEN��O',
               MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
           dbeMatricula.SetFocus;
           Exit;
       End;
     //
     If (dbeData.Text = '  /  /    ') Then
       Begin
           Application.MessageBox('Digite a data da falta.','ATEN��O',
               MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
           dbeData.SetFocus;
           Exit;
       End;
     //
     If uFuncoes.Empty(dbmJustificativa.Lines.Text) Then
       Begin
           Application.MessageBox('Digite a justificativa.','ATEN��O',
               MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
           dbmJustificativa.SetFocus;
           Exit;
       End;
       //
     try
           tratabotoes;
           M_NRMATR := dmFolha.cdsFaltas.FieldByName('FUN_MATRICULA').AsInteger;
           M_DTMOVI := dmFolha.cdsFaltas.FieldByName('FAL_DTMOVI').AsDateTime;
           dmFolha.cdsFaltas.FieldByName('FAL_FOLHA').AsString := uFuncoes.Replicate(' ',6);
           dmFolha.cdsFaltas.ApplyUpdates(0);
           dmFolha.cdsFaltas.Close;
           //
           Texto := 'Insert into PONTO(PNT_FUNCIONARIO, PNT_DATAENTRADA, PNT_DATASAIDA, PNT_HORAENTRADA, PNT_HORASAIDA, PNT_FLPRESENCA)';
           Texto := Texto + ' Values (:pFUNCIONARIO, :pDATAENTRADA, :pDATASAIDA, :pHORAENTRADA, :pHORASAIDA, :pFLPRESENCA)';
           QrAux := TSqlquery.Create(nil);
           //
           with QrAux do
           try
               dmFolha.Start;
               try
                 SQLConnection := dmFolha.sqlCon_Folha;
                 sql.Add(texto);
                 Params.ParamByName('pFUNCIONARIO').AsInteger := M_NRMATR;
                 Params.ParamByName('pDATAENTRADA').AsDate    := M_DTMOVI;
                 Params.ParamByName('pDATASAIDA').AsDate      := M_DTMOVI;
                 Params.ParamByName('pHORAENTRADA').AsString  := '08:00';
                 Params.ParamByName('pHORASAIDA').AsString    := '18:00';
                 Params.ParamByName('pFLPRESENCA').AsString   := 'N';
                 ExecSQL();
                 //
                 dmFolha.Comit(Transc);
               Except
                   dmFolha.Rollback;  
               End;
               //
           finally
              free;
           end;
           //
          { With dmFolha2.qryConsulta do
            begin
                 SQL.Clear;
                 Close;
                 SQL.Add('Insert into PONTO(PNT_FUNCIONARIO, PNT_DATAENTRADA, PNT_DATASAIDA, PNT_HORAENTRADA, PNT_HORASAIDA, PNT_FLPRESENCA)');
                 SQL.Add('Values (:pFUNCIONARIO, :pDATAENTRADA, :pDATASAIDA, :pHORAENTRADA, :pHORASAIDA, :pFLPRESENCA)');
                 Params.ParamByName('pFUNCIONARIO').AsInteger := M_NRMATR;
                 Params.ParamByName('pDATAENTRADA').AsDate    := M_DTMOVI;
                 Params.ParamByName('pDATASAIDA').AsDate      := M_DTMOVI;
                 Params.ParamByName('pHORAENTRADA').AsString  := '08:00';
                 Params.ParamByName('pHORASAIDA').AsString    := '18:00';
                 Params.ParamByName('pFLPRESENCA').AsString   := 'N';
                 ExecSQL();
            End;    }
           //
           Application.MessageBox('Registro gravado com sucesso.','Conclu�do',
                 MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
            //
           BtAdicionar.SetFocus;
     Except
          on Exc:Exception do
           begin
               Application.MessageBox(PChar('Erro ao tentar gravar registro!!!'
                       + Exc.Message), 'ATEN��O', MB_OK+MB_ICONSTOP+MB_APPLMODAL);
                //  Cancelar
                dmFolha.cdsFaltas.Cancel;
           End;
     End;
end;

procedure TfrmCadFaltas.dbeMatriculaExit(Sender: TObject);
begin
     If  (dmFolha.cdsFaltas.State in [dsInsert])
       and not uFuncoes.Empty(dbeMatricula.Text) Then
           If (uFuncoes.ValidarMatricula(StrtoInt(dbeMatricula.Text))) Then
            begin
                 dbeMatricula.Text := uFuncoes.StrZero(dbeMatricula.Text,7);
                 lbl_Funcionario.Caption := dmFolha.GetNomeFuncionario(StrtoInt(dbeMatricula.Text));
                 //dmFolha.qryConsulta.FieldByName('FUN_NOME').AsString;
            End
            Else
            begin
                 Application.MessageBox('Registro de funcion�rio inexistente.','ATEN��O',
                     MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
                 //
                 lbl_Funcionario.Caption := '';
                 dbeMatricula.Clear;
                 dbeMatricula.SetFocus;
                 Exit;
            End;
end;

procedure TfrmCadFaltas.dbmJustificativaKeyPress(Sender: TObject;
  var Key: Char);
begin
      Key:= Upcase(Key);
end;

end.
