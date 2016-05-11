unit uFrmCadHorarios;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmCadastro, FMTBcd, DBClient, Provider, DB, SqlExpr, Buttons,
  Grids, DBGrids, StdCtrls, ExtCtrls, ComCtrls, Mask, DBCtrls;

type
  TfrmCadHorarios = class(TfrmCadastro)
    Label1: TLabel;
    dsHorarios: TDataSource;
    cmbDia: TDBLookupComboBox;
    Label2: TLabel;
    dbeEntrada: TDBEdit;
    Label3: TLabel;
    dbeSaida: TDBEdit;
    Label4: TLabel;
    lbl_nmfunc: TLabel;
    procedure dbeEntradaKeyPress(Sender: TObject; var Key: Char);
    procedure dbeSaidaKeyPress(Sender: TObject; var Key: Char);
    procedure BtGravarClick(Sender: TObject);
    procedure dbeEntradaExit(Sender: TObject);
    procedure dbeSaidaExit(Sender: TObject);
    procedure BtCancelarClick(Sender: TObject);
    procedure BtAdicionarClick(Sender: TObject);
  private
    { Private declarations }
     procedure tratabotoes;
  public
    { Public declarations }
  end;

var
  frmCadHorarios: TfrmCadHorarios;

implementation

uses udmFolha, Math, udmFolha2;

{$R *.dfm}

procedure TfrmCadHorarios.dbeEntradaKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
     If not( key in['0'..'9',#8, #13] ) then
        key:=#0;
end;

procedure TfrmCadHorarios.dbeSaidaKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
     If not( key in['0'..'9',#8, #13] ) then
        key:=#0;
end;

procedure TfrmCadHorarios.BtGravarClick(Sender: TObject);
begin
  inherited;
     If (dmFolha2.Validar_Horario(dmFolha.cdsHorariosHRA_FUNCIONARIO.AsInteger,
         dmFolha.cdsHorariosHRA_DIASEMANA.AsInteger,
         dmFolha.cdsHorariosHRA_ENTRADA.AsString,
         dmFolha.cdsHorariosHRA_SAIDA.AsString) = True) Then
      begin
           Application.MessageBox('Horário já cadastro.','ATENÇÃO',
             MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
           //
           Exit;
      End;
      //
     tratabotoes;
     PageControl1.Pages[1].TabVisible := False;
     //
     try
        dmFolha.cdsHorarios.Post;
        dmFolha.cdsHorarios.ApplyUpdates(0);
        //
        Application.MessageBox('Registro gravado com sucesso.','ATENÇÃO',
            MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
     Except
          on Exc:Exception do
            begin
               Application.MessageBox(PChar('Error ao tentar gravar registro.'+#13
                      + Exc.Message),
                      'ATENÇÃO', MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
               dmFolha.cdsHorarios.Cancel;
            End;
     End;         
end;

procedure TfrmCadHorarios.dbeEntradaExit(Sender: TObject);
begin
  inherited;
   If (dsHorarios.State in [dsInsert, dsEdit]) Then
   Begin
     If (dbeEntrada.Text <> '  :  ') Then
     begin
        try
            //StrToTime(Copy(dbeEntrada.Text,1,2)+':'+Copy(dbeEntrada.Text,3,2));
            StrToTime(dbeEntrada.Text);
            dbeEntrada.Text := TimetoStr(StrToTime(dbeEntrada.Text));
            //
        except
          on EConvertError do
          Begin
                ShowMessage ('Hora Inválida!');
                dbeEntrada.SetFocus;
                Exit;
          End;
        end;
     End;
   End;
end;

procedure TfrmCadHorarios.dbeSaidaExit(Sender: TObject);
begin
  inherited;
   If (dsHorarios.State in [dsInsert, dsEdit]) Then
   Begin
     If (dbeSaida.Text <= dbeEntrada.Text) Then
      begin
           dbeSaida.SetFocus;
           Exit;
      End;
     //
     If (dbeSaida.Text <> '  :  ') Then
     begin
        try
            StrToTime(dbeSaida.Text);
            dbeSaida.Text := TimetoStr(StrToTime(dbeSaida.Text));
            //
        except
          on EConvertError do
          Begin
                ShowMessage ('Hora Inválida!');
                dbeSaida.SetFocus;
                Exit;
          End;
        end;
     End;
   End;
end;

procedure TfrmCadHorarios.BtCancelarClick(Sender: TObject);
begin
  inherited;
      tratabotoes;
      dmFolha.cdsHorarios.Cancel;
end;

procedure TfrmCadHorarios.tratabotoes;
begin
   BtAdicionar.Enabled := not BtAdicionar.Enabled;
   BtEditar.Enabled := not BtEditar.Enabled;
   BtExcluir.Enabled := not BtExcluir.Enabled;
   BtPesquisar.Enabled := not BtPesquisar.Enabled;
   BtCancelar.Enabled := not BtCancelar.Enabled;
   BtGravar.Enabled := not BtGravar.Enabled;
   BtSair.Enabled := not BtSair.Enabled;
end;

procedure TfrmCadHorarios.BtAdicionarClick(Sender: TObject);
begin
  inherited;
    tratabotoes;
    //PageControl1.Pages[3].TabVisible := False;
    PageControl1.ActivePageIndex := 0;
    dmFolha.cdsHorarios.Append;
    dmFolha.cdsHorarios.FieldByName('HRA_FUNCIONARIO').AsInteger :=
         dmFolha.cdsFuncionarios.fieldByname('FUN_MATRICULA').AsInteger; 
    cmbDia.SetFocus;
end;

end.
