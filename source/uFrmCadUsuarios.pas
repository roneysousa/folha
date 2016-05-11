unit uFrmCadUsuarios;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmCadastro, FMTBcd, Mask, DBCtrls, DBClient, Provider, DB,
  SqlExpr, Buttons, Grids, DBGrids, StdCtrls, ExtCtrls, ComCtrls;

type
  TfrmCadUsuarios = class(TfrmCadastro)
    dsUsuarios: TDataSource;
    Label2: TLabel;
    dbeNMUSUA: TDBEdit;
    DBText1: TDBText;
    Label3: TLabel;
    Label1: TLabel;
    dbeCargo: TDBEdit;
    lbl_senha: TLabel;
    dbeSNATUA: TEdit;
    lbl_confirma: TLabel;
    edt_Confirma: TEdit;
    cdsConsultarSEN_CODIGO: TIntegerField;
    cdsConsultarSEN_NOME: TStringField;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure edtConsultarChange(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure BtAdicionarClick(Sender: TObject);
    procedure BtCancelarClick(Sender: TObject);
    procedure BtEditarClick(Sender: TObject);
    procedure BtExcluirClick(Sender: TObject);
    procedure BtGravarClick(Sender: TObject);
    procedure dbeSNATUAExit(Sender: TObject);
    procedure edt_ConfirmaExit(Sender: TObject);
  private
    { Private declarations }
     procedure tratabotoes;
     procedure buscar;
     procedure REGISTRO;
     procedure Exibir_edites;
     procedure Ocultar_edites;
  public
    { Public declarations }
  end;

var
  frmCadUsuarios: TfrmCadUsuarios;

implementation

uses udmFolha, uFuncoes, uPrincFolha;

{$R *.dfm}

procedure TfrmCadUsuarios.FormShow(Sender: TObject);
begin
  inherited;
      REGISTRO;
      //
      If (dmFolha.cdsUsuarios.IsEmpty) Then
          BtAdicionarClick(Sender)
      Else
          Ocultar_edites;
end;

procedure TfrmCadUsuarios.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
    dmFolha.cdsUsuarios.Close;
    Action := caFree;
end;

procedure TfrmCadUsuarios.buscar;
begin
     With dmFolha.cdsUsuarios do
     begin
          Close;
          Params.ParamByName('pCODIGO').AsInteger  := cdsConsultar.FieldByName('SEN_CODIGO').AsInteger;
          Open;
     End;
end;

procedure TfrmCadUsuarios.REGISTRO;
begin
     dmFolha.parametros;
     If (dmFolha.cdsConfigCFG_USUARIOS .AsInteger  = 0) Then
         dmFolha.cdsUsuarios.Open
     Else
     Begin
         dmFolha.cdsUsuarios.Close;
         dmFolha.cdsUsuarios.Params.ParamByName('pCODIGO').AsInteger  := dmFolha.mvcodigo('SEN_CODIGO','USUARIOS');
         dmFolha.cdsUsuarios.Open;
     End;
end;

procedure TfrmCadUsuarios.tratabotoes;
begin
   BtAdicionar.Enabled := not BtAdicionar.Enabled;
   BtEditar.Enabled := not BtEditar.Enabled;
   BtExcluir.Enabled := not BtExcluir.Enabled;
   BtPesquisar.Enabled := not BtPesquisar.Enabled;
   BtCancelar.Enabled := not BtCancelar.Enabled;
   BtGravar.Enabled := not BtGravar.Enabled;
   BtSair.Enabled := not BtSair.Enabled;
end;

procedure TfrmCadUsuarios.edtConsultarChange(Sender: TObject);
begin
  inherited;
     If not uFuncoes.Empty(edtConsultar.Text) Then
     begin
          with cdsConsultar do
          begin
               Close;
               CommandText := 'Select SEN_CODIGO, SEN_NOME from USUARIOS';
               case rgConsultar.ItemIndex of
                 0: CommandText := CommandText + ' where SEN_CODIGO = ' + edtConsultar.Text;
                 1: CommandText := CommandText + ' where UPPER(SEN_NOME) like ' + QuotedStr(AnsiUpperCase(edtConsultar.Text) + '%');
               end;
               CommandText := CommandText + 'order by SEN_NOME';
               Open;
          End;   //fim-with
      End;    // fim-se
end;

procedure TfrmCadUsuarios.btnAlterarClick(Sender: TObject);
begin
  inherited;
   If not (cdsConsultar.IsEmpty) Then
   begin
       buscar;
       PageControl1.ActivePageIndex := 0;
       //
       If (uPrincFolha.M_NMUSUA <> 'USERMASTER') Then
       begin
           If (dmFolha.cdsUsuarios.FieldByName('SEN_CODIGO').AsInteger <> StrtoInt(uPrincFolha.M_CDUSUA)) Then
           begin
                Application.MessageBox(Pchar(uPrincFolha.M_NMUSUA+  ' você não pode editar este usuário!!!'),'ATENÇÃO',
                  MB_OK+
                  MB_ICONINFORMATION+MB_APPLMODAL);
                Ocultar_edites;
                //tratabotoes;
                Exit;
           End;
       End;
       //
       dbeNMUSUA.SetFocus;
       //
       Exibir_edites;
   End;
end;

procedure TfrmCadUsuarios.Exibir_edites;
begin
     lbl_senha.Visible    := True;
     lbl_confirma.Visible := True;
     edt_Confirma.Visible := True;
     dbeSNATUA.Visible    := True;
     //
     edt_Confirma.Clear;
     dbeSNATUA.Clear;
end;

procedure TfrmCadUsuarios.Ocultar_edites;
begin
     lbl_senha.Visible    := False;
     lbl_confirma.Visible := False;
     //
     edt_Confirma.Visible := False;
     dbeSNATUA.Visible    := False;
end;

procedure TfrmCadUsuarios.BtAdicionarClick(Sender: TObject);
begin
  inherited;
  tratabotoes;
  dmFolha.parametros;
  dmFolha.cdsUsuarios.Append;
  dmFolha.cdsUsuarios.FieldByName('SEN_CODIGO').AsInteger :=
      dmFolha.cdsConfigCFG_USUARIOS.AsInteger + 1;
  Exibir_edites;    
  dbeNMUSUA.SetFocus;     
end;

procedure TfrmCadUsuarios.BtCancelarClick(Sender: TObject);
begin
  inherited;
      dmFolha.cdsUsuarios.Cancel;
      tratabotoes;  
      If (dmFolha.cdsUsuarios.IsEmpty) Then
          Close;
end;

procedure TfrmCadUsuarios.BtEditarClick(Sender: TObject);
begin
  inherited;
 try
  if (dmFolha.cdsUsuarios.Active)
    and (dmFolha.cdsUsuarios.RecordCount > 0) then
  Begin
       tratabotoes;
       dmFolha.cdsUsuarios.Edit;
       //
       If (uPrincFolha.M_FLMAST = 0) Then
       begin
           If (dmFolha.cdsUsuarios.FieldByName('SEN_CODIGO').AsInteger <> StrtoInt(uPrincFolha.M_CDUSUA)) Then
           begin
                Application.MessageBox(Pchar(uPrincFolha.M_NMUSUA+  ' você não pode editar este usuário!!!'),'ATENÇÃO',
                  MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
                dmFolha.cdsUsuarios.Cancel;
                tratabotoes;
                Exit;
           End;
       End; 
       //
       dbeNMUSUA.SetFocus;
       //
       Exibir_edites;
  End;
 Except
          on Exc:Exception do
           begin
               Application.MessageBox(PChar('Erro ao tentar editar usuário!!!'
                       + Exc.Message),
                       'ATENÇÃO', MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
           End;
 End;
end;

procedure TfrmCadUsuarios.BtExcluirClick(Sender: TObject);
begin
  inherited;
  if not (dmFolha.cdsUsuarios.IsEmpty) and (dmFolha.cdsUsuarios.RecordCount > 0) then
     If Application.MessageBox('Deseja excluir este usuário?', 'Exclusão de registro',
                    MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2+MB_APPLMODAL) = ID_YES Then
     Begin
       dmFolha.cdsUsuarios.Delete;
       dmFolha.cdsUsuarios.ApplyUpdates(0);
     end
  else
      Application.MessageBox('Não ha registro a ser excluido','ATENÇÃO',
        MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
end;

procedure TfrmCadUsuarios.BtGravarClick(Sender: TObject);
begin
  inherited;
  If uFuncoes.Empty(dbeNMUSUA.Text) Then
  Begin
       Application.MessageBox('Digite o nome do usuário!!!','ATENÇÃO',
             MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
       dbeNMUSUA.SetFocus;
       Exit;
  End;
  //
  If (dmFolha.cdsUsuarios.State in [dsInsert] ) AND
    uFuncoes.Empty(dbeSNATUA.Text) Then
  Begin
       Application.MessageBox('Digite sua senha!!!','ATENÇÃO',
             MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
       dbeSNATUA.SetFocus;
       Exit;
  End;
  //
  If (dmFolha.cdsUsuarios.State in [dsInsert] ) AND
      uFuncoes.Empty(edt_Confirma.Text) Then
  Begin
       Application.MessageBox('Digite a confirmação da senha!!!','ATENÇÃO',
             MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
       edt_Confirma.SetFocus;
       Exit;
  End;
  //
  If not uFuncoes.Empty(edt_Confirma.text) Then
  begin
       edt_Confirma.Text := edt_Confirma.Text+uFuncoes.Replicate('_',6-uFuncoes.ContaCaracs(edt_Confirma.Text));
       //
       If ( edt_Confirma.Text = dbeSNATUA.Text) Then
            dmFolha.cdsUsuariosSEN_SNATUA.AsString := uFuncoes.Codifica(edt_Confirma.Text)
       Else
       begin
            Application.MessageBox( 'A senha incorreta!','ATENÇÃO',
                          MB_OK+MB_ICONQUESTION+MB_APPLMODAL);
            edt_Confirma.Clear;
            edt_Confirma.SetFocus;
            Exit;
       End;
  End;
  //
  Try
    //
    tratabotoes;
    if dmFolha.cdsUsuarios.State in [dsinsert] then
    begin
      dmFolha.parametros;
      dmFolha.CdsConfig.Edit;
      dmFolha.CdsConfigCFG_USUARIOS.Value  := dmFolha.CdsConfigCFG_USUARIOS.Value+1;
      dmFolha.cdsUsuariosSEN_CODIGO.Value := dmFolha.CdsConfigCFG_USUARIOS.Value;
      dmFolha.CdsConfig.ApplyUpdates(0);
    end;
    //
    dmFolha.cdsUsuarios.Post;
    dmFolha.cdsUsuarios.ApplyUpdates(0);
    //
    Ocultar_edites;
  Except
        on Exc:Exception do
        begin
           Application.MessageBox(PChar('Error ao tentar gravar registro.'+#13
                      + Exc.Message),
                      'ATENÇÃO', MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
           dmFolha.cdsUsuarios.Cancel;
        End;
  End;
end;

procedure TfrmCadUsuarios.dbeSNATUAExit(Sender: TObject);
begin
  inherited;
     If not uFuncoes.Empty(dbeSNATUA.Text) Then
        dbeSNATUA.Text := dbeSNATUA.Text+uFuncoes.Replicate('_',6-uFuncoes.ContaCaracs(dbeSNATUA.Text));
end;

procedure TfrmCadUsuarios.edt_ConfirmaExit(Sender: TObject);
begin
  inherited;
     If not uFuncoes.Empty(edt_Confirma.Text) Then
     Begin
       edt_Confirma.Text := edt_Confirma.Text+uFuncoes.Replicate('_',6-uFuncoes.ContaCaracs(edt_Confirma.Text));
       //
       If ( edt_Confirma.Text = dbeSNATUA.Text) Then
            dmFolha.cdsUsuariosSEN_SNATUA.AsString := uFuncoes.Codifica(edt_Confirma.Text)
       Else
       begin
            Application.MessageBox( 'A senha incorreta!','ATENÇÃO',
                          MB_OK+MB_ICONQUESTION+MB_APPLMODAL);
            edt_Confirma.Clear;
            edt_Confirma.SetFocus;
            Exit;
       End;
  End;
end;

end.
