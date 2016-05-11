unit uFrmLancamentosBeneficios;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, Mask, DBCtrls, Db, Grids, DBGrids,
  DBClient, DBXpress;

type
  TfrmCadLancBeneficios = class(TForm)
    Panel4: TPanel;
    Panel1: TPanel;
    Label10: TLabel;
    spLocalizar: TSpeedButton;
    Label1: TLabel;
    edtNome: TEdit;
    Panel2: TPanel;
    Panel3: TPanel;
    edtEndereco: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    edtBairro: TEdit;
    Label4: TLabel;
    edtCidade: TEdit;
    Label5: TLabel;
    edtUF: TEdit;
    Label6: TLabel;
    Panel5: TPanel;
    BtAdicionar: TBitBtn;
    BtExcluir: TBitBtn;
    BtCancelar: TBitBtn;
    BtGravar: TBitBtn;
    BtSair: TBitBtn;
    edtCep: TMaskEdit;
    Label7: TLabel;
    dbeBeneficio: TDBEdit;
    dsLancBeneficios: TDataSource;
    Label8: TLabel;
    dbeQuantidade: TDBEdit;
    DBRadioGroup1: TDBRadioGroup;
    lbl_Valor: TLabel;
    dbeValor: TDBEdit;
    spLocBeneficio: TSpeedButton;
    grdConsultar: TDBGrid;
    cdsDados: TClientDataSet;
    cdsDadosCODIGO: TIntegerField;
    cdsDadosDESCRICAO: TStringField;
    cdsDadosTIPO: TStringField;
    cdsDadosQUANTIDADE: TIntegerField;
    cdsDadosVALOR: TCurrencyField;
    cdsDadosPERCENTUAL: TCurrencyField;
    cdsDadosFIXO: TStringField;
    dsDados: TDataSource;
    dbeMatricula: TEdit;
    lbl_Beneficio: TLabel;
    cdsDadosMATRICULA: TIntegerField;
    procedure BtSairClick(Sender: TObject);
    procedure spLocalizarClick(Sender: TObject);
    procedure dbeMatriculaChange(Sender: TObject);
    procedure dbeMatriculaExit(Sender: TObject);
    procedure dbeMatriculaKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure BtAdicionarClick(Sender: TObject);
    procedure BtCancelarClick(Sender: TObject);
    procedure BtGravarClick(Sender: TObject);
    procedure dbeBeneficioExit(Sender: TObject);
    procedure dbeBeneficioChange(Sender: TObject);
    procedure BtExcluirClick(Sender: TObject);
    procedure dbeQuantidadeExit(Sender: TObject);
    procedure spLocBeneficioClick(Sender: TObject);
    procedure dbeBeneficioKeyPress(Sender: TObject; var Key: Char);
    procedure dbeBeneficioEnter(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dbeQuantidadeKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    procedure LIMPAR;
    procedure tratabotoes;
    procedure CARREGAR_DADOS(M_MATRICULA : Integer);
    procedure APAGAR_REGISTRO(M_MATRICULA, M_CDBENE : Integer);
    Function VerificarBeneficio(M_CODIGO : Integer) : boolean;
  public
    { Public declarations }
  end;

var
  frmCadLancBeneficios: TfrmCadLancBeneficios;
  M_NRMATR : Integer;
  M_NMFUNC : String;


implementation

uses uFrmLocFunc, udmFolha, uFuncoes, udmFolha2, uPrincFolha, DateUtils,
  SqlExpr, uFrmLocBeneficio;

{$R *.dfm}

procedure TfrmCadLancBeneficios.BtSairClick(Sender: TObject);
begin
     Close;
end;

procedure TfrmCadLancBeneficios.spLocalizarClick(Sender: TObject);
begin
    Application.CreateForm(TfrmLocalizarFuncionario, frmLocalizarFuncionario);
    Try
        LIMPAR; 
        frmLocalizarFuncionario.ShowModal;
    Finally
        M_NRMATR := frmLocalizarFuncionario.cdsConsultar.FieldByname('FUN_MATRICULA').AsInteger;
        dbeMatricula.Text := inttoStr(M_NRMATR);
        //
        frmLocalizarFuncionario.Release;
        frmLocalizarFuncionario := nil;
    End;

end;

procedure TfrmCadLancBeneficios.dbeMatriculaChange(Sender: TObject);
begin
      If uFuncoes.Empty(dbeMatricula.Text) Then
         LIMPAR;
end;

procedure TfrmCadLancBeneficios.dbeMatriculaExit(Sender: TObject);
begin
     If not uFuncoes.Empty(dbeMatricula.Text) Then
           If (uFuncoes.ValidarMatricula(StrtoInt(dbeMatricula.Text))) Then
            begin
                 uFuncoes.FilterCDS(dmFolha.cdsFuncionarios, fsInteger, dbeMatricula.Text);
                 With dmFolha.cdsFuncionarios do   // dmFolha.qryConsulta
                 begin
                      dbeMatricula.Text := uFuncoes.StrZero(dbeMatricula.Text,7);
                      edtNome.Text     := FieldByName('FUN_NOME').AsString;
                      edtEndereco.Text := FieldByName('FUN_ENDERECO').AsString;
                      edtCep.Text      := FieldByName('FUN_CEP').AsString;
                      edtCidade.Text   := uFuncoes.NOME_CIDADE(FieldByName('FUN_CIDADE').AsInteger);
                      edtBairro.Text   := uFuncoes.NOME_BAIRRO(FieldByName('FUN_CIDADE').AsInteger, FieldByName('FUN_BAIRRO').AsInteger);
                      edtUF.Text       := FieldByName('FUN_UFIDEN').AsString;
                      //
                      BtAdicionar.Enabled := True;
                      BtExcluir.Enabled   := True;
                      //
                      CARREGAR_DADOS(StrtoInt(dbeMatricula.Text));
                      BtAdicionar.SetFocus;
                 End;
            End
            Else
            begin
                 Application.MessageBox('Registro de funcionário inexistente.','ATENÇÃO',
                     MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
                 //
                 LIMPAR;
                 dbeMatricula.Clear;
                 dbeMatricula.SetFocus;
                 Exit;
            End;
end;

procedure TfrmCadLancBeneficios.dbeMatriculaKeyPress(Sender: TObject;
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

procedure TfrmCadLancBeneficios.LIMPAR;
begin
     edtNome.Clear;
     edtEndereco.Clear;
     edtCep.Clear;
     edtBairro.Clear;
     edtCidade.Clear;
     edtUF.Clear;
     //
     If not(cdsDados.IsEmpty) Then
        cdsDados.EmptyDataSet;
     cdsDados.Close;
     //
     BtAdicionar.Enabled := False;
     BtExcluir.Enabled   := False;
end;

procedure TfrmCadLancBeneficios.FormShow(Sender: TObject);
begin
     dmFolha.cdsLancBeneficios.close;
     cdsDados.Close;
     //
     BtAdicionar.Enabled := False;
     BtExcluir.Enabled   := False;
     lbl_Beneficio.Caption := '';
     //
     grdConsultar.Align := alClient;
     dbeMatricula.SetFocus;
end;

procedure TfrmCadLancBeneficios.BtAdicionarClick(Sender: TObject);
begin
     tratabotoes;
     grdConsultar.Visible := False;
     //
     lbl_Valor.Visible := False;
     dbeValor.Visible  := False;
     //
     dmFolha.cdsLancBeneficios.close;
     With dmFolha.dstLancamentoBeneficios do
         begin
                 Active  := False;
                 CommandText := 'Select * from LANCAMENTOS Where (FUN_MATRICULA = :pMATRICULA)';
                 Params.ParamByName('pMATRICULA').AsInteger := StrtoInt(dbeMatricula.Text);
                 Active  := True
          End;
     //
     dmFolha.cdsLancBeneficios.Open;
     // 
     With dmFolha.cdsLancBeneficios do
     begin
           Append;
           FieldByName('LAN_FLFIXO').AsString := 'N';
           dbeMatricula.Enabled := False;
           dbeBeneficio.SetFocus;
      End;
end;

procedure TfrmCadLancBeneficios.tratabotoes;
begin
   BtAdicionar.Enabled := not BtAdicionar.Enabled;
   BtExcluir.Enabled   := not BtExcluir.Enabled; 
   //spLocalizar.Enabled := not spLocalizar.Enabled;
   spLocBeneficio.Enabled := not spLocBeneficio.Enabled;
   BtCancelar.Enabled  := not BtCancelar.Enabled;
   BtGravar.Enabled    := not BtGravar.Enabled;
   BtSair.Enabled      := not BtSair.Enabled;
end;

procedure TfrmCadLancBeneficios.BtCancelarClick(Sender: TObject);
begin
     tratabotoes;
     grdConsultar.Visible := True;
     dbeMatricula.Enabled := true;
     dbeMatricula.SetFocus; 
     //LIMPAR;
end;

procedure TfrmCadLancBeneficios.BtGravarClick(Sender: TObject);
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
     If (dbeValor.Visible = True) and uFuncoes.Empty(dbeValor.Text) Then
       Begin
           Application.MessageBox('Digite o valor.','ATENÇÃO',
               MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
           dbeValor.SetFocus;
           Exit;
       End;
     //
     If uFuncoes.Empty(dbeQuantidade.Text) Then
       Begin
           Application.MessageBox('Digite a quantidade.','ATENÇÃO',
               MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
           dbeQuantidade.SetFocus;
           Exit;
       End;
     //
     If uFuncoes.Empty(dbeBeneficio.Text) Then
       Begin
           Application.MessageBox('Digite o código do beneficio.','ATENÇÃO',
               MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
           dbeBeneficio.SetFocus;
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
          If uFuncoes.Empty(dmFolha.cdsLancBeneficios.FieldByName('LAN_VALOR_BENEFICIO').AsString) then
            begin
                 If uFuncoes.ValidarBeneficio(dmFolha.cdsLancBeneficios.FieldByName('DCB_CODIGO').AsInteger) Then
                  begin
                       If (dmFolha2.qryConsulta.FieldByName('DCB_VALOR').AsFloat > 0) Then
                           dmFolha.cdsLancBeneficios.FieldByName('LAN_VALOR_BENEFICIO').AsCurrency :=
                               dmFolha2.qryConsulta.FieldByName('DCB_VALOR').AsCurrency
                       Else
                           dmFolha.cdsLancBeneficios.FieldByName('LAN_VALOR_BENEFICIO').AsCurrency :=
                               dmFolha2.qryConsulta.FieldByName('DCB_PERCENTUAL').AsCurrency;
                  End;
            End;
          dmFolha.cdsLancBeneficios.FieldByName('FUN_MATRICULA').AsInteger := StrtoInt(dbeMatricula.Text);
          dmFolha.cdsLancBeneficios.FieldByName('LAN_DATA').AsDateTime     := Date();
          dmFolha.cdsLancBeneficios.FieldByName('LAN_HORA').AsString       := TimetoStr(Time);
          // Grave registro
          dmFolha.cdsLancBeneficios.ApplyUpdates(0);
          dmFolha.cdsLancBeneficios.Close;
          //
          dmFolha.Comit(Transc);
          //sqlCon_Folha.Commit(TD);
          //
          CARREGAR_DADOS(StrtoInt(dbeMatricula.Text));
          grdConsultar.Visible := True;
          //
          Application.MessageBox('Registro gravado com sucesso.','Concluído',
               MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
          //
          dbeMatricula.Enabled := true;
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

procedure TfrmCadLancBeneficios.CARREGAR_DADOS(M_MATRICULA: Integer);
begin
     If (cdsDados.Active) Then
         cdsDados.EmptyDataSet;
     //
     cdsDados.Close;
     //
     dmFolha.cdsLancBeneficios.close;
     With dmFolha.dstLancamentoBeneficios do
         begin
                 Active  := False;
                 CommandText := 'Select * from LANCAMENTOS Where (FUN_MATRICULA = :pMATRICULA)';
                 Params.ParamByName('pMATRICULA').AsInteger := M_MATRICULA;
                 Active  := True
          End;
     dmFolha.cdsLancBeneficios.FetchParams;
     dmFolha.cdsLancBeneficios.Open;
     //
     If not (dmFolha.cdsLancBeneficios.IsEmpty) Then
       begin
            With dmFolha.cdsLancBeneficios do
              begin
                   First;
                   cdsDados.Open;
                   While not (Eof) do
                    begin
                         uFuncoes.FilterCDS(dmFolha.cdsDescBene, fsInteger, FieldByName('DCB_CODIGO').AsString);
                         //
                         cdsDados.Append;
                         //
                         cdsDados.FieldByName('MATRICULA').AsInteger := M_MATRICULA;
                         cdsDados.FieldByName('CODIGO').AsInteger   := FieldByName('DCB_CODIGO').AsInteger;
                         cdsDados.FieldByName('DESCRICAO').AsString := uFuncoes.DESCRICAO_BENEFICIO(FieldByName('DCB_CODIGO').AsInteger);
                         // If (dmFolha2.qryConsulta.FieldByName('DCB_TIPO').AsString = '1') Then
                         If (dmFolha.cdsDescBene.FieldByName('DCB_TIPO').AsString = '1') Then
                             cdsDados.FieldByName('TIPO').AsString  := 'BENEFICIO'
                         Else
                             cdsDados.FieldByName('TIPO').AsString  := 'DESCONTO';
                         //
                         cdsDados.FieldByName('QUANTIDADE').AsInteger  := FieldByName('LAN_QUANTIDADE').AsInteger;
                         //
                         If (uFuncoes.ValidarBeneficio(dmFolha.cdsLancBeneficios.FieldByName('DCB_CODIGO').AsInteger)) Then
                         begin
                               //If (dmFolha2.qryConsulta.FieldByName('DCB_VALOR').AsCurrency > 0) Then
                               If (dmFolha.cdsDescBene.FieldByName('DCB_VALOR').AsCurrency > 0) Then
                               begin
                                    cdsDados.FieldByName('VALOR').AsCurrency      := FieldByName('LAN_VALOR_BENEFICIO').AsCurrency;
                                    cdsDados.FieldByName('PERCENTUAL').AsCurrency := 0;
                               End;
                               //
                               //If (dmFolha2.qryConsulta.FieldByName('DCB_PERCENTUAL').AsCurrency > 0) Then
                               If (dmFolha.cdsDescBene.FieldByName('DCB_PERCENTUAL').AsCurrency > 0) Then
                               begin
                                    cdsDados.FieldByName('VALOR').AsCurrency      := 0;
                                    cdsDados.FieldByName('PERCENTUAL').AsCurrency := FieldByName('LAN_VALOR_BENEFICIO').AsCurrency;
                               End;
                               //
                               {If (dmFolha2.qryConsulta.FieldByName('DCB_VALOR').AsCurrency = 0)
                                 and (dmFolha2.qryConsulta.FieldByName('DCB_PERCENTUAL').AsCurrency = 0) Then}
                               If (dmFolha.cdsDescBene.FieldByName('DCB_VALOR').AsCurrency = 0)
                                 and (dmFolha.cdsDescBene.FieldByName('DCB_PERCENTUAL').AsCurrency = 0) Then

                               begin
                                    cdsDados.FieldByName('VALOR').AsCurrency      := FieldByName('LAN_VALOR_BENEFICIO').AsCurrency;
                                    cdsDados.FieldByName('PERCENTUAL').AsCurrency := 0;
                               End;
                         End;
                         //
                         If (FieldByName('LAN_FLFIXO').AsString = 'N') Then
                             cdsDados.FieldByName('FIXO').AsString     := 'NÃO'
                         Else
                             cdsDados.FieldByName('FIXO').AsString     := 'SIM';
                         //
                         cdsDados.Post;
                         //
                         Next;
                    End;
              End;
       End;  // FIM-SE
       //
       dmFolha.cdsLancBeneficios.Close;
end;

procedure TfrmCadLancBeneficios.dbeBeneficioExit(Sender: TObject);
begin
     If (dmFolha.cdsLancBeneficios.State in [dsInsert])
       and not uFuncoes.Empty(dbeBeneficio.Text) Then
       begin
         If VerificarBeneficio(StrtoInt(dbeBeneficio.Text)) Then
          begin
                 Application.MessageBox('Beneficio já cadastro.','ATENÇÃO',
                     MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
                 dbeBeneficio.Clear;
                 dbeBeneficio.SetFocus;
                 Exit;
           End;
         //
         If not (uFuncoes.ValidarBeneficio(StrtoInt(dbeBeneficio.Text))) Then
           begin
                 Application.MessageBox('Registro de Desconto/Benecifio inexistente '+#13+'ou não válido para esta operação.','ATENÇÃO',
                     MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
                 //
                 dbeBeneficio.Clear;
                 If (grdConsultar.Visible = False) then
                   dbeBeneficio.SetFocus;
                 lbl_Beneficio.Caption := '';
                 Exit;
           End
           Else   //
              lbl_Beneficio.Caption := uFuncoes.DESCRICAO_BENEFICIO(StrtoInt(dbeBeneficio.Text));
              //dmFolha2.qryConsulta.FieldByname('DCB_DESCRICAO').AsString;
       End;
end;

procedure TfrmCadLancBeneficios.dbeBeneficioChange(Sender: TObject);
begin
     If uFuncoes.Empty(dbeBeneficio.Text) Then
     begin
          lbl_Beneficio.Caption := '';
          lbl_Valor.Visible := False;
          dbeValor.Visible  := False;
     End;
end;

procedure TfrmCadLancBeneficios.BtExcluirClick(Sender: TObject);
begin
  if not (cdsDados.IsEmpty) and
     (cdsDados.RecordCount > 0) then
   begin
       If Application.MessageBox('Deseja excluir este registro?', 'Exclusão de registro',
                    MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2+MB_APPLMODAL) = ID_YES Then
       Begin
            APAGAR_REGISTRO(cdsDados.FieldByName('MATRICULA').AsInteger, cdsDados.FieldByName('CODIGO').AsInteger);
            //
            cdsDados.Delete;
       end
       else
            Application.MessageBox('Não ha registro a ser excluido','ATENÇÃO',
              MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
   End;
end;

procedure TfrmCadLancBeneficios.APAGAR_REGISTRO(M_MATRICULA,
  M_CDBENE: Integer);
begin
     With dmFolha2.qryConsulta do
      begin
           SQL.Clear;
           Close;
           SQL.Add('Delete from LANCAMENTOS Where (FUN_MATRICULA = :pMATRICULA) and (DCB_CODIGO = :pCODIGO)');
           Params.ParamByName('pMATRICULA').AsInteger := M_MATRICULA;
           Params.ParamByName('pCODIGO').AsInteger    := M_CDBENE;
           ExecSQL();
           //
      End;
end;

procedure TfrmCadLancBeneficios.dbeQuantidadeExit(Sender: TObject);
begin
      If not uFuncoes.Empty(dbeQuantidade.Text) Then
        begin
             If uFuncoes.VerificarValor(dmFolha.cdsLancBeneficiosDCB_CODIGO.AsInteger) Then
              begin
                   lbl_Valor.Visible := True;
                   dbeValor.Visible  := True;
              End
              Else
              Begin
                   lbl_Valor.Visible := False;
                   dbeValor.Visible  := False;
              End;
        End
        Else
             dbeQuantidade.SetFocus;

      //

end;

procedure TfrmCadLancBeneficios.spLocBeneficioClick(Sender: TObject);
Var
   M_CDBENE : Integer;
begin
    Application.CreateForm(TfrmLocBeneficio, frmLocBeneficio);
    Try
        frmLocBeneficio.ShowModal;
    Finally
        If not uFuncoes.Empty(frmLocBeneficio.cdsConsultar.FieldByname('DCB_CODIGO').AsString) Then
        begin
            M_CDBENE := frmLocBeneficio.cdsConsultar.FieldByname('DCB_CODIGO').AsInteger;
            dmFolha.cdsLancBeneficiosDCB_CODIGO.AsInteger := M_CDBENE;
        End;
        //
        frmLocBeneficio.Release;
        frmLocBeneficio := nil;
        //
        Perform(Wm_NextDlgCtl,0,0);
    End;
end;

procedure TfrmCadLancBeneficios.dbeBeneficioKeyPress(Sender: TObject;
  var Key: Char);
begin
      if (key = #27) then
      begin
           Key := #0;
           BtCancelarClick(Sender);
           Exit;
      End;
      //
      if (key = #13)
        and (dmFolha.cdsLancBeneficios.State in [dsInsert])
        and uFuncoes.Empty(dbeBeneficio.Text) Then
        begin
             Key := #0;
             spLocBeneficioClick(Sender);
        End;
end;

procedure TfrmCadLancBeneficios.dbeBeneficioEnter(Sender: TObject);
begin
     lbl_Valor.Visible := False;
     dbeValor.Visible  := False;
end;

function TfrmCadLancBeneficios.VerificarBeneficio(
  M_CODIGO: Integer): boolean;
begin
     result := false;
     if not (cdsDados.Active) Then
         cdsDados.Open;
     //
     With cdsDados do
      begin
           If Locate('CODIGO',M_CODIGO,[]) Then
              result := true;
      End;
end;

procedure TfrmCadLancBeneficios.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
     cdsDados.Close;
     //
     Action := caFree;
end;

procedure TfrmCadLancBeneficios.dbeQuantidadeKeyPress(Sender: TObject;
  var Key: Char);
begin
   If (dmFolha.cdsLancBeneficios.State in [dsInsert, dsEdit]) Then
        If (key = #27)  Then
          begin
               Key := #0;
               BtCancelarClick(Sender);
          End;
end;

end.
