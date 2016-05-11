unit uFrmCadBairros;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmCadastro, FMTBcd, DBClient, Provider, DB, SqlExpr, Buttons,
  Grids, DBGrids, StdCtrls, ExtCtrls, ComCtrls, DBCtrls, Mask;

type
  TfrmCadBairros = class(TfrmCadastro)
    dsBairros: TDataSource;
    Label2: TLabel;
    dbeNMBAIR: TDBEdit;
    Label1: TLabel;
    DBText1: TDBText;
    Label3: TLabel;
    dbcmbCidade: TDBLookupComboBox;
    cdsConsultarBAI_CODIGO: TIntegerField;
    cdsConsultarBAI_NOME: TStringField;
    procedure FormShow(Sender: TObject);
    procedure BtAdicionarClick(Sender: TObject);
    procedure BtEditarClick(Sender: TObject);
    procedure BtExcluirClick(Sender: TObject);
    procedure BtCancelarClick(Sender: TObject);
    procedure BtGravarClick(Sender: TObject);
    procedure edtConsultarChange(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure grdConsultarDblClick(Sender: TObject);
    procedure dbeNMBAIRExit(Sender: TObject);
  private
     procedure tratabotoes;
     procedure buscar;
     procedure REGISTRO;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadBairros: TfrmCadBairros;

implementation

uses udmFolha, uFuncoes, udmFolha2;

{$R *.dfm}

{ TfrmCadBairros }

procedure TfrmCadBairros.buscar;
begin
     With dmFolha.cdsBairros do
     begin
          Close;
          Params.ParamByName('pCODIGO').AsInteger  := cdsConsultar.FieldByName('BAI_CODIGO').AsInteger;
          Open;
     End;
end;

procedure TfrmCadBairros.REGISTRO;
begin
     dmFolha.parametros;
     If (dmFolha.cdsConfigCFG_BAIRRO.AsInteger  = 0) Then
         dmFolha.cdsBairros.Open
     Else
     Begin
          With dmFolha.cdsBairros do
            begin
                  Close;
                  Params.ParamByName('pCODIGO').AsInteger  := dmFolha.mvcodigo('BAI_CODIGO','BAIRROS');
                  Open;
            End;
     End;
end;

procedure TfrmCadBairros.tratabotoes;
begin
   BtAdicionar.Enabled := not BtAdicionar.Enabled;
   BtEditar.Enabled := not BtEditar.Enabled;
   BtExcluir.Enabled := not BtExcluir.Enabled;
   BtPesquisar.Enabled := not BtPesquisar.Enabled;
   BtCancelar.Enabled := not BtCancelar.Enabled;
   BtGravar.Enabled := not BtGravar.Enabled;
   BtSair.Enabled := not BtSair.Enabled;
end;

procedure TfrmCadBairros.FormShow(Sender: TObject);
begin
  inherited;
     REGISTRO;
     dmFolha.CIDADES;
     //
     If (dmFolha.cdsBairros.IsEmpty) Then
          BtAdicionarClick(Sender);
     //
     PageControl1.ActivePageIndex := 0;
end;

procedure TfrmCadBairros.BtAdicionarClick(Sender: TObject);
begin
  inherited;
  tratabotoes;
  dmFolha.parametros;
  dmFolha.cdsBairros.Append;
  dmFolha.cdsBairros.FieldByName('BAI_CODIGO').AsInteger :=
    dmFolha.cdsConfigCFG_BAIRRO.AsInteger + 1;
  dbcmbCidade.SetFocus;
end;

procedure TfrmCadBairros.BtEditarClick(Sender: TObject);
begin
  inherited;
  if  not (dmFolha.cdsBairros.IsEmpty)
    and (dmFolha.cdsBairros.RecordCount > 0) then
  Begin
       tratabotoes;
       dmFolha.cdsBairros.Edit;
       dbcmbCidade.SetFocus;
  End;
end;

procedure TfrmCadBairros.BtExcluirClick(Sender: TObject);
begin
  inherited;
  if not (dmFolha.cdsBairros.IsEmpty) and
     (dmFolha.cdsBairros.RecordCount > 0) then
   begin
       If Application.MessageBox('Deseja excluir este bairro', 'Exclusão de registro',
                    MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2+MB_APPLMODAL) = ID_YES Then
       Begin
            dmFolha.cdsBairros.Delete;
            dmFolha.cdsBairros.ApplyUpdates(0);
            //
            REGISTRO;
       end
       else
            Application.MessageBox('Não ha registro a ser excluido','ATENÇÃO',
              MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
   End;
end;

procedure TfrmCadBairros.BtCancelarClick(Sender: TObject);
begin
  inherited;
     tratabotoes;
     dmFolha.cdsBairros.Cancel;
end;

procedure TfrmCadBairros.BtGravarClick(Sender: TObject);
begin
  inherited;
     If uFuncoes.Empty(dbeNMBAIR.Text) Then
       Begin
           Application.MessageBox('Digite o nome do bairro.','ATENÇÃO',
               MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
           dbeNMBAIR.SetFocus;
           Exit;
       End;
     //
     If uFuncoes.Empty(dbcmbCidade.Text) Then
       Begin
           Application.MessageBox('Selecione a cidade.','ATENÇÃO',
               MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
           dbcmbCidade.SetFocus;
           Exit;
       End;
     //
     try
          tratabotoes;
          //
          if (dmFolha.cdsBairros.State in [dsinsert]) then
            begin
                 dmFolha.parametros;
                 dmFolha.CdsConfig.Edit;
                 dmFolha.cdsConfig.FieldByName('CFG_BAIRRO').AsInteger :=
                      dmFolha.cdsConfig.FieldByName('CFG_BAIRRO').AsInteger + 1;
                 dmFolha.cdsBairros.FieldByName('BAI_CODIGO').AsInteger :=
                      dmFolha.cdsConfig.FieldByName('CFG_BAIRRO').AsInteger;
                 dmFolha.CdsConfig.ApplyUpdates(0);
             end;
          //
          dmFolha.cdsBairros.ApplyUpdates(0);
          //
     Except
          on Exc:Exception do
            begin
               Application.MessageBox(PChar('Error ao tentar gravar registro.'+#13
                      + Exc.Message),
                      'ATENÇÃO', MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
               dmFolha.cdsBairros.Cancel;
            End;
     End;
end;

procedure TfrmCadBairros.edtConsultarChange(Sender: TObject);
begin
  inherited;
  If not uFuncoes.Empty(edtConsultar.Text) Then
    begin
        cdsConsultar.Close;
        with datasetConsultar do
        begin
            Active := False;
            CommandText := 'Select BAI_CODIGO, BAI_NOME from BAIRROS';
            case rgConsultar.ItemIndex of
                0: CommandText := CommandText + ' Where (BAI_CODIGO = :pCODIGO)';
                1: CommandText := CommandText + ' Where (UPPER(BAI_NOME) like :pNOME)';
            end;
            CommandText := CommandText + ' order by BAI_NOME';
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

procedure TfrmCadBairros.btnAlterarClick(Sender: TObject);
begin
  inherited;
       buscar;
       PageControl1.ActivePageIndex := 0;
end;

procedure TfrmCadBairros.grdConsultarDblClick(Sender: TObject);
begin
  inherited;
     If not (cdsConsultar.IsEmpty) Then
         btnAlterarClick(Sender);
end;

procedure TfrmCadBairros.dbeNMBAIRExit(Sender: TObject);
begin
  inherited;
    If (dmFolha.cdsBairros.State in [dsInsert])
       and not uFuncoes.Empty(dbeNMBAIR.Text) Then
       begin
            With dmFolha2.qryConsulta do
            begin
                 SQL.Clear;
                 Close;
                 SQL.Add('Select B.BAI_NOME, C.CID_NOME from BAIRROS B inner join CIDADES C ON B.CID_CODIGO = C.CID_CODIGO');
                 SQL.Add('Where (B.BAI_NOME = :pNOME) AND (C.CID_NOME = :pCIDADE) ');
                 Params.ParamByName('pNOME').AsString   := dbeNMBAIR.Text;
                 Params.ParamByName('pCIDADE').AsString := dbcmbCidade.Text;
                 Open;
                 //
                 If not (IsEmpty) Then
                 begin
                      Application.MessageBox('Bairro já cadastrado para esta cidade.','ATENÇÃO',
                         MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
                      dbeNMBAIR.SetFocus;
                      dbeNMBAIR.Clear;
                      Exit;
                 End;
            End;
       End;
end;

end.
