unit uFrmCadDescBene;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmCadastro, FMTBcd, DBClient, Provider, DB, SqlExpr, Buttons,
  Grids, DBGrids, StdCtrls, ExtCtrls, ComCtrls, Mask, DBCtrls, DBXpress;

type
  TfrmCadDescBene = class(TfrmCadastro)
    Label1: TLabel;
    dsDescBene: TDataSource;
    Label2: TLabel;
    dbeDescricao: TDBEdit;
    lbl_valor: TLabel;
    dbeValor: TDBEdit;
    dbePercentual: TDBEdit;
    DBText1: TDBText;
    lbl_percentual: TLabel;
    cdsConsultarDCB_CODIGO: TIntegerField;
    cdsConsultarDCB_DESCRICAO: TStringField;
    dbeTipo: TDBRadioGroup;
    DBGrid1: TDBGrid;
    dsDados: TDataSource;
    dstDados: TSQLDataSet;
    dspDados: TDataSetProvider;
    cdsDados: TClientDataSet;
    cdsDadosDCB_CODIGO: TIntegerField;
    cdsDadosDCB_DESCRICAO: TStringField;
    Panel5: TPanel;
    Label3: TLabel;
    procedure FormShow(Sender: TObject);
    procedure BtAdicionarClick(Sender: TObject);
    procedure BtEditarClick(Sender: TObject);
    procedure BtExcluirClick(Sender: TObject);
    procedure BtCancelarClick(Sender: TObject);
    procedure BtGravarClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure grdConsultarDblClick(Sender: TObject);
    procedure edtConsultarChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dbeTipoKeyPress(Sender: TObject; var Key: Char);
    procedure dbeValorEnter(Sender: TObject);
    procedure dbePercentualEnter(Sender: TObject);
    procedure dbeDescricaoExit(Sender: TObject);
    procedure dsDescBeneDataChange(Sender: TObject; Field: TField);
    procedure TabSheet1Show(Sender: TObject);
    procedure TabSheet2Show(Sender: TObject);
    procedure dsDadosDataChange(Sender: TObject; Field: TField);
    procedure dbeValorExit(Sender: TObject);
    procedure dbePercentualExit(Sender: TObject);
  private
     procedure tratabotoes;
     procedure buscar;
     procedure buscar2;
     procedure REGISTRO;
     procedure VERICIFICAR_TABELA;
     function CODIGO() : Integer;
     procedure MOSTRAR_DADOS;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadDescBene: TfrmCadDescBene;
  M_FLMOSTRA : String;
  M_LOCREC : Integer;

implementation

uses udmFolha, uFuncoes, udmFolha2,uPrincFolha;

{$R *.dfm}

{ TfrmCadDescBene }

procedure TfrmCadDescBene.buscar;
begin
     With dmFolha.cdsDescBene do
     begin
          Close;
          Params.ParamByName('pCODIGO').AsInteger  := cdsConsultar.FieldByName('DCB_CODIGO').AsInteger;
          Open;
     End;
end;

procedure TfrmCadDescBene.REGISTRO;
begin
          With dmFolha.cdsDescBene do
            begin
                  Close;
                  Params.ParamByName('pCODIGO').AsInteger  := dmFolha.mvcodigo('DCB_CODIGO','DESCONTOS_BENEFICIO');
                  Open;
            End;
end;

procedure TfrmCadDescBene.tratabotoes;
begin
   BtAdicionar.Enabled := not BtAdicionar.Enabled;
   BtEditar.Enabled := not BtEditar.Enabled;
   BtExcluir.Enabled := not BtExcluir.Enabled;
   BtPesquisar.Enabled := not BtPesquisar.Enabled;
   BtCancelar.Enabled := not BtCancelar.Enabled;
   BtGravar.Enabled := not BtGravar.Enabled;
   BtSair.Enabled := not BtSair.Enabled;
   //
   DBGrid1.Visible := not DBGrid1.Visible;
end;

procedure TfrmCadDescBene.FormShow(Sender: TObject);
begin
  inherited;
     VERICIFICAR_TABELA;
     REGISTRO;
     //
     MOSTRAR_DADOS;
     DBGrid1.Align := AlClient;
     //
     PageControl1.ActivePageIndex := 0;
end;

procedure TfrmCadDescBene.VERICIFICAR_TABELA;
Var
    TD : TTransactionDesc;
begin
     dmFolha.parametros;
     If (dmFolha.cdsConfigCFG_DESCBENE.AsInteger  = 0) Then
     begin
         // Inicia um transação no BD
         TD.TransactionID  := StrtoInt(uPrincFolha.M_CDUSUA) ;
         TD.IsolationLevel := xilREADCOMMITTED;
         dmFolha.sqlCon_Folha.StartTransaction(TD);
        //
        try
          {dmFolha.parametros;
          dmFolha.cdsConfig.Edit;
          dmFolha.cdsConfig.FieldByName('CFG_DESCBENE').AsInteger := 0;
          dmFolha.cdsConfig.ApplyUpdates(0);}
          //
          With dmFolha.spIncDescBene do
            begin
                 Close;
                 // 001 - SALARIO BASE
                 Params.ParamByName('PCODIGO').AsInteger   := CODIGO();
                 Params.ParamByName('PDESCRICAO').AsString := 'SALARIO BASE';
                 Params.ParamByName('pTIPO').AsString      := '1';
                 Params.ParamByName('pVALOR').AsFloat      := 0;
                 Params.ParamByName('pPERCENTUAL').AsFloat := 0;
                 //
                 ExecProc;
                 // 002 - INSS
                 Close;
                 //
                 Params.ParamByName('PCODIGO').AsInteger   := CODIGO();
                 Params.ParamByName('PDESCRICAO').AsString := 'INSS';
                 Params.ParamByName('pTIPO').AsString      := '2';
                 Params.ParamByName('pVALOR').AsFloat      := 0;
                 Params.ParamByName('pPERCENTUAL').AsFloat := 0;
                 //
                 ExecProc;
                 // 003 - IMPOSTO DE RENDA
                 Close;
                 //
                 Params.ParamByName('PCODIGO').AsInteger   := CODIGO();
                 Params.ParamByName('PDESCRICAO').AsString := 'IMPOSTO DE RENDA';
                 Params.ParamByName('pTIPO').AsString      := '2';
                 Params.ParamByName('pVALOR').AsFloat      := 0;
                 Params.ParamByName('pPERCENTUAL').AsFloat := 0;
                 //
                 ExecProc;
                 // 004 -  SALÁRIO FAMÍLIA
                 Close;
                 //
                 Params.ParamByName('PCODIGO').AsInteger   := CODIGO();
                 Params.ParamByName('PDESCRICAO').AsString := 'SALARIO FAMILIA';
                 Params.ParamByName('pTIPO').AsString      := '1';
                 Params.ParamByName('pVALOR').AsFloat      := 0;
                 Params.ParamByName('pPERCENTUAL').AsFloat := 0;
                 //
                 ExecProc;
                 // 005 - VALE ADIANTAMENTO
                 Close;
                 //
                 Params.ParamByName('PCODIGO').AsInteger   := CODIGO();
                 Params.ParamByName('PDESCRICAO').AsString := 'VALE ADIANTAMENTO';
                 Params.ParamByName('pTIPO').AsString      := '2';
                 Params.ParamByName('pVALOR').AsFloat      := 0;
                 Params.ParamByName('pPERCENTUAL').AsFloat := 0;
                 //
                 ExecProc;
                 // 006 - FALTAS
                 Close;
                 //
                 Params.ParamByName('PCODIGO').AsInteger   := CODIGO();
                 Params.ParamByName('PDESCRICAO').AsString := 'FALTAS';
                 Params.ParamByName('pTIPO').AsString      := '2';
                 Params.ParamByName('pVALOR').AsFloat      := 0;
                 Params.ParamByName('pPERCENTUAL').AsFloat := 0;
                 //
                 ExecProc;
                 // 007 - HORAS EXTRAS
                 Close;
                 //
                 Params.ParamByName('PCODIGO').AsInteger   := CODIGO();
                 Params.ParamByName('PDESCRICAO').AsString := 'HORAS EXTRAS';
                 Params.ParamByName('pTIPO').AsString      := '1';
                 Params.ParamByName('pVALOR').AsFloat      := 0;
                 Params.ParamByName('pPERCENTUAL').AsFloat := 0;
                 //
                 ExecProc;
                 //
                 dmFolha.parametros;
                 dmFolha.cdsConfig.Edit;
                 dmFolha.cdsConfig.FieldByName('CFG_DESCBENE').AsInteger :=
                    dmFolha.cdsConfig.FieldByName('CFG_DESCBENE').AsInteger + 43;
                 dmFolha.cdsConfig.ApplyUpdates(0);
                 // 051 - FGTS
                 Close;
                 //
                 Params.ParamByName('PCODIGO').AsInteger   := CODIGO();
                 Params.ParamByName('PDESCRICAO').AsString := 'FGTS';
                 Params.ParamByName('pTIPO').AsString      := '2';
                 Params.ParamByName('pVALOR').AsFloat      := 0;
                 Params.ParamByName('pPERCENTUAL').AsFloat := 0;
                 //
                 ExecProc;
                 // 052 - VALE TRANSPORTE
                 Close;
                 //
                 Params.ParamByName('PCODIGO').AsInteger   := CODIGO();
                 Params.ParamByName('PDESCRICAO').AsString := 'VALE TRANSPORTE';
                 Params.ParamByName('pTIPO').AsString      := '2';
                 Params.ParamByName('pVALOR').AsFloat      := 0;
                 Params.ParamByName('pPERCENTUAL').AsFloat := 0;
                 //
                 ExecProc;
                 //
                 dmFolha.parametros;
                 dmFolha.cdsConfig.Edit;
                 dmFolha.cdsConfig.FieldByName('CFG_DESCBENE').AsInteger :=
                    dmFolha.cdsConfig.FieldByName('CFG_DESCBENE').AsInteger + 48;
                 dmFolha.cdsConfig.ApplyUpdates(0);
            End;
            //
            dmFolha.sqlCon_Folha.Commit(TD);
        Except
            on Exc:Exception do
            begin
                  Application.MessageBox(PChar('Erro ao incluir dados'+#13
                        + Exc.Message), 'ATENÇÃO', MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
                  //  Cancelar transação no BD.
                  dmFolha.sqlCon_Folha.Rollback(TD);
                  Close;
             End;
        End;
     End;
end;

function TfrmCadDescBene.CODIGO: Integer;
begin
     dmFolha.parametros;
     dmFolha.cdsConfig.Edit;
     dmFolha.cdsConfig.FieldByName('CFG_DESCBENE').AsInteger :=
        dmFolha.cdsConfig.FieldByName('CFG_DESCBENE').AsInteger + 1;
     dmFolha.cdsConfig.ApplyUpdates(0);
     //
     result := dmFolha.cdsConfig.FieldByName('CFG_DESCBENE').AsInteger;
end;

procedure TfrmCadDescBene.BtAdicionarClick(Sender: TObject);
begin
  inherited;
  tratabotoes;
  dmFolha.parametros;
  dmFolha.cdsDescBene.Append;
  dmFolha.cdsDescBene.FieldByName('DCB_CODIGO').AsInteger :=
    dmFolha.cdsConfigCFG_DESCBENE.AsInteger + 1;
  dmFolha.cdsDescBene.FieldByName('DCB_TIPO').AsString  := '1';
  dmFolha.cdsDescBene.FieldByName('DCB_VALOR').AsFloat  := 0;
  dmFolha.cdsDescBene.FieldByName('DCB_PERCENTUAL').AsFloat  := 0; 
  dbeDescricao.SetFocus;
end;

procedure TfrmCadDescBene.BtEditarClick(Sender: TObject);
begin
  inherited;
  if  not (dmFolha.cdsDescBene.IsEmpty)
    and (dmFolha.cdsDescBene.RecordCount > 0) then
  Begin
       buscar2;
       tratabotoes;
       dmFolha.cdsDescBene.Edit;
       dbeDescricao.SetFocus;
  End;
end;

procedure TfrmCadDescBene.BtExcluirClick(Sender: TObject);
begin
  inherited;
  if not (cdsDados.IsEmpty)
    and  (cdsDados.RecordCount > 0)
     and (cdsDados.FieldByName('DCB_CODIGO').AsInteger > 100) then
   begin
       If Application.MessageBox('Deseja excluir este registro', 'Exclusão de registro',
                    MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2+MB_APPLMODAL) = ID_YES Then
       Begin
            buscar2;
            cdsDados.Delete;
            cdsDados.ApplyUpdates(0);
            //
            REGISTRO;
            //
            MOSTRAR_DADOS;
       end
       else
            Application.MessageBox('Não ha registro a ser excluido','ATENÇÃO',
              MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
   End;
end;

procedure TfrmCadDescBene.BtCancelarClick(Sender: TObject);
begin
  inherited;
     tratabotoes;
     dmFolha.cdsDescBene.Cancel;
     //
     MOSTRAR_DADOS;
end;

procedure TfrmCadDescBene.BtGravarClick(Sender: TObject);
begin
  inherited;
     If uFuncoes.Empty(dbeDescricao.Text) Then
       Begin
           Application.MessageBox('Digite a descrição.','ATENÇÃO',
               MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
           dbeDescricao.SetFocus;
           Exit;
       End;
     //
     If uFuncoes.Empty(dbeTipo.Items.Text) Then
       Begin
           Application.MessageBox('Digite o tipo.','ATENÇÃO',
               MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
           dbeTipo.SetFocus;
           Exit;
       End;
     //
     try
          M_LOCREC := dmFolha.cdsDescBene.FieldByName('DCB_CODIGO').AsInteger; 
          tratabotoes;
          //
          if (dmFolha.cdsDescBene.State in [dsinsert]) then
            begin
                 dmFolha.parametros;
                 dmFolha.CdsConfig.Edit;
                 dmFolha.cdsConfig.FieldByName('CFG_DESCBENE').AsInteger :=
                      dmFolha.cdsConfig.FieldByName('CFG_DESCBENE').AsInteger + 1;
                 dmFolha.cdsDescBene.FieldByName('DCB_CODIGO').AsInteger :=
                      dmFolha.cdsConfig.FieldByName('CFG_DESCBENE').AsInteger;
                 dmFolha.CdsConfig.ApplyUpdates(0);
             end;
          //
          dmFolha.cdsDescBene.ApplyUpdates(0);
          //
          MOSTRAR_DADOS;
          //
          cdsDados.Locate('DCB_CODIGO', M_LOCREC,[]);
     Except
          on Exc:Exception do
            begin
               Application.MessageBox(PChar('Error ao tentar gravar registro.'+#13
                      + Exc.Message),
                      'ATENÇÃO', MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
               dmFolha.cdsDescBene.Cancel;
            End;
     End;
end;

procedure TfrmCadDescBene.btnAlterarClick(Sender: TObject);
begin
  inherited;
       M_FLMOSTRA := 'N';
       cdsDados.Locate('DCB_CODIGO',cdsConsultarDCB_CODIGO.AsInteger , []);
       // buscar;
       PageControl1.ActivePageIndex := 0;
end;

procedure TfrmCadDescBene.grdConsultarDblClick(Sender: TObject);
begin
  inherited;
     If not (cdsConsultar.IsEmpty) Then
         btnAlterarClick(Sender);
end;

procedure TfrmCadDescBene.edtConsultarChange(Sender: TObject);
begin
  inherited;
  If not uFuncoes.Empty(edtConsultar.Text) Then
    begin
        cdsConsultar.Close;
        with datasetConsultar do
        begin
            Active := False;
            CommandText := 'Select DCB_CODIGO, DCB_DESCRICAO from DESCONTOS_BENEFICIO';
            case rgConsultar.ItemIndex of
                0: CommandText := CommandText + ' Where (DCB_CODIGO = :pCODIGO)';
                1: CommandText := CommandText + ' Where (UPPER(DCB_DESCRICAO) like :pNOME)';
            end;
            CommandText := CommandText + ' order by DCB_DESCRICAO';
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

procedure TfrmCadDescBene.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
     dmFolha.cdsDescBene.Close;
     //
     Action := caFree;
end;

procedure TfrmCadDescBene.dbeTipoKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
      If not( key in['1'..'2',#8, #13] ) then
          key:=#0;
end;

procedure TfrmCadDescBene.dbeValorEnter(Sender: TObject);
begin
  inherited;
     If (dmFolha.cdsDescBene.State in [dsInsert, dsEdit]) Then
         dmFolha.cdsDescBene.FieldByName('DCB_PERCENTUAL').AsFloat := 0;
end;

procedure TfrmCadDescBene.dbePercentualEnter(Sender: TObject);
begin
  inherited;
     If (dmFolha.cdsDescBene.State in [dsInsert, dsEdit]) Then
         dmFolha.cdsDescBene.FieldByName('DCB_VALOR').AsFloat := 0;
end;

procedure TfrmCadDescBene.dbeDescricaoExit(Sender: TObject);
begin
  inherited;
    If (dmFolha.cdsDescBene.State in [dsInsert])
       and not uFuncoes.Empty(dbeDescricao.Text) Then
       begin
            With dmFolha2.qryConsulta do
            begin
                 SQL.Clear;
                 Close;
                 SQL.Add('Select DCB_DESCRICAO from DESCONTOS_BENEFICIO Where (DCB_DESCRICAO = :pNOME)');
                 Params.ParamByName('pNOME').AsString := dbeDescricao.Text;
                 Open;
                 //
                 If not (IsEmpty) Then
                 begin
                      Application.MessageBox('Descrição já cadastrada!!!','ATENÇÃO',
                         MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
                      dbeDescricao.SetFocus;
                      dbeDescricao.Clear;
                      Exit;
                 End;
            End;
       End;
end;

procedure TfrmCadDescBene.dsDescBeneDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
      If (dmFolha.cdsDescBene.FieldByName('DCB_CODIGO').AsInteger < 100)
       and (dmFolha.cdsDescBene.State in [dsBrowse]) Then
           BtExcluir.Enabled := False
      Else
           BtExcluir.Enabled := True;
      //
      if (dmFolha.cdsDescBene.State in [dsInsert, dsEdit]) Then
      begin
           BtExcluir.Enabled := False;
           //
           If (dmFolha.cdsDescBene.FieldByName('DCB_CODIGO').AsInteger <= 30) Then
            begin
                 dbeTipo.Visible        := False;
                 lbl_valor.Visible      := False;
                 dbeValor.Visible       := False;
                 dbePercentual.Visible  := False;
                 lbl_percentual.Visible := False;
            End;
            //
           If (dmFolha.cdsDescBene.FieldByName('DCB_CODIGO').AsInteger > 30)
            and (dmFolha.cdsDescBene.FieldByName('DCB_CODIGO').AsInteger <= 59) Then
            begin
                 dbeTipo.Visible        := True;
                 lbl_valor.Visible      := False;
                 dbeValor.Visible       := False;
                 dbePercentual.Visible  := True;
                 lbl_percentual.Visible := True;
            End;
            //
           If (dmFolha.cdsDescBene.FieldByName('DCB_CODIGO').AsInteger > 59)
            and (dmFolha.cdsDescBene.FieldByName('DCB_CODIGO').AsInteger <= 99) Then
            begin
                 dbeTipo.Visible        := True;
                 lbl_valor.Visible      := True;
                 dbeValor.Visible       := True;
                 dbePercentual.Visible  := False;
                 lbl_percentual.Visible := False;
            End;
            //
           If (dmFolha.cdsDescBene.FieldByName('DCB_CODIGO').AsInteger > 99) Then
            begin
                 dbeTipo.Visible        := True;
                 lbl_valor.Visible      := True;
                 dbeValor.Visible       := True;
                 dbePercentual.Visible  := True;
                 lbl_percentual.Visible := True;
            End;
      End;
end;

procedure TfrmCadDescBene.MOSTRAR_DADOS;
begin
        cdsDados.DisableControls;
        cdsDados.Close;
        with dstDados do
        begin
            Active := False;
            CommandText := 'Select DCB_CODIGO, DCB_DESCRICAO from DESCONTOS_BENEFICIO';
            CommandText := CommandText + ' order by DCB_CODIGO';
            Active := True;
        end;
        cdsDados.Open;
        cdsDados.EnableControls;
end;

procedure TfrmCadDescBene.TabSheet1Show(Sender: TObject);
begin
  inherited;
      If (M_FLMOSTRA = 'S') Then
         MOSTRAR_DADOS;
end;

procedure TfrmCadDescBene.TabSheet2Show(Sender: TObject);
begin
  inherited;
     M_FLMOSTRA := 'S';
end;

procedure TfrmCadDescBene.buscar2;
begin
     With dmFolha.cdsDescBene do
     begin
          Close;
          Params.ParamByName('pCODIGO').AsInteger  := cdsDados.FieldByName('DCB_CODIGO').AsInteger;
          Open;
     End;
end;

procedure TfrmCadDescBene.dsDadosDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
      If (cdsDados.FieldByName('DCB_CODIGO').AsInteger < 100)
       and (cdsDados.State in [dsBrowse]) Then
           BtExcluir.Enabled := False
      Else
           BtExcluir.Enabled := True;
end;

procedure TfrmCadDescBene.dbeValorExit(Sender: TObject);
begin
  inherited;
     If (dmFolha.cdsDescBene.State in [dsInsert, dsEdit])
       and uFuncoes.Empty(dbeValor.Text) Then
          dbeValor.Text := '0,00';
end;

procedure TfrmCadDescBene.dbePercentualExit(Sender: TObject);
begin
  inherited;
     If (dmFolha.cdsDescBene.State in [dsInsert, dsEdit])
       and uFuncoes.Empty(dbePercentual.Text) Then
          dbePercentual.Text := '0,00';
end;

End.
