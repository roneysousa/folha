unit uFrmCadSalarioFamilia;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmCadastro2, StdCtrls, Buttons, ExtCtrls, DB, Mask, DBCtrls,
  Grids, DBGrids;

type
  TfrmCadSalarioFamilia = class(TfrmCadastro2)
    dbeFaixa: TDBEdit;
    dsSalarioFamilia: TDataSource;
    dbeValor: TDBEdit;
    Label3: TLabel;
    Label4: TLabel;
    grdConsultar: TDBGrid;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtExcluirClick(Sender: TObject);
    procedure BtAdicionarClick(Sender: TObject);
    procedure BtCancelarClick(Sender: TObject);
    procedure BtGravarClick(Sender: TObject);
    procedure dbeFaixaExit(Sender: TObject);
  private
    { Private declarations }
     procedure tratabotoes;
  public
    { Public declarations }
  end;

var
  frmCadSalarioFamilia: TfrmCadSalarioFamilia;
  M_VALOR : Double;

implementation

uses udmFolha, uFuncoes;

{$R *.dfm}

procedure TfrmCadSalarioFamilia.FormShow(Sender: TObject);
begin
  inherited;
      dmFolha.cdsSalarioFamilia.Open;
      //
      grdConsultar.Align := alClient;
end;

procedure TfrmCadSalarioFamilia.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
      dmFolha.cdsSalarioFamilia.Close;
      Action := caFree;
end;

procedure TfrmCadSalarioFamilia.BtExcluirClick(Sender: TObject);
begin
  inherited;
  if not (dmFolha.cdsSalarioFamilia.IsEmpty) and
     (dmFolha.cdsSalarioFamilia.RecordCount > 0) then
   begin
        dmFolha.cdsSalarioFamilia.Last;
        dmFolha.cdsSalarioFamilia.Delete;
        dmFolha.cdsSalarioFamilia.ApplyUpdates(0);
   End;
end;

procedure TfrmCadSalarioFamilia.BtAdicionarClick(Sender: TObject);
begin
  inherited;
       grdConsultar.Visible := False;
       //
       tratabotoes;
       dmFolha.parametros;
       If not (dmFolha.cdsSalarioFamilia.IsEmpty) Then
       begin
           dmFolha.cdsSalarioFamilia.Last;
           M_VALOR := dmFolha.cdsSalarioFamilia.FieldByname('SFM_FAIXA').AsFloat;
       End;
       dmFolha.cdsSalarioFamilia.Append;
       dbeFaixa.SetFocus;
end;

procedure TfrmCadSalarioFamilia.tratabotoes;
begin
   BtAdicionar.Enabled := not BtAdicionar.Enabled;
   BtExcluir.Enabled := not BtExcluir.Enabled;
   BtCancelar.Enabled := not BtCancelar.Enabled;
   BtGravar.Enabled := not BtGravar.Enabled;
   BtSair.Enabled := not BtSair.Enabled;
end;

procedure TfrmCadSalarioFamilia.BtCancelarClick(Sender: TObject);
begin
  inherited;
     grdConsultar.Visible := True;
     dmFolha.cdsSalarioFamilia.Cancel;
     tratabotoes;
end;

procedure TfrmCadSalarioFamilia.BtGravarClick(Sender: TObject);
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
     If uFuncoes.Empty(dbeValor.Text) Then
       Begin
           Application.MessageBox('Digite o valor do beneficio.','ATENÇÃO',
               MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
           dbeValor.SetFocus;
           Exit;
       End;
     //
    try
      tratabotoes;
      If (dmFolha.cdsSalarioFamilia.State in [dsInsert]) Then
        begin
             dmFolha.cdsConfig.Edit;
             dmFolha.cdsConfigCFG_SALARIO_FAMILIA.AsInteger :=
                   dmFolha.cdsConfigCFG_SALARIO_FAMILIA.AsInteger + 1;
             dmFolha.cdsConfig.ApplyUpdates(0);
             //
             dmFolha.cdsSalarioFamiliaSFM_CODIGO.AsInteger :=
                   dmFolha.cdsConfigCFG_SALARIO_FAMILIA.AsInteger;
        End;
        //
        dmFolha.cdsSalarioFamilia.ApplyUpdates(0);
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

procedure TfrmCadSalarioFamilia.dbeFaixaExit(Sender: TObject);
begin
  inherited;
     If not uFuncoes.Empty(dbeFaixa.Text) and (M_VALOR > 0) Then
      begin
           If (dmFolha.cdsSalarioFamiliaSFM_FAIXA.AsFloat <= M_VALOR) then
            Begin
                 dbeFaixa.SetFocus;
                 Exit;
            End;
      End;
end;

end.
