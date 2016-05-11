unit uFrmCadLancamentos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, DB, DBCtrls, Mask, DBXpress,
  FMTBcd, SqlExpr;

type
  TfrmCadLancamentos = class(TForm)
    Panel4: TPanel;
    Panel1: TPanel;
    Panel2: TPanel;
    BtAdicionar: TBitBtn;
    BtCancelar: TBitBtn;
    BtGravar: TBitBtn;
    BtSair: TBitBtn;
    Label1: TLabel;
    dsLancamentos: TDataSource;
    Label10: TLabel;
    dbeMatricula: TDBEdit;
    dbeValor: TDBEdit;
    Label7: TLabel;
    Label8: TLabel;
    dbeTitulo: TDBEdit;
    Label9: TLabel;
    dbmDescricao: TDBMemo;
    spLocalizar: TSpeedButton;
    edtNome: TEdit;
    Label2: TLabel;
    dbeAutotizador: TDBEdit;
    procedure BtSairClick(Sender: TObject);
    procedure BtAdicionarClick(Sender: TObject);
    procedure BtCancelarClick(Sender: TObject);
    procedure cmbFuncionarioClick(Sender: TObject);
    procedure BtGravarClick(Sender: TObject);
    procedure dbmDescricaoKeyPress(Sender: TObject; var Key: Char);
    procedure spLocalizarClick(Sender: TObject);
    procedure dbeMatriculaExit(Sender: TObject);
    procedure dbeMatriculaKeyPress(Sender: TObject; var Key: Char);
    procedure dbeMatriculaChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
       procedure tratabotoes;
       procedure LIMPAR;
       procedure ValidarMatricula(M_NRMATR : Integer);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadLancamentos: TfrmCadLancamentos;
  M_NRMATR : Integer;
  M_NMFUNC : String;

implementation

uses udmFolha, uFuncoes, DBClient, uFrmLocFunc, udmFolha2, uPrincFolha;

{$R *.dfm}

procedure TfrmCadLancamentos.BtSairClick(Sender: TObject);
begin
      Close;
end;


procedure TfrmCadLancamentos.tratabotoes;
begin
   BtAdicionar.Enabled := not BtAdicionar.Enabled;
   spLocalizar.Enabled := not spLocalizar.Enabled;
   BtCancelar.Enabled  := not BtCancelar.Enabled;
   BtGravar.Enabled    := not BtGravar.Enabled;
   BtSair.Enabled      := not BtSair.Enabled;
end;

procedure TfrmCadLancamentos.BtAdicionarClick(Sender: TObject);
begin
     tratabotoes;
     //
     dmFolha.parametros;
     dmFolha.cdsConfig.Edit;
     dmFolha.cdsConfig.FieldByName('CFG_MOVIMENTO').AsInteger :=
         dmFolha.cdsConfig.FieldByName('CFG_MOVIMENTO').AsInteger + 1;
     //
     With dmFolha.cdsMovimento do
      begin
           Active := False;
           Params.ParamByName('pSEQUENCIA').AsInteger :=
             dmFolha.cdsConfig.FieldByName('CFG_MOVIMENTO').AsInteger;
           Active := True;
           //
           Append;
           dbeMatricula.SetFocus;
      End;
end;

procedure TfrmCadLancamentos.BtCancelarClick(Sender: TObject);
begin
     tratabotoes;
     LIMPAR;
     dmFolha.cdsMovimento.Cancel;
     BtAdicionar.SetFocus;
end;

procedure TfrmCadLancamentos.LIMPAR;
begin
     edtNome.Clear;
end;

procedure TfrmCadLancamentos.cmbFuncionarioClick(Sender: TObject);
begin
      LIMPAR;
end;

procedure TfrmCadLancamentos.BtGravarClick(Sender: TObject);
Var
    TD : TTransactionDesc;
begin
     If uFuncoes.Empty(dbeMatricula.Text) Then
       Begin
           Application.MessageBox('Digite a matricula do funcionário.','ATENÇÃO',
               MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
           dbeMatricula.SetFocus;
           Exit;
       End;
     //
     If uFuncoes.Empty(dbeValor.Text) Then
       Begin
           Application.MessageBox('Digite o valor.','ATENÇÃO',
               MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
           dbeValor.SetFocus;
           Exit;
       End;
     //
     If uFuncoes.Empty(dbeAutotizador.Text) Then
       Begin
           Application.MessageBox('Digite o nome de quem está autorizando.','ATENÇÃO',
               MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
           dbeAutotizador.SetFocus;
           Exit;
       End;

     //
     If uFuncoes.Empty(dbeTitulo.Text) Then
       Begin
           Application.MessageBox('Digite o título.','ATENÇÃO',
               MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
           dbeTitulo.SetFocus;
           Exit;
       End;
     //
     If uFuncoes.Empty(dbmDescricao.Lines.Text) Then
       Begin
           Application.MessageBox('Digite a descrição.','ATENÇÃO',
               MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
           dbmDescricao.SetFocus;
           Exit;
       End;
     //
     {TD.TransactionID  := StrtoInt(uPrincFolha.M_CDUSUA);
     TD.IsolationLevel := xilREADCOMMITTED;
     dmFolha.sqlCon_Folha.StartTransaction(TD);}
     dmFolha.Start;
     //
     try
          tratabotoes;
          //
          dmFolha.parametros;
          //
          dmFolha.cdsConfig.Edit;
          dmFolha.cdsConfig.FieldByName('CFG_MOVIMENTO').AsInteger :=
              dmFolha.cdsConfig.FieldByName('CFG_MOVIMENTO').AsInteger + 1;
          dmFolha.cdsConfig.ApplyUpdates(0);
          //
          dmFolha.cdsMovimento.FieldByName('MOV_SEQUENCIA').AsInteger := dmFolha.cdsConfig.FieldByName('CFG_MOVIMENTO').AsInteger;
          dmFolha.cdsMovimento.FieldByName('MOV_DATA').AsDateTime     := Date();
          dmFolha.cdsMovimento.FieldByName('MOV_HORA').AsString       := TimetoStr(Time);
          dmFolha.cdsMovimento.FieldByName('MOV_TIPO').AsString       := '';
          // Grave registro
          dmFolha.cdsMovimento.ApplyUpdates(0);
          dmFolha.cdsMovimento.Close;
          //
          dmFolha.Comit(Transc);
          //sqlCon_Folha.Commit(TD);
          //
          LIMPAR;
          //
          Application.MessageBox('Registro gravado com sucesso.','Concluído',
               MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
          //
          BtAdicionar.SetFocus;
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
end;

procedure TfrmCadLancamentos.dbmDescricaoKeyPress(Sender: TObject;
  var Key: Char);
begin
     Key := Upcase(Key);
end;

procedure TfrmCadLancamentos.spLocalizarClick(Sender: TObject);
begin
    Application.CreateForm(TfrmLocalizarFuncionario, frmLocalizarFuncionario);
    Try
        uFrmLocFunc.M_NRFORM := 1;
        frmLocalizarFuncionario.ShowModal;
    Finally
        M_NRMATR := frmLocalizarFuncionario.cdsConsultar.FieldByname('FUN_MATRICULA').AsInteger;
        M_NMFUNC := frmLocalizarFuncionario.cdsConsultar.FieldByname('FUN_NOME').AsString;
        dmFolha.cdsMovimentoMOV_MATRICULA.AsInteger := M_NRMATR;
        edtNome.Text := M_NMFUNC;
        //
        frmLocalizarFuncionario.Release;
        frmLocalizarFuncionario := nil;
        //
        Perform(Wm_NextDlgCtl,0,0);
    End;
end;

procedure TfrmCadLancamentos.ValidarMatricula(M_NRMATR: Integer);
Var
    qraux : TSQLquery;
    texto : string;
begin
  texto  := 'Select FUN_MATRICULA, FUN_NOME from FUNCIONARIOS Where (FUN_MATRICULA = :pMATRICULA) ';
  //
  QrAux := TSqlquery.Create(nil);
  with QrAux do
   try
       SQLConnection := dmFolha.sqlCon_Folha;
       sql.Add(texto);
       Params.ParamByName('pMATRICULA').AsInteger   := M_NRMATR;
       Open;
       //
       If not(IsEmpty) Then
         begin
                 dmFolha.cdsMovimentoMOV_MATRICULA.AsInteger := FieldByName('FUN_MATRICULA').AsInteger;
                 edtNome.Text := FieldByName('FUN_NOME').AsString;
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
   finally
      free;
   end;
end;

procedure TfrmCadLancamentos.dbeMatriculaExit(Sender: TObject);
begin
     If (dmFolha.cdsMovimento.State in [dsInsert])
       and not uFuncoes.Empty(dbeMatricula.Text) Then
           ValidarMatricula(dmFolha.cdsMovimentoMOV_MATRICULA.AsInteger);
end;

procedure TfrmCadLancamentos.dbeMatriculaKeyPress(Sender: TObject;
  var Key: Char);
begin
      If (key = #27) Then
      begin
            Key := #0;
            BtCancelarClick(Sender);
      End;
      //
      if (key = #13)
        and (dmFolha.cdsMovimento.State in [dsInsert])
        and uFuncoes.Empty(dbeMatricula.Text) Then
        begin
             Key := #0;
             spLocalizarClick(Sender);
        End;
end;

procedure TfrmCadLancamentos.dbeMatriculaChange(Sender: TObject);
begin
      If uFuncoes.Empty(dbeMatricula.Text) Then
         edtNome.Clear;  
end;

procedure TfrmCadLancamentos.FormShow(Sender: TObject);
begin
     dmFolha.cdsMovimento.Close; 
     BtAdicionar.SetFocus;
end;

procedure TfrmCadLancamentos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
      dmFolha.cdsMovimento.Close;
      //
      Action := caFree;
end;

end.
