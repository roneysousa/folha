unit uFrmCadEmpresas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmCadastro, FMTBcd, DBClient, Provider, DB, SqlExpr, Buttons,
  Grids, DBGrids, StdCtrls, ExtCtrls, ComCtrls, Mask, DBCtrls;

type
  TfrmCadEmpresas = class(TfrmCadastro)
    Label1: TLabel;
    DBText1: TDBText;
    Label2: TLabel;
    dbeFantasia: TDBEdit;
    dsEmpresas: TDataSource;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    Label4: TLabel;
    dbeEndereco: TDBEdit;
    Label5: TLabel;
    DBEdit4: TDBEdit;
    Label6: TLabel;
    Label8: TLabel;
    dbeNRCNPJ: TDBEdit;
    cdsConsultarEMP_CODIGO: TIntegerField;
    cdsConsultarEMP_FANTASIA: TStringField;
    dbcmbCidades: TDBLookupComboBox;
    Label9: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    Label7: TLabel;
    DBText2: TDBText;
    procedure FormShow(Sender: TObject);
    procedure BtAdicionarClick(Sender: TObject);
    procedure BtEditarClick(Sender: TObject);
    procedure BtExcluirClick(Sender: TObject);
    procedure BtCancelarClick(Sender: TObject);
    procedure BtGravarClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure edtConsultarChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dbeNRCNPJExit(Sender: TObject);
    procedure dbeNRCNPJKeyPress(Sender: TObject; var Key: Char);
    procedure dbcmbCidadesExit(Sender: TObject);
    procedure grdConsultarDblClick(Sender: TObject);
    procedure dbeFantasiaExit(Sender: TObject);
  private
     procedure tratabotoes;
     procedure buscar;
     procedure REGISTRO;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadEmpresas: TfrmCadEmpresas;

implementation

uses udmFolha, uFuncoes, udmFolha2;

{$R *.dfm}

{ TfrmCadEmpresas }

procedure TfrmCadEmpresas.buscar;
begin
     With dmFolha.cdsEmpresas do
     begin
          Close;
          Params.ParamByName('pCODIGO').AsInteger := cdsConsultar.FieldByName('EMP_CODIGO').AsInteger;
          Open;
     End;
end;

procedure TfrmCadEmpresas.REGISTRO;
begin
     dmFolha.parametros;
     If (dmFolha.cdsConfigCFG_EMPRESA.AsInteger  = 0) Then
         dmFolha.cdsEmpresas.Open
     Else
     Begin
          With dmFolha.cdsEmpresas do
            begin
                  Close;
                  Params.ParamByName('pCODIGO').AsInteger  := dmFolha.mvcodigo('EMP_CODIGO','EMPRESAS');
                  Open;
            End;
     End;
end;

procedure TfrmCadEmpresas.tratabotoes;
begin
   BtAdicionar.Enabled := not BtAdicionar.Enabled;
   BtEditar.Enabled := not BtEditar.Enabled;
   BtExcluir.Enabled := not BtExcluir.Enabled;
   BtPesquisar.Enabled := not BtPesquisar.Enabled;
   BtCancelar.Enabled := not BtCancelar.Enabled;
   BtGravar.Enabled := not BtGravar.Enabled;
   BtSair.Enabled := not BtSair.Enabled;
end;

procedure TfrmCadEmpresas.FormShow(Sender: TObject);
begin
  inherited;
     REGISTRO;
     dmFolha.CIDADES;
     dmFolha2.BAIRROS;
     //
     If (dmFolha.cdsEmpresas.IsEmpty) Then
          BtAdicionarClick(Sender);
     //
     PageControl1.ActivePageIndex := 0;
end;

procedure TfrmCadEmpresas.BtAdicionarClick(Sender: TObject);
begin
  inherited;
  tratabotoes;
  dmFolha.parametros;
  dmFolha.cdsEmpresas.Append;
  dmFolha.cdsEmpresas.FieldByName('EMP_CODIGO').AsInteger :=
    dmFolha.cdsConfigCFG_EMPRESA.AsInteger + 1;
  dbeNRCNPJ.SetFocus;
end;

procedure TfrmCadEmpresas.BtEditarClick(Sender: TObject);
begin
  inherited;
  if  not (dmFolha.cdsEmpresas.IsEmpty)
    and (dmFolha.cdsEmpresas.RecordCount > 0) then
  Begin
       tratabotoes;
       dmFolha.cdsEmpresas.Edit;
       dbeNRCNPJ.SetFocus;
  End;
end;

procedure TfrmCadEmpresas.BtExcluirClick(Sender: TObject);
begin
  inherited;
  if not (dmFolha.cdsEmpresas.IsEmpty) and
     (dmFolha.cdsEmpresas.RecordCount > 0) then
   begin
       If Application.MessageBox('Deseja excluir esta empresa?', 'Exclus�o de registro',
                    MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2+MB_APPLMODAL) = ID_YES Then
       Begin
            dmFolha.cdsEmpresas.Delete;
            dmFolha.cdsEmpresas.ApplyUpdates(0);
            //
            REGISTRO;
       end
       else
            Application.MessageBox('N�o ha registro a ser excluido','ATEN��O',
              MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
   End;
end;

procedure TfrmCadEmpresas.BtCancelarClick(Sender: TObject);
begin
  inherited;
     tratabotoes;
     dmFolha.cdsEmpresas.Cancel;
end;

procedure TfrmCadEmpresas.BtGravarClick(Sender: TObject);
begin
  inherited;
     If uFuncoes.Empty(dbeNRCNPJ.Text) Then
       Begin
           Application.MessageBox('Digite o CNPJ da empresa.','ATEN��O',
               MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
           dbeNRCNPJ.SetFocus;
           Exit;
       End;
     //
     If uFuncoes.Empty(dbeFantasia.Text) Then
       Begin
           Application.MessageBox('Digite o nome fantasia da empresa.','ATEN��O',
               MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
           dbeFantasia.SetFocus;
           Exit;
       End;
     //
     try
          tratabotoes;
          //
          if (dmFolha.cdsEmpresas.State in [dsinsert]) then
            begin
                 dmFolha.parametros;
                 dmFolha.CdsConfig.Edit;
                 dmFolha.cdsConfig.FieldByName('CFG_EMPRESA').AsInteger :=
                      dmFolha.cdsConfig.FieldByName('CFG_EMPRESA').AsInteger + 1;
                 dmFolha.cdsEmpresas.FieldByName('EMP_CODIGO').AsInteger :=
                      dmFolha.cdsConfig.FieldByName('CFG_EMPRESA').AsInteger;
                 dmFolha.CdsConfig.ApplyUpdates(0);
             end;
          //
          dmFolha.cdsEmpresas.ApplyUpdates(0);
          //
     Except
          on Exc:Exception do
            begin
               Application.MessageBox(PChar('Error ao tentar gravar registro.'+#13
                      + Exc.Message),
                      'ATEN��O', MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
               dmFolha.cdsEmpresas.Cancel;
            End;
     End;
end;

procedure TfrmCadEmpresas.btnAlterarClick(Sender: TObject);
begin
  inherited;
       buscar;
       PageControl1.ActivePageIndex := 0;
end;

procedure TfrmCadEmpresas.edtConsultarChange(Sender: TObject);
begin
  inherited;
  If not uFuncoes.Empty(edtConsultar.Text) Then
    begin
        cdsConsultar.Close;
        with datasetConsultar do
        begin
            Active := False;
            CommandText := 'Select EMP_CODIGO, EMP_FANTASIA from EMPRESAS';
            case rgConsultar.ItemIndex of
                0: CommandText := CommandText + ' Where (EMP_CODIGO = :pCODIGO)';
                1: CommandText := CommandText + ' Where (UPPER(EMP_FANTASIA) like :pNOME)';
            end;
            CommandText := CommandText + ' order by EMP_FANTASIA';
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

procedure TfrmCadEmpresas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
     dmFolha.cdsEmpresas.Close;
     //
     Action := caFree;
end;

procedure TfrmCadEmpresas.dbeNRCNPJExit(Sender: TObject);
begin
  inherited;
    If (dmFolha.cdsEmpresas.State in [dsInsert, dsEdit])
     and not uFuncoes.Empty(dbeNRCNPJ.Text) Then
      try
        If not (uFuncoes.CGC(uFuncoes.StrZero(dbeNRCNPJ.Text,14))) Then
        Begin
            MessageDlg('CNPJ inv�lido!!!', mtInformation, [mbOk], 0);
            dbeNRCNPJ.Clear;
            dbeNRCNPJ.SetFocus;
            Exit;
        End;
      Except
            dbeNRCNPJ.Clear;
            dbeNRCNPJ.SetFocus;
      End;
end;

procedure TfrmCadEmpresas.dbeNRCNPJKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
     If (Key = #27) and (dmFolha.cdsEmpresas.State in [dsInsert, dsEdit] ) Then
     Begin
          Key := #0;
          BtCancelarClick(Sender);
     End;
end;


procedure TfrmCadEmpresas.dbcmbCidadesExit(Sender: TObject);
begin
  inherited;
     If (dmFolha.cdsEmpresas.State in [dsInsert, dsEdit]) Then
     begin
          dmFolha2.cdsBairros.Close;
          With dmFolha2.dstBairros do
          Begin
               Active := False;
               CommandText := 'Select * from BAIRROS Where (CID_CODIGO = :pCODIGO)'+
                              ' order by BAI_NOME';
               Params.ParamByName('pCODIGO').AsInteger := dmFolha.cdsEmpresas.FieldByName('CID_CODIGO').AsInteger;
               Active := True;
          End;
          dmFolha2.cdsBairros.Open;
     End;
end;

procedure TfrmCadEmpresas.grdConsultarDblClick(Sender: TObject);
begin
  inherited;
     If not (cdsConsultar.IsEmpty) Then
         btnAlterarClick(Sender);
end;

procedure TfrmCadEmpresas.dbeFantasiaExit(Sender: TObject);
begin
  inherited;
  If (dmFolha.cdsEmpresas.State in [dsInsert])
    and not uFuncoes.Empty(dbeFantasia.Text) Then
  begin
     With dmFolha2.qryConsulta do
      begin
           SQL.Clear;
           Close;
           SQL.Add('Select EMP_FANTASIA from EMPRESAS Where (EMP_FANTASIA = :pNOME)');
           Params.ParamByName('pNOME').AsString := dbeFantasia.Text;
           Open;
           //
           If not (IsEmpty) Then
            begin
                 Application.MessageBox('Nome de fantasia j� cadastrado!!!','ATEN��O',
                    MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
                 dbeFantasia.SetFocus;
                 dbeFantasia.Clear;
                 Exit;
            End;
      End;
   End;
end;

end.
