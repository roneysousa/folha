unit uFrmCadPrevidencia;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmCadastro2, StdCtrls, Buttons, Grids, DBGrids, ExtCtrls, DB,
  Mask, DBCtrls;

type
  TfrmCadPrevidencia = class(TfrmCadastro2)
    Label1: TLabel;
    dbeFaixa: TDBEdit;
    dsPrevidencia: TDataSource;
    Label2: TLabel;
    dbePercentual: TDBEdit;
    grdConsultar: TDBGrid;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtAdicionarClick(Sender: TObject);
    procedure BtEditarClick(Sender: TObject);
    procedure BtCancelarClick(Sender: TObject);
    procedure BtGravarClick(Sender: TObject);
    procedure BtExcluirClick(Sender: TObject);
    procedure dbeFaixaExit(Sender: TObject);
  private
    { Private declarations }
     procedure tratabotoes;
  public
    { Public declarations }
  end;

var
  frmCadPrevidencia: TfrmCadPrevidencia;
  M_VALOR : Double;

implementation

uses udmFolha, uFuncoes;

{$R *.dfm}

procedure TfrmCadPrevidencia.FormShow(Sender: TObject);
begin
  inherited;
      dmFolha.cdsPrevidencia.Open;
      //
      grdConsultar.Align := alClient;   
end;

procedure TfrmCadPrevidencia.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
      dmFolha.cdsPrevidencia.Close;
      Action := caFree;
end;

procedure TfrmCadPrevidencia.BtAdicionarClick(Sender: TObject);
begin
  inherited;
       grdConsultar.Visible := False;
       //
       tratabotoes;
       dmFolha.parametros;
       If not (dmFolha.cdsPrevidencia.IsEmpty) Then
       begin
           dmFolha.cdsPrevidencia.Last;
           M_VALOR := dmFolha.cdsPrevidencia.FieldByname('PRE_FAIXA').AsFloat;
       End;
       dmFolha.cdsPrevidencia.Append;
       dbeFaixa.SetFocus;     
end;

procedure TfrmCadPrevidencia.BtEditarClick(Sender: TObject);
begin
  inherited;
      grdConsultar.Visible := False;
  if  not (dmFolha.cdsPrevidencia.IsEmpty)
    and (dmFolha.cdsPrevidencia.RecordCount > 0) then
  Begin
       dmFolha.cdsPrevidencia.Edit;
       dbeFaixa.SetFocus;
  End;
end;

procedure TfrmCadPrevidencia.BtCancelarClick(Sender: TObject);
begin
  inherited;
     grdConsultar.Visible := True;
     dmFolha.cdsPrevidencia.Cancel;
     tratabotoes;
end;

procedure TfrmCadPrevidencia.BtGravarClick(Sender: TObject);
begin
  inherited;
     If uFuncoes.Empty(dbeFaixa.Text) Then
       Begin
           Application.MessageBox('Digite a faixa de salario.','ATEN��O',
               MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
           dbeFaixa.SetFocus;
           Exit;
       End;
     //
     If uFuncoes.Empty(dbePercentual.Text) Then
       Begin
           Application.MessageBox('Digite o percentual para salario.','ATEN��O',
               MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
           dbePercentual.SetFocus;
           Exit;
       End;
     //
    try
      tratabotoes;
      If (dmFolha.cdsPrevidencia.State in [dsInsert]) Then
        begin
             dmFolha.cdsConfig.Edit;
             dmFolha.cdsConfigCFG_PREVIDENCIA.AsInteger :=
                   dmFolha.cdsConfigCFG_PREVIDENCIA.AsInteger + 1;
             dmFolha.cdsConfig.ApplyUpdates(0);
             //
             dmFolha.cdsPrevidenciaPRE_CODIGO.AsInteger :=
                   dmFolha.cdsConfigCFG_PREVIDENCIA.AsInteger;
        End;
        //
        dmFolha.cdsPrevidencia.ApplyUpdates(0);
        //
        grdConsultar.Visible := True;
    Except
          on Exc:Exception do
            begin
               Application.MessageBox(PChar('Error ao tentar gravar registro.'+#13
                      + Exc.Message),
                      'ATEN��O', MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
               dmFolha.cdsPrevidencia.Cancel;
            End;
    End;
end;

procedure TfrmCadPrevidencia.BtExcluirClick(Sender: TObject);
begin
  inherited;
  if not (dmFolha.cdsPrevidencia.IsEmpty) and
     (dmFolha.cdsPrevidencia.RecordCount > 0) then
   begin
        dmFolha.cdsPrevidencia.Last;
        dmFolha.cdsPrevidencia.Delete;
        dmFolha.cdsPrevidencia.ApplyUpdates(0);
   End;
end;

procedure TfrmCadPrevidencia.dbeFaixaExit(Sender: TObject);
begin
  inherited;
     If not uFuncoes.Empty(dbeFaixa.Text) and (M_VALOR > 0) Then
      begin
           If (dmFolha.cdsPrevidenciaPRE_FAIXA.AsFloat <= M_VALOR) then
            Begin
                 dbeFaixa.SetFocus;
                 Exit;   
            End;
      End;
end;

procedure TfrmCadPrevidencia.tratabotoes;
begin
   BtAdicionar.Enabled := not BtAdicionar.Enabled;
   BtExcluir.Enabled := not BtExcluir.Enabled;
   BtCancelar.Enabled := not BtCancelar.Enabled;
   BtGravar.Enabled := not BtGravar.Enabled;
   BtSair.Enabled := not BtSair.Enabled;
end;

end.
