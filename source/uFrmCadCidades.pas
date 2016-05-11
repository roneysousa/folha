unit uFrmCadCidades;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmCadastro, FMTBcd, DBClient, Provider, DB, SqlExpr, Buttons,
  Grids, DBGrids, StdCtrls, ExtCtrls, ComCtrls, Mask, DBCtrls;

type
  TfrmCadCidades = class(TfrmCadastro)
    Label1: TLabel;
    dsCidades: TDataSource;
    Label2: TLabel;
    dbeNMCIDA: TDBEdit;
    Label3: TLabel;
    dbeUF: TDBComboBox;
    DBText1: TDBText;
    cdsConsultarCID_CODIGO: TIntegerField;
    cdsConsultarCID_NOME: TStringField;
    dstCidades: TSQLDataSet;
    dstCidadesCID_CODIGO: TIntegerField;
    dstCidadesCID_NOME: TStringField;
    dstCidadesCID_UF: TStringField;
    dspCidades: TDataSetProvider;
    cdsCidades: TClientDataSet;
    cdsCidadesCID_CODIGO: TIntegerField;
    cdsCidadesCID_NOME: TStringField;
    cdsCidadesCID_UF: TStringField;
    procedure FormShow(Sender: TObject);
    procedure BtAdicionarClick(Sender: TObject);
    procedure BtEditarClick(Sender: TObject);
    procedure BtExcluirClick(Sender: TObject);
    procedure BtCancelarClick(Sender: TObject);
    procedure BtGravarClick(Sender: TObject);
    procedure edtConsultarChange(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure grdConsultarDblClick(Sender: TObject);
    procedure dbeNMCIDAExit(Sender: TObject);
  private
     procedure tratabotoes;
     procedure buscar;
     procedure REGISTRO;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadCidades: TfrmCadCidades;

implementation

uses udmFolha, uFuncoes, udmFolha2;

{$R *.dfm}

{ TfrmCadCidades }

procedure TfrmCadCidades.buscar;
begin
     cdsCidades.Close;
     cdsCidades.Params.ParamByName('pCODIGO').AsInteger  := cdsConsultar.FieldByName('CID_CODIGO').AsInteger;
     cdsCidades.Open;
end;

procedure TfrmCadCidades.REGISTRO;
begin
     dmFolha.parametros;
     If (dmFolha.cdsConfigCFG_CIDADE.AsInteger  = 0) Then
         cdsCidades.Open
     Else
     Begin
         cdsCidades.Close;
         cdsCidades.Params.ParamByName('pCODIGO').AsInteger  := dmFolha.mvcodigo('CID_CODIGO','CIDADES');
         cdsCidades.Open;
        //
     End;
end;

procedure TfrmCadCidades.tratabotoes;
begin
   BtAdicionar.Enabled := not BtAdicionar.Enabled;
   BtEditar.Enabled := not BtEditar.Enabled;
   BtExcluir.Enabled := not BtExcluir.Enabled;
   BtPesquisar.Enabled := not BtPesquisar.Enabled;
   BtCancelar.Enabled := not BtCancelar.Enabled;
   BtGravar.Enabled := not BtGravar.Enabled;
   BtSair.Enabled := not BtSair.Enabled;
end;

procedure TfrmCadCidades.FormShow(Sender: TObject);
begin
  inherited;
     REGISTRO;
     //
     If (dmFolha.cdsConfigCFG_CIDADE.AsInteger = 0) Then
          BtAdicionarClick(Sender);
     //
     PageControl1.ActivePageIndex := 0;
end;

procedure TfrmCadCidades.BtAdicionarClick(Sender: TObject);
begin
  inherited;
  tratabotoes;
  dmFolha.parametros;
  cdsCidades.Append;
  cdsCidades.FieldByName('CID_CODIGO').AsInteger :=
    dmFolha.cdsConfigCFG_CIDADE.AsInteger + 1;
  dbeNMCIDA.SetFocus;
end;

procedure TfrmCadCidades.BtEditarClick(Sender: TObject);
begin
  inherited;
  if  not (cdsCidades.IsEmpty)
    and (cdsCidades.RecordCount > 0) then
  Begin
       tratabotoes;
       cdsCidades.Edit;
       dbeNMCIDA.SetFocus;
  End;
end;

procedure TfrmCadCidades.BtExcluirClick(Sender: TObject);
begin
  inherited;
  if not (cdsCidades.IsEmpty) and
     (cdsCidades.RecordCount > 0) then
   begin
       If Application.MessageBox('Deseja excluir esta cidade?', 'Exclusão de registro',
                    MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2+MB_APPLMODAL) = ID_YES Then
       Begin
            cdsCidades.Delete;
            cdsCidades.ApplyUpdates(0);
            //
            REGISTRO;
       end
       else
            Application.MessageBox('Não ha registro a ser excluido','ATENÇÃO',
              MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
   End;
end;

procedure TfrmCadCidades.BtCancelarClick(Sender: TObject);
begin
  inherited;
     tratabotoes;
     cdsCidades.Cancel;
end;

procedure TfrmCadCidades.BtGravarClick(Sender: TObject);
begin
  inherited;
     If uFuncoes.Empty(dbeNMCIDA.Text) Then
       Begin
           Application.MessageBox('Digite o nome da cidade.','ATENÇÃO',
               MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
           dbeNMCIDA.SetFocus;
           Exit;
       End;
     //
     If uFuncoes.Empty(dbeUF.Text) Then
       Begin
           Application.MessageBox('Seleciona a UF da cidade.','ATENÇÃO',
               MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
           dbeUF.SetFocus;
           Exit;
       End;
     //
     try
          tratabotoes;
          //
          if (cdsCidades.State in [dsinsert]) then
            begin
                 dmFolha.parametros;
                 dmFolha.CdsConfig.Edit;
                 dmFolha.cdsConfig.FieldByName('CFG_CIDADE').AsInteger :=
                      dmFolha.cdsConfig.FieldByName('CFG_CIDADE').AsInteger + 1;
                 cdsCidades.FieldByName('CID_CODIGO').AsInteger :=
                      dmFolha.cdsConfig.FieldByName('CFG_CIDADE').AsInteger;
                 dmFolha.CdsConfig.ApplyUpdates(0);
             end;
          //
          cdsCidades.ApplyUpdates(0);
          //
     Except
          on Exc:Exception do
            begin
               Application.MessageBox(PChar('Error ao tentar gravar registro.'+#13
                      + Exc.Message),
                      'ATENÇÃO', MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
               cdsCidades.Cancel;
            End;
     End;
end;

procedure TfrmCadCidades.edtConsultarChange(Sender: TObject);
begin
  inherited;
  If not uFuncoes.Empty(edtConsultar.Text) Then
    begin
        cdsConsultar.Close;
        with datasetConsultar do
        begin
            Active := False;
            CommandText := 'Select CID_CODIGO, CID_NOME from CIDADES';
            case rgConsultar.ItemIndex of
                0: CommandText := CommandText + ' Where (CID_CODIGO = :pCODIGO)';
                1: CommandText := CommandText + ' Where (UPPER(CID_NOME) like :pNOME)';
            end;
            CommandText := CommandText + ' order by CID_NOME';
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

procedure TfrmCadCidades.btnAlterarClick(Sender: TObject);
begin
  inherited;
       buscar;
       PageControl1.ActivePageIndex := 0;
end;

procedure TfrmCadCidades.grdConsultarDblClick(Sender: TObject);
begin
  inherited;
     If not (cdsConsultar.IsEmpty) Then
         btnAlterarClick(Sender);
end;

procedure TfrmCadCidades.dbeNMCIDAExit(Sender: TObject);
begin
  inherited;
    If (cdsCidades.State in [dsInsert])
       and not uFuncoes.Empty(dbeNMCIDA.Text) Then
       begin
            With dmFolha2.qryConsulta do
            begin
                 SQL.Clear;
                 Close;
                 SQL.Add('Select CID_NOME from CIDADES Where (CID_NOME = :pNOME)');
                 Params.ParamByName('pNOME').AsString := dbeNMCIDA.Text;
                 Open;
                 //
                 If not (IsEmpty) Then
                 begin
                      Application.MessageBox('Cidade já cadastrada!!!','ATENÇÃO',
                         MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
                      dbeNMCIDA.SetFocus;
                      dbeNMCIDA.Clear;
                      Exit;
                 End;
            End;
       End;
end;

end.
