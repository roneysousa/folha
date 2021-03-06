unit ufrmCadEscolaridade;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmCadastro, FMTBcd, DBCtrls, Mask, DBClient, Provider, DB,
  SqlExpr, Buttons, Grids, DBGrids, StdCtrls, ExtCtrls, ComCtrls;

type
  TfrmCadEscolaridade = class(TfrmCadastro)
    dsEscolaridade: TDataSource;
    Label2: TLabel;
    dbeDescricao: TDBEdit;
    DBText1: TDBText;
    Label3: TLabel;
    cdsConsultarESC_CODIGO: TIntegerField;
    cdsConsultarESC_DESCRICAO: TStringField;
    procedure FormShow(Sender: TObject);
    procedure BtAdicionarClick(Sender: TObject);
    procedure BtEditarClick(Sender: TObject);
    procedure BtExcluirClick(Sender: TObject);
    procedure BtCancelarClick(Sender: TObject);
    procedure BtGravarClick(Sender: TObject);
    procedure edtConsultarChange(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure dbeDescricaoExit(Sender: TObject);
  private
    { Private declarations }
     procedure tratabotoes;
     procedure buscar;
     procedure REGISTRO;
  public
    { Public declarations }
  end;

var
  frmCadEscolaridade: TfrmCadEscolaridade;

implementation

uses udmFolha, uFuncoes, udmFolha2;

{$R *.dfm}

{ TfrmCadEscolaridade }

procedure TfrmCadEscolaridade.buscar;
begin
     With dmFolha.cdsEscolaridade do
     begin
          Close;
          Params.ParamByName('pCODIGO').AsInteger  := cdsConsultar.FieldByName('ESC_CODIGO').AsInteger;
          Open;
     End;
end;

procedure TfrmCadEscolaridade.REGISTRO;
begin
     dmFolha.parametros;
     If uFuncoes.Empty(dmFolha.cdsConfigCFG_ESCOLARIDADE.AsString) Then
         dmFolha.cdsEscolaridade.Open
     Else
     Begin
          With dmFolha.cdsEscolaridade do
            begin
                  Close;
                  Params.ParamByName('pCODIGO').AsInteger  := dmFolha.mvcodigo('ESC_CODIGO','ESCOLARIDADE');
                  Open;
            End;
     End;
end;

procedure TfrmCadEscolaridade.tratabotoes;
begin
   BtAdicionar.Enabled := not BtAdicionar.Enabled;
   BtEditar.Enabled := not BtEditar.Enabled;
   BtExcluir.Enabled := not BtExcluir.Enabled;
   BtPesquisar.Enabled := not BtPesquisar.Enabled;
   BtCancelar.Enabled := not BtCancelar.Enabled;
   BtGravar.Enabled := not BtGravar.Enabled;
   BtSair.Enabled := not BtSair.Enabled;
end;

procedure TfrmCadEscolaridade.FormShow(Sender: TObject);
begin
  inherited;
     REGISTRO;
     //
     If (dmFolha.cdsEscolaridade.IsEmpty) Then
          BtAdicionarClick(Sender);
     //
     PageControl1.ActivePageIndex := 0;
end;

procedure TfrmCadEscolaridade.BtAdicionarClick(Sender: TObject);
begin
  inherited;
  tratabotoes;
  dmFolha.parametros;
  dmFolha.cdsEscolaridade.Append;
  dmFolha.cdsEscolaridade.FieldByName('ESC_CODIGO').AsInteger :=
      dmFolha.cdsConfigCFG_ESCOLARIDADE.AsInteger + 1;
  dbeDescricao.SetFocus;
end;

procedure TfrmCadEscolaridade.BtEditarClick(Sender: TObject);
begin
  inherited;
  if  not (dmFolha.cdsEscolaridade.IsEmpty)
    and (dmFolha.cdsEscolaridade.RecordCount > 0) then
  Begin
       tratabotoes;
       dmFolha.cdsEscolaridade.Edit;
       dbeDescricao.SetFocus;
  End;
end;

procedure TfrmCadEscolaridade.BtExcluirClick(Sender: TObject);
begin
  inherited;
  if not (dmFolha.cdsEscolaridade.IsEmpty) and
     (dmFolha.cdsEscolaridade.RecordCount > 0) then
   begin
       If Application.MessageBox('Deseja excluir este registro', 'Exclus�o de registro',
                    MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2+MB_APPLMODAL) = ID_YES Then
       Begin
            dmFolha.cdsEscolaridade.Delete;
            dmFolha.cdsEscolaridade.ApplyUpdates(0);
            //
            REGISTRO;
       end
       else
            Application.MessageBox('N�o ha registro a ser excluido','ATEN��O',
              MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
   End;
end;

procedure TfrmCadEscolaridade.BtCancelarClick(Sender: TObject);
begin
  inherited;
     tratabotoes;
     dmFolha.cdsEscolaridade.Cancel;
end;

procedure TfrmCadEscolaridade.BtGravarClick(Sender: TObject);
begin
  inherited;
     If uFuncoes.Empty(dbeDescricao.Text) Then
       Begin
           Application.MessageBox('Digite a descri��o.','ATEN��O',
               MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
           dbeDescricao.SetFocus;
           Exit;
       End;
     //
     try
          tratabotoes;
          //
          if (dmFolha.cdsEscolaridade.State in [dsinsert]) then
            begin
                 dmFolha.parametros;
                 dmFolha.CdsConfig.Edit;
                 dmFolha.cdsConfig.FieldByName('CFG_ESCOLARIDADE').AsInteger :=
                      dmFolha.cdsConfig.FieldByName('CFG_ESCOLARIDADE').AsInteger + 1;
                 dmFolha.cdsEscolaridade.FieldByName('ESC_CODIGO').AsInteger :=
                      dmFolha.cdsConfig.FieldByName('CFG_ESCOLARIDADE').AsInteger;
                 dmFolha.CdsConfig.ApplyUpdates(0);
             end;
          //
          dmFolha.cdsEscolaridade.ApplyUpdates(0);
          //
     Except
          on Exc:Exception do
            begin
               Application.MessageBox(PChar('Error ao tentar gravar registro.'+#13
                      + Exc.Message),
                      'ATEN��O', MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
               dmFolha.cdsEscolaridade.Cancel;
            End;
     End;
end;

procedure TfrmCadEscolaridade.edtConsultarChange(Sender: TObject);
begin
  inherited;
  If not uFuncoes.Empty(edtConsultar.Text) Then
    begin
        cdsConsultar.Close;
        with datasetConsultar do
        begin
            Active := False;
            CommandText := 'Select ESC_CODIGO, ESC_DESCRICAO from ESCOLARIDADE ';
            case rgConsultar.ItemIndex of
                0: CommandText := CommandText + ' Where (ESC_CODIGO = :pCODIGO)';
                1: CommandText := CommandText + ' Where (UPPER(ESC_DESCRICAO) like :pNOME)';
            end;
            CommandText := CommandText + ' order by ESC_DESCRICAO';
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

procedure TfrmCadEscolaridade.btnAlterarClick(Sender: TObject);
begin
  inherited;
       buscar;
       PageControl1.ActivePageIndex := 0;
end;

procedure TfrmCadEscolaridade.dbeDescricaoExit(Sender: TObject);
begin
  inherited;
    If (dmFolha.cdsEscolaridade.State in [dsInsert])
       and not uFuncoes.Empty(dbeDescricao.Text) Then
       begin
            With dmFolha2.qryConsulta do
            begin
                 SQL.Clear;
                 Close;
                 SQL.Add('Select ESC_DESCRICAO from ESCOLARIDADE Where (ESC_DESCRICAO = :pNOME)');
                 Params.ParamByName('pNOME').AsString := dbeDescricao.Text;
                 Open;
                 //
                 If not (IsEmpty) Then
                 begin
                      Application.MessageBox('Descri��o j� cadastrada!!!','ATEN��O',
                         MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
                      dbeDescricao.SetFocus;
                      dbeDescricao.Clear;
                      Exit;
                 End;
            End;
       End;
end;

end.
