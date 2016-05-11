unit uFrmCadImpostoRenda;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmCadastro2, StdCtrls, Buttons, ExtCtrls, Grids, DBGrids, DB,
  Mask, DBCtrls;

type
  TfrmCadImpostoRenda = class(TfrmCadastro2)
    Label1: TLabel;
    dbeFaixa: TDBEdit;
    dsImposto: TDataSource;
    Label2: TLabel;
    dbePercentual: TDBEdit;
    grdConsultar: TDBGrid;
    procedure BtAdicionarClick(Sender: TObject);
    procedure BtExcluirClick(Sender: TObject);
    procedure BtCancelarClick(Sender: TObject);
    procedure BtGravarClick(Sender: TObject);
    procedure dbeFaixaExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
     procedure tratabotoes;
  public
    { Public declarations }
  end;

var
  frmCadImpostoRenda: TfrmCadImpostoRenda;
  M_VALOR : Double;

implementation

uses udmFolha, uFuncoes;

{$R *.dfm}

procedure TfrmCadImpostoRenda.BtAdicionarClick(Sender: TObject);
begin
  inherited;
       grdConsultar.Visible := False;
       //
       tratabotoes;
       dmFolha.parametros;
       If not (dmFolha.cdsImpostoRenda.IsEmpty) Then
       begin
           dmFolha.cdsImpostoRenda.Last;
           M_VALOR := dmFolha.cdsImpostoRenda.FieldByname('IMR_FAIXA').AsFloat;
       End;
       dmFolha.cdsImpostoRenda.Append;
       dbeFaixa.SetFocus;
end;

procedure TfrmCadImpostoRenda.BtExcluirClick(Sender: TObject);
begin
  inherited;
  if not (dmFolha.cdsImpostoRenda.IsEmpty) and
     (dmFolha.cdsImpostoRenda.RecordCount > 0) then
   begin
        dmFolha.cdsImpostoRenda.Last;
        dmFolha.cdsImpostoRenda.Delete;
        dmFolha.cdsImpostoRenda.ApplyUpdates(0);
   End;
end;

procedure TfrmCadImpostoRenda.tratabotoes;
begin
   BtAdicionar.Enabled := not BtAdicionar.Enabled;
   BtExcluir.Enabled := not BtExcluir.Enabled;
   BtCancelar.Enabled := not BtCancelar.Enabled;
   BtGravar.Enabled := not BtGravar.Enabled;
   BtSair.Enabled := not BtSair.Enabled;
end;

procedure TfrmCadImpostoRenda.BtCancelarClick(Sender: TObject);
begin
  inherited;
     grdConsultar.Visible := True;
     dmFolha.cdsImpostoRenda.Cancel;
     tratabotoes;
end;

procedure TfrmCadImpostoRenda.BtGravarClick(Sender: TObject);
begin
  inherited;
     If uFuncoes.Empty(dbeFaixa.Text) Then
       Begin
           Application.MessageBox('Digite a faixa de salario.','ATENÇÃO',
               MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
           dbeFaixa.SetFocus;
           Exit;
       End;
     //
     If uFuncoes.Empty(dbePercentual.Text) Then
       Begin
           Application.MessageBox('Digite o percentual para salario.','ATENÇÃO',
               MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
           dbePercentual.SetFocus;
           Exit;
       End;
     //
    try
      tratabotoes;
      If (dmFolha.cdsImpostoRenda.State in [dsInsert]) Then
        begin
             dmFolha.cdsConfig.Edit;
             dmFolha.cdsConfigCFG_IMPOSTO_RENDA.AsInteger :=
                   dmFolha.cdsConfigCFG_IMPOSTO_RENDA.AsInteger + 1;
             dmFolha.cdsConfig.ApplyUpdates(0);
             //
             dmFolha.cdsImpostoRendaIMR_CODIGO.AsInteger :=
                   dmFolha.cdsConfigCFG_IMPOSTO_RENDA.AsInteger;
        End;
        //
        dmFolha.cdsImpostoRenda.ApplyUpdates(0);
        //
        grdConsultar.Visible := True;
    Except
          on Exc:Exception do
            begin
               Application.MessageBox(PChar('Error ao tentar gravar registro.'+#13
                      + Exc.Message),
                      'ATENÇÃO', MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
               dmFolha.cdsSalarioFamilia.Cancel;
            End;
    End;
end;

procedure TfrmCadImpostoRenda.dbeFaixaExit(Sender: TObject);
begin
  inherited;
     If not uFuncoes.Empty(dbeFaixa.Text) and (M_VALOR > 0) Then
      begin
           If (dmFolha.cdsImpostoRendaIMR_FAIXA.AsFloat <= M_VALOR) then
            Begin
                 dbeFaixa.SetFocus;
                 Exit;
            End;
      End;
end;

procedure TfrmCadImpostoRenda.FormShow(Sender: TObject);
begin
  inherited;
      dmFolha.cdsImpostoRenda.Open;
      //
      grdConsultar.Align := alClient;
end;

procedure TfrmCadImpostoRenda.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
     dmFolha.cdsImpostoRenda.Close;
     //
     Action := caFree;
end;

end.
