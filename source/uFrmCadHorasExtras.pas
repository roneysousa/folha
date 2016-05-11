unit uFrmCadHorasExtras;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmCadastro, FMTBcd, DBClient, Provider, DB, SqlExpr, Buttons,
  Grids, DBGrids, StdCtrls, ExtCtrls, ComCtrls, DBCtrls, Mask, ToolEdit,
  RXDBCtrl;

type
  TfrmCadHorasExtras = class(TfrmCadastro)
    Label1: TLabel;
    dbeMatricula: TDBEdit;
    dsHoras: TDataSource;
    Label2: TLabel;
    Label3: TLabel;
    dbeHoInicial: TDBEdit;
    Label4: TLabel;
    dbeHoFinal: TDBEdit;
    Label5: TLabel;
    dbmJustificativa: TDBMemo;
    spLocalizar: TSpeedButton;
    dbeData: TDBDateEdit;
    lbl_Funcionario: TLabel;
    DBText1: TDBText;
    procedure spLocalizarClick(Sender: TObject);
    procedure dbmJustificativaKeyPress(Sender: TObject; var Key: Char);
    procedure BtGravarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BtAdicionarClick(Sender: TObject);
    procedure BtCancelarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dbeMatriculaExit(Sender: TObject);
    procedure dbeHoInicialExit(Sender: TObject);
    procedure dbeHoFinalExit(Sender: TObject);
    procedure dbeDataExit(Sender: TObject);
    procedure dbeMatriculaChange(Sender: TObject);
  private
    { Private declarations }
     procedure tratabotoes;
     procedure buscar;
  public
    { Public declarations }
  end;

var
  frmCadHorasExtras: TfrmCadHorasExtras;
  M_NRMATR : Integer;

implementation

uses udmFolha, uFrmLocFunc, uFuncoes, udmFolha2;

{$R *.dfm}

procedure TfrmCadHorasExtras.spLocalizarClick(Sender: TObject);
begin
  inherited;
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

procedure TfrmCadHorasExtras.dbmJustificativaKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
      Key:= Upcase(Key);
end;

procedure TfrmCadHorasExtras.BtGravarClick(Sender: TObject);
begin
  inherited;
     TabSheet2.TabVisible := False;
     If uFuncoes.Empty(dbeMatricula.Text) Then
       Begin
           Application.MessageBox('Digite a matricula do funcionário.','ATENÇÃO',
               MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
           dbeMatricula.SetFocus;
           Exit;
       End;
     //
     If (dbeHoInicial.Text = '  :  ') Then
       Begin
           Application.MessageBox('Digite a hora inicial.','ATENÇÃO',
               MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
           dbeHoInicial.SetFocus;
           Exit;
       End;
     //
     If (dbeHoFinal.Text = '  :  ') Then
       Begin
           Application.MessageBox('Digite a hora final.','ATENÇÃO',
               MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
           dbeHoFinal.SetFocus;
           Exit;
       End;
     //
     If uFuncoes.Empty(dbmJustificativa.Lines.Text) Then
       Begin
           Application.MessageBox('Digite a justificativa.','ATENÇÃO',
               MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
           dbmJustificativa.SetFocus;
           Exit;
       End;
       //
       try
            tratabotoes;
            TabSheet2.TabVisible := False;
            dmFolha.cdsHorasExtras.FieldByName('HOR_FOLHA').AsString := uFuncoes.Replicate(' ',6);  
            dmFolha.cdsHorasExtras.ApplyUpdates(0);
            dmFolha.cdsHorasExtras.Close;
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
                //  Cancelar
                dmFolha.cdsHorasExtras.Cancel
           End;
       End;
end;

procedure TfrmCadHorasExtras.buscar;
begin

end;

procedure TfrmCadHorasExtras.tratabotoes;
begin
   BtAdicionar.Enabled := not BtAdicionar.Enabled;
   spLocalizar.Enabled := not spLocalizar.Enabled; 
  { BtEditar.Enabled := not BtEditar.Enabled;
   BtExcluir.Enabled := not BtExcluir.Enabled;
   BtPesquisar.Enabled := not BtPesquisar.Enabled;}
   BtCancelar.Enabled := not BtCancelar.Enabled;
   BtGravar.Enabled := not BtGravar.Enabled;
   BtSair.Enabled := not BtSair.Enabled;
end;

procedure TfrmCadHorasExtras.FormShow(Sender: TObject);
begin
  inherited;
   BtEditar.Visible    := False;
   BtExcluir.Visible   := False;
   BtPesquisar.Visible := False;
   lbl_Funcionario.Caption := '';
   //
   TabSheet2.TabVisible := False;
   BtAdicionar.SetFocus;
end;

procedure TfrmCadHorasExtras.BtAdicionarClick(Sender: TObject);
begin
  inherited;
     tratabotoes;
     //
     With dmFolha.cdsHorasExtras do
      begin
           Active := False;
           Params.ParamByName('pMATRICULA').AsInteger := dmFolha.mvcodigo('FUN_MATRICULA', 'HORAS_EXTRAS');
           Active := True;
           //
           Append;
           FieldByName('HOR_DTMOVI').AsDateTime := Date(); 
           dbeMatricula.SetFocus;
      End;
end;

procedure TfrmCadHorasExtras.BtCancelarClick(Sender: TObject);
begin
  inherited;
      tratabotoes;
      TabSheet2.TabVisible := False;
      dmFolha.cdsHorasExtras.Cancel;
      dmFolha.cdsHorasExtras.Close;
      //
      BtAdicionar.SetFocus;
end;

procedure TfrmCadHorasExtras.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
      dmFolha.cdsHorasExtras.Close;
      //
      Action := caFree;
end;

procedure TfrmCadHorasExtras.dbeMatriculaExit(Sender: TObject);
begin
  inherited;
     If  (dmFolha.cdsHorasExtras.State in [dsInsert])
       and not uFuncoes.Empty(dbeMatricula.Text) Then
           If (uFuncoes.ValidarMatricula(StrtoInt(dbeMatricula.Text))) Then
            begin
                 dbeMatricula.Text := uFuncoes.StrZero(dbeMatricula.Text,7);
                 lbl_Funcionario.Caption := dmFolha.GetNomeFuncionario(StrtoInt(dbeMatricula.Text));
                 //dmFolha.qryConsulta.FieldByName('FUN_NOME').AsString;
            End
            Else
            begin
                 Application.MessageBox('Registro de funcionário inexistente.','ATENÇÃO',
                     MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
                 //
                 lbl_Funcionario.Caption := '';
                 dbeMatricula.Clear;
                 dbeMatricula.SetFocus;
                 Exit;
            End;
end;

procedure TfrmCadHorasExtras.dbeHoInicialExit(Sender: TObject);
begin
  inherited;
   If (dmFolha.cdsHorasExtras.State in [dsInsert, dsEdit]) Then
   Begin
     If (dbeHoInicial.Text <> '  :  ') Then
     begin
        try
           //StrToTime(Copy(dbeHoInicial.Text,1,2)+':'+Copy(dbeHoInicial.Text,3,2));
           StrToTime(dbeHoInicial.Text);
           //
        except
          on EConvertError do
          Begin
                ShowMessage ('Hora Inválida!');
                dbeHoInicial.Clear;
                dbeHoInicial.SetFocus;
                Exit;
          End;
        end;
     End;
   End;
end;

procedure TfrmCadHorasExtras.dbeHoFinalExit(Sender: TObject);
begin
  inherited;
   If (dmFolha.cdsHorasExtras.State in [dsInsert, dsEdit]) Then
   Begin
     If (dbeHoFinal.Text <> '  :  ') Then
     begin

        try
           If (dbeHoFinal.Text < dbeHoInicial.Text) then
            begin
                 dbeHoFinal.SetFocus;
                 Exit; 
            End;
           //
           StrToTime(dbeHoFinal.Text);
           //
        except
          on EConvertError do
          Begin
                ShowMessage ('Hora Inválida!');
                dbeHoFinal.Clear;
                dbeHoFinal.SetFocus;
                Exit;
          End;
        end;
     End;
   End;
end;

procedure TfrmCadHorasExtras.dbeDataExit(Sender: TObject);
begin
  inherited;
  If (dmFolha.cdsHorasExtras.State in [dsInsert, dsEdit]) Then
    If (dbeData.Text <> '  /  /    ') Then
    begin
        try
              StrToDate(dbeData.Text);
              dbeData.Date := StrToDate(dbeData.Text);
        except
              on EConvertError do
              begin
                  ShowMessage ('Data Inválida!');
                  dbeData.Clear;
                  dbeData.SetFocus;
                  Exit;
              End;
        end;
    End;
end;

procedure TfrmCadHorasExtras.dbeMatriculaChange(Sender: TObject);
begin
  inherited;
      If uFuncoes.Empty(dbeMatricula.Text) Then
         lbl_Funcionario.Caption := '';
end;

End.
