unit uFrmCadCOB;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmCadastro, FMTBcd, DBClient, Provider, DB, SqlExpr, Buttons,
  Grids, DBGrids, StdCtrls, ExtCtrls, ComCtrls, Mask, DBCtrls;

type
  TfrmCadCBO = class(TfrmCadastro)
    Label1: TLabel;
    dsCBO: TDataSource;
    Label2: TLabel;
    dbeDescricao: TDBEdit;
    cdsConsultarCBO_CODIGO: TIntegerField;
    cdsConsultarCBO_DESCRICAO: TStringField;
    dbeCodigo: TDBEdit;
    procedure FormShow(Sender: TObject);
    procedure BtAdicionarClick(Sender: TObject);
    procedure BtEditarClick(Sender: TObject);
    procedure BtExcluirClick(Sender: TObject);
    procedure BtCancelarClick(Sender: TObject);
    procedure BtGravarClick(Sender: TObject);
    procedure dbeCodigoExit(Sender: TObject);
    procedure edtConsultarChange(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure dbeCodigoKeyPress(Sender: TObject; var Key: Char);
  private
     procedure tratabotoes;
     procedure buscar;
     procedure REGISTRO;
     function ValidarCodigo(M_CODIGO : Integer) : boolean;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadCBO: TfrmCadCBO;

implementation

uses udmFolha, uFuncoes, udmFolha2;

{$R *.dfm}

{ TfrmCadCBO }

procedure TfrmCadCBO.buscar;
begin
     With dmFolha.cdsCBO do
     begin
          Close;
          Params.ParamByName('pCODIGO').AsInteger  := cdsConsultar.FieldByName('CBO_CODIGO').AsInteger;
          Open;
     End;
end;

procedure TfrmCadCBO.REGISTRO;
begin
     //
     With dmFolha.cdsCBO do
     begin
          Close;
          Params.ParamByName('pCODIGO').AsInteger  := dmFolha.mvcodigo('CBO_CODIGO','CBO');
          Open;
     End;
end;

procedure TfrmCadCBO.tratabotoes;
begin
   BtAdicionar.Enabled := not BtAdicionar.Enabled;
   BtEditar.Enabled := not BtEditar.Enabled;
   BtExcluir.Enabled := not BtExcluir.Enabled;
   BtPesquisar.Enabled := not BtPesquisar.Enabled;
   BtCancelar.Enabled := not BtCancelar.Enabled;
   BtGravar.Enabled := not BtGravar.Enabled;
   BtSair.Enabled := not BtSair.Enabled;
end;

procedure TfrmCadCBO.FormShow(Sender: TObject);
begin
  inherited;
     REGISTRO;
     //
     If (dmFolha.cdsCBO.IsEmpty) Then
          BtAdicionarClick(Sender);
     //
     PageControl1.ActivePageIndex := 0;
end;

procedure TfrmCadCBO.BtAdicionarClick(Sender: TObject);
begin
  inherited;
      tratabotoes;
      //
      dmFolha.cdsCBO.Append;
      dbeCodigo.Enabled := True;
      dbeCodigo.SetFocus;
end;

procedure TfrmCadCBO.BtEditarClick(Sender: TObject);
begin
  inherited;
    if  not (dmFolha.cdsCBO.IsEmpty)
      and (dmFolha.cdsCBO.RecordCount > 0) then
    Begin
         tratabotoes;
         dmFolha.cdsCBO.Edit;
         dbeCodigo.Enabled := False;
         dbeDescricao.SetFocus;
    End;
end;

procedure TfrmCadCBO.BtExcluirClick(Sender: TObject);
begin
  inherited;
  if not (dmFolha.cdsCBO.IsEmpty) and
     (dmFolha.cdsCBO.RecordCount > 0) then
   begin
       If Application.MessageBox('Deseja excluir este registro?', 'Exclusão de registro',
                    MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2+MB_APPLMODAL) = ID_YES Then
       Begin
            dmFolha.cdsCBO.Delete;
            dmFolha.cdsCBO.ApplyUpdates(0);
            //
            REGISTRO;
       end
       else
            Application.MessageBox('Não ha registro a ser excluido','ATENÇÃO',
              MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
   End;
end;

procedure TfrmCadCBO.BtCancelarClick(Sender: TObject);
begin
  inherited;
     tratabotoes;
     dmFolha.cdsCBO.Cancel;
end;

procedure TfrmCadCBO.BtGravarClick(Sender: TObject);
begin
  inherited;
     If uFuncoes.Empty(dbeCodigo.Text) Then
       Begin
           Application.MessageBox('Digite o código.','ATENÇÃO',
               MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
           dbeCodigo.SetFocus;
           Exit;
       End;
     //
     If uFuncoes.Empty(dbeDescricao.Text) Then
       Begin
           Application.MessageBox('Digite a descrição.','ATENÇÃO',
               MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
           dbeDescricao.SetFocus;
           Exit;
       End;
     //
     try
          tratabotoes;
          //
          dmFolha.cdsCBO.Post;
          dmFolha.cdsCBO.ApplyUpdates(0);
          //
     Except
          on Exc:Exception do
            begin
               Application.MessageBox(PChar('Error ao tentar gravar registro.'+#13
                      + Exc.Message),
                      'ATENÇÃO', MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
               dmFolha.cdsCBO.Cancel;
            End;
     End;
end;

function TfrmCadCBO.ValidarCodigo(M_CODIGO: Integer): boolean;
begin
     result := false;
     With dmFolha2.qryConsulta do
      begin
           SQL.Clear;
           Close;
           SQL.Add('Select CBO_CODIGO from CBO WHERE (CBO_CODIGO = :pCODIGO)');
           Params.ParamByName('pCODIGO').AsInteger   := M_CODIGO;
           Open;
           //
           If not (IsEmpty) Then
              result := true;
      End;
end;

procedure TfrmCadCBO.dbeCodigoExit(Sender: TObject);
begin
  inherited;
     If (dmFolha.cdsCBO.State in [dsInsert] )
       and not uFuncoes.Empty(dbeCodigo.Text)Then
       If (ValidarCodigo(dmFolha.cdsCBOCBO_CODIGO.AsInteger)) Then
        begin
             Application.MessageBox('Código já cadastro.','ATENÇÃO',
                 MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
             dbeCodigo.Clear; 
             dbeCodigo.SetFocus;
             Exit;
        End;
end;

procedure TfrmCadCBO.edtConsultarChange(Sender: TObject);
begin
  inherited;
  If not uFuncoes.Empty(edtConsultar.Text) Then
    begin
        cdsConsultar.Close;
        with datasetConsultar do
        begin
            Active := False;
            CommandText := 'Select CBO_CODIGO, CBO_DESCRICAO from CBO';
            case rgConsultar.ItemIndex of
                0: CommandText := CommandText + ' Where (CBO_CODIGO = :pCODIGO)';
                1: CommandText := CommandText + ' Where (UPPER(CBO_DESCRICAO) like :pNOME)';
            end;
            CommandText := CommandText + ' order by CBO_DESCRICAO';
            case rgConsultar.ItemIndex of
                0: datasetConsultar.Params.ParamByName('pCODIGO').AsInteger := StrtoInt(edtConsultar.Text);
                1: datasetConsultar.Params.ParamByName('pNOME').AsString   := edtConsultar.Text + '%';
            end;
            Active := True;
        end;
        cdsConsultar.FetchParams;
        cdsConsultar.Open;
   End;
end;

procedure TfrmCadCBO.btnAlterarClick(Sender: TObject);
begin
  inherited;
       buscar;
       PageControl1.ActivePageIndex := 0;
end;

procedure TfrmCadCBO.dbeCodigoKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
      If (key = #27) Then
      begin
            Key := #0;
            BtCancelarClick(Sender);
      End;
end;

end.
