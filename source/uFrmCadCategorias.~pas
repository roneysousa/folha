unit uFrmCadCategorias;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmCadastro, FMTBcd, DBClient, Provider, DB, SqlExpr, Buttons,
  Grids, DBGrids, StdCtrls, ExtCtrls, ComCtrls, DBCtrls, Mask;

type
  TfrmCadCategorias = class(TfrmCadastro)
    dstCategoria: TSQLDataSet;
    dstCategoriaCAT_CODIGO: TIntegerField;
    dstCategoriaCAT_DESCRICAO: TStringField;
    dspCategoria: TDataSetProvider;
    cdsCategoria: TClientDataSet;
    cdsCategoriaCAT_CODIGO: TIntegerField;
    cdsCategoriaCAT_DESCRICAO: TStringField;
    dsCategorias: TDataSource;
    Label2: TLabel;
    dbeDescricao: TDBEdit;
    Label1: TLabel;
    DBText1: TDBText;
    cdsConsultarCAT_CODIGO: TIntegerField;
    cdsConsultarCAT_DESCRICAO: TStringField;
    procedure BtAdicionarClick(Sender: TObject);
    procedure BtEditarClick(Sender: TObject);
    procedure BtExcluirClick(Sender: TObject);
    procedure BtCancelarClick(Sender: TObject);
    procedure BtGravarClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure edtConsultarChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure grdConsultarDblClick(Sender: TObject);
    procedure dbeDescricaoExit(Sender: TObject);
  private
     procedure tratabotoes;
     procedure buscar;
     procedure REGISTRO;
     Function Validar_campos() : boolean;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadCategorias: TfrmCadCategorias;

implementation

uses uFuncoes, udmFolha, udmFolha2;

{$R *.dfm}

{ TfrmCadCategorias }

procedure TfrmCadCategorias.buscar;
begin
     cdsCategoria.Close;
     cdsCategoria.Params.ParamByName('pCODIGO').AsInteger  := cdsConsultar.FieldByName('CAT_CODIGO').AsInteger;
     cdsCategoria.Open;
end;

procedure TfrmCadCategorias.REGISTRO;
begin
     dmFolha.parametros;
     With cdsCategoria do
     begin
         Close;
         Params.ParamByName('pCODIGO').AsInteger  := dmFolha.mvcodigo('CAT_CODIGO','CATEGORIA');
         Open;
     End;              
end;

procedure TfrmCadCategorias.tratabotoes;
begin
   BtAdicionar.Enabled := not BtAdicionar.Enabled;
   BtEditar.Enabled := not BtEditar.Enabled;
   BtExcluir.Enabled := not BtExcluir.Enabled;
   BtPesquisar.Enabled := not BtPesquisar.Enabled;
   BtCancelar.Enabled := not BtCancelar.Enabled;
   BtGravar.Enabled := not BtGravar.Enabled;
   BtSair.Enabled := not BtSair.Enabled;
end;

procedure TfrmCadCategorias.BtAdicionarClick(Sender: TObject);
begin
  inherited;
  tratabotoes;
  dmFolha.parametros;
  cdsCategoria.Append;
  cdsCategoria.FieldByName('CAT_CODIGO').AsInteger :=
    dmFolha.cdsConfig.FieldByName('CFG_CATEGORIA').AsInteger + 1;   
  dbeDescricao.SetFocus;
end;

procedure TfrmCadCategorias.BtEditarClick(Sender: TObject);
begin
  inherited;
  if  not (cdsCategoria.IsEmpty)
    and (cdsCategoria.RecordCount > 0) then
  Begin
       tratabotoes;
       cdsCategoria.Edit;
       dbeDescricao.SetFocus;
  End;
end;

procedure TfrmCadCategorias.BtExcluirClick(Sender: TObject);
begin
  inherited;
  if not (cdsCategoria.IsEmpty) and
     (cdsCategoria.RecordCount > 0) then
   begin
       If Application.MessageBox('Deseja excluir esta categoria?', 'Exclusão de registro',
                    MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2+MB_APPLMODAL) = ID_YES Then
       Begin
            cdsCategoria.Delete;
            cdsCategoria.ApplyUpdates(0);
            //
            REGISTRO;
       end
       else
            Application.MessageBox('Não ha registro a ser excluido','ATENÇÃO',
              MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
   End;
end;

procedure TfrmCadCategorias.BtCancelarClick(Sender: TObject);
begin
  inherited;
     tratabotoes;
     cdsCategoria.Cancel;
end;

procedure TfrmCadCategorias.BtGravarClick(Sender: TObject);
begin
  inherited;
     If uFuncoes.Empty(dbeDescricao.Text) Then
       Begin
           Application.MessageBox('Digite a descrição da categoria.','ATENÇÃO',
               MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
           dbeDescricao.SetFocus;
           Exit;
       End;
     //
     try
          tratabotoes;
          If (cdsCategoria.State in [dsInsert] ) Then
            begin
                 dmFolha.parametros;
                 dmFolha.CdsConfig.Edit;
                 dmFolha.cdsConfig.FieldByName('CFG_CATEGORIA').AsInteger :=
                      dmFolha.cdsConfig.FieldByName('CFG_CATEGORIA').AsInteger + 1;
                 cdsCategoria.FieldByName('CAT_CODIGO').AsInteger :=
                      dmFolha.cdsConfig.FieldByName('CFG_CATEGORIA').AsInteger;
                 dmFolha.CdsConfig.ApplyUpdates(0);
            End;
          // Grava
          cdsCategoria.ApplyUpdates(0);
     Except
          on Exc:Exception do
            begin
               Application.MessageBox(PChar('Error ao tentar gravar registro.'+#13
                      + Exc.Message),
                      'ATENÇÃO', MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
               cdsCategoria.Cancel;
            End;
     End;
end;

procedure TfrmCadCategorias.btnAlterarClick(Sender: TObject);
begin
  inherited;
       buscar;
       PageControl1.ActivePageIndex := 0;
end;

procedure TfrmCadCategorias.edtConsultarChange(Sender: TObject);
begin
  inherited;
  If not uFuncoes.Empty(edtConsultar.Text) Then
    begin
        cdsConsultar.Close;
        with datasetConsultar do
        begin
            Active := False;
            CommandText := 'Select CAT_CODIGO, CAT_DESCRICAO from CATEGORIA';
            case rgConsultar.ItemIndex of
                0: CommandText := CommandText + ' Where (CAT_CODIGO = :pCODIGO)';
                1: CommandText := CommandText + ' Where (UPPER(CAT_DESCRICAO) like :pNOME)';
            end;
            CommandText := CommandText + ' order by CAT_DESCRICAO';
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

procedure TfrmCadCategorias.FormShow(Sender: TObject);
begin
  inherited;
     REGISTRO;
     //
     If (cdsCategoria.IsEmpty) Then
          BtAdicionarClick(Sender);
     //
     PageControl1.ActivePageIndex := 0;
end;

procedure TfrmCadCategorias.grdConsultarDblClick(Sender: TObject);
begin
  inherited;
     If not (cdsConsultar.IsEmpty) Then
         btnAlterarClick(Sender);
end;

procedure TfrmCadCategorias.dbeDescricaoExit(Sender: TObject);
begin
  inherited;
  If (cdsCategoria.State in [dsInsert]) and not uFuncoes.Empty(dbeDescricao.Text) Then
       If not (Validar_campos) Then
           exit;
end;

Function TfrmCadCategorias.Validar_campos() : boolean;
begin
     result := false;
     With dmFolha2.qryConsulta do
      begin
           SQL.Clear;
           Close;
           SQL.Add('Select CAT_DESCRICAO from CATEGORIA Where (CAT_DESCRICAO = :pNOME)');
           Params.ParamByName('pNOME').AsString := dbeDescricao.Text;
           Open;
           //
           If not (IsEmpty) Then
            begin
                 Application.MessageBox('Categoria já cadastrada!!!','ATENÇÃO',
                    MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
                 dbeDescricao.SetFocus;
                 dbeDescricao.Clear;
                 result := True;
                 Exit;
            End;
       End;

end;

end.
