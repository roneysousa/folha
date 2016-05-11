unit uFrmCadFeriados;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmCadastro, FMTBcd, DBClient, Provider, DB, SqlExpr, Buttons,
  Grids, DBGrids, StdCtrls, ExtCtrls, ComCtrls, Mask, DBCtrls;

type
  TfrmCadFeriados = class(TfrmCadastro)
    Label1: TLabel;
    dbeDiaMes: TDBEdit;
    dsFeriados: TDataSource;
    Label2: TLabel;
    dbeDescricao: TDBEdit;
    cdsConsultarFER_MESDIA: TStringField;
    cdsConsultarDESCRICAO: TStringField;
    procedure BtAdicionarClick(Sender: TObject);
    procedure BtEditarClick(Sender: TObject);
    procedure BtExcluirClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtCancelarClick(Sender: TObject);
    procedure BtGravarClick(Sender: TObject);
    procedure dbeDiaMesExit(Sender: TObject);
    procedure dsFeriadosStateChange(Sender: TObject);
    procedure edtConsultarChange(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure grdConsultarDblClick(Sender: TObject);
  private
    { Private declarations }
     procedure tratabotoes;
     procedure buscar;
     procedure REGISTRO;
     function Validar_DiaMes(M_DIAMES : String) : boolean;
  public
    { Public declarations }
  end;

var
  frmCadFeriados: TfrmCadFeriados;

implementation

uses udmFolha, uFuncoes, udmFolha2;

{$R *.dfm}

procedure TfrmCadFeriados.BtAdicionarClick(Sender: TObject);
begin
  inherited;
  tratabotoes;
  dmFolha.parametros;
  dmFolha.cdsFeriados.Append;
  dbeDiaMes.SetFocus;
end;

procedure TfrmCadFeriados.buscar;
begin
     dmFolha.cdsFeriados.Close;
     dmFolha.cdsFeriados.Params.ParamByName('pMESDIA').AsString :=
            cdsConsultar.FieldByName('FER_MESDIA').AsString;
     dmFolha.cdsFeriados.Open;
end;

procedure TfrmCadFeriados.REGISTRO;
begin
     dmFolha.parametros;
     With dmFolha.cdsFeriados do
     begin
         Close;
         Params.ParamByName('pMESDIA').AsString :=
             dmFolha.mscodigo('FER_MESDIA','FERIADOS');
         Open;
     End;
end;

procedure TfrmCadFeriados.tratabotoes;
begin
   BtAdicionar.Enabled := not BtAdicionar.Enabled;
   BtEditar.Enabled := not BtEditar.Enabled;
   BtExcluir.Enabled := not BtExcluir.Enabled;
   BtPesquisar.Enabled := not BtPesquisar.Enabled;
   BtCancelar.Enabled := not BtCancelar.Enabled;
   BtGravar.Enabled := not BtGravar.Enabled;
   BtSair.Enabled := not BtSair.Enabled;
end;

procedure TfrmCadFeriados.BtEditarClick(Sender: TObject);
begin
  inherited;
  if  not (dmFolha.cdsFeriados.IsEmpty)
    and (dmFolha.cdsFeriados.RecordCount > 0) then
  Begin
       tratabotoes;
       dmFolha.cdsFeriados.Edit;
       dbeDescricao.SetFocus;
  End;
end;

procedure TfrmCadFeriados.BtExcluirClick(Sender: TObject);
begin
  inherited;
  if not (dmFolha.cdsFeriados.IsEmpty) and
     (dmFolha.cdsFeriados.RecordCount > 0) then
   begin
       If Application.MessageBox('Deseja excluir esta categoria?', 'Exclusão de registro',
                    MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2+MB_APPLMODAL) = ID_YES Then
       Begin
            dmFolha.cdsFeriados.Delete;
            dmFolha.cdsFeriados.ApplyUpdates(0);
            //
            REGISTRO;
       end
       else
            Application.MessageBox('Não ha registro a ser excluido','ATENÇÃO',
              MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
   End;
end;

procedure TfrmCadFeriados.FormShow(Sender: TObject);
begin
  inherited;
     REGISTRO;
     //
     If (dmFolha.cdsFeriados.IsEmpty) Then
          BtAdicionarClick(Sender);
     //
     PageControl1.ActivePageIndex := 0;
end;

procedure TfrmCadFeriados.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
      dmFolha.cdsFeriados.Close;
      //
      Action := caFree;
end;

procedure TfrmCadFeriados.BtCancelarClick(Sender: TObject);
begin
  inherited;
     tratabotoes;
     dmFolha.cdsFeriados.Cancel;
end;

procedure TfrmCadFeriados.BtGravarClick(Sender: TObject);
begin
  inherited;
     If (dbeDiaMes.Text = '  /  ') Then
       Begin
           Application.MessageBox('Digite o dia e o mês do feriado.','ATENÇÃO',
               MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
           dbeDiaMes.SetFocus;
           Exit;
       End;
     //
     If uFuncoes.Empty(dbeDescricao.Text) Then
       Begin
           Application.MessageBox('Digite a descrição do feriado.','ATENÇÃO',
               MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
           dbeDescricao.SetFocus;
           Exit;
       End;
     //
     try
          tratabotoes;
          If (dmFolha.cdsFeriados.State in [dsInsert] ) Then

          // Grava
          dmFolha.cdsFeriados.ApplyUpdates(0);
     Except
          on Exc:Exception do
            begin
               Application.MessageBox(PChar('Error ao tentar gravar registro.'+#13
                      + Exc.Message),
                      'ATENÇÃO', MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
               dmFolha.cdsFeriados.Cancel;
            End;
     End;
end;

function TfrmCadFeriados.Validar_DiaMes(M_DIAMES: String): boolean;
Var
    M_DATA : TDate;
begin
        result := false;
        try
              M_DATA := StrtoDate(Copy(M_DIAMES,1,2)+'/'+Copy(M_DIAMES,3,2)+'/2007');
              //StrToDate(M_DATA);
              //
              With dmFolha2.qryConsulta do
                begin
                     SQL.Clear;
                     Close;
                     SQL.Add('Select FER_MESDIA from FERIADOS Where (FER_MESDIA = :pMESDIA)');
                     Params.ParamByName('pMESDIA').AsString := M_DIAMES;
                     Open;
                     //
                     If not (IsEmpty) then
                        result := true;
                End;
              dbeDiaMes.Text := Copy(DatetoStr(M_DATA),1,2)+Copy(DatetoStr(M_DATA),4,2);
              //Copy(DatetoStr(StrToDate(Copy(M_DIAMES,1,2)+'/'+Copy(M_DIAMES,3,2)+'/2007')),1,);
              //
        except
              on EConvertError do
              begin
                  ShowMessage ('Data Inválida!');
                  dbeDiaMes.Clear;
                  dbeDiaMes.SetFocus;
                  Exit;
              End;
        end;

end;

procedure TfrmCadFeriados.dbeDiaMesExit(Sender: TObject);
begin
  inherited;
    If (dmFolha.cdsFeriados.State in [dsInsert]  ) Then
        IF (Validar_DiaMes(dbeDiaMes.Text)) Then
          begin
               Application.MessageBox('Feriado já cadastro.','ATENÇÃO',
                  MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
               dbeDiaMes.Clear;
               dbeDiaMes.SetFocus;
               Exit;
          End;
end;

procedure TfrmCadFeriados.dsFeriadosStateChange(Sender: TObject);
begin
  inherited;
    dbeDiaMes.Enabled :=  dsFeriados.State in [dsInsert];
end;

procedure TfrmCadFeriados.edtConsultarChange(Sender: TObject);
begin
  inherited;
  If not uFuncoes.Empty(edtConsultar.Text) Then
    begin
        cdsConsultar.Close;
        with datasetConsultar do
        begin
            Active := False;
            CommandText := 'Select FER_MESDIA, DESCRICAO from FERIADOS';
            case rgConsultar.ItemIndex of
                0: CommandText := CommandText + ' Where (FER_MESDIA like :pCODIGO)';
                1: CommandText := CommandText + ' Where (UPPER(DESCRICAO) like :pNOME)';
            end;
            CommandText := CommandText + ' order by DESCRICAO';
            case rgConsultar.ItemIndex of
                0: datasetConsultar.Params.ParamByName('pCODIGO').AsString := edtConsultar.Text+ '%';
                1: datasetConsultar.Params.ParamByName('pNOME').AsString   := edtConsultar.Text + '%';
            end;
            Active := True;
        end;
        cdsConsultar.FetchParams;
        cdsConsultar.Open;
   End;
end;

procedure TfrmCadFeriados.btnAlterarClick(Sender: TObject);
begin
  inherited;
       buscar;
       PageControl1.ActivePageIndex := 0;
end;

procedure TfrmCadFeriados.grdConsultarDblClick(Sender: TObject);
begin
  inherited;
     If not (cdsConsultar.IsEmpty) Then
         btnAlterarClick(Sender);
end;

end.
