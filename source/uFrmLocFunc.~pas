unit uFrmLocFunc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmLocalizar, FMTBcd, DBClient, Provider, DB, SqlExpr, Grids,
  DBGrids, Buttons, StdCtrls, ExtCtrls;

type
  TfrmLocalizarFuncionario = class(TfrmLocalizarDados)
    cdsConsultarFUN_MATRICULA: TIntegerField;
    cdsConsultarFUN_NOME: TStringField;
    procedure edtConsultarChange(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure grdConsultarDblClick(Sender: TObject);
    procedure edtConsultarKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLocalizarFuncionario: TfrmLocalizarFuncionario;
  M_NRFORM : Integer;

implementation

uses udmFolha, uFuncoes;

{$R *.dfm}

procedure TfrmLocalizarFuncionario.edtConsultarChange(Sender: TObject);
begin
  inherited;
  If not uFuncoes.Empty(edtConsultar.Text) Then
    begin
        cdsConsultar.Close;
        with datasetConsultar do
        begin
            Active := False;
            CommandText := 'Select FUN_MATRICULA, FUN_NOME from FUNCIONARIOS';
            CommandText := CommandText + ' Where (UPPER(FUN_NOME) like :pNOME)';
            CommandText := CommandText + ' order by FUN_NOME';
            //
            datasetConsultar.Params.ParamByName('pNOME').AsString   := edtConsultar.Text + '%';
            //
            Active := True;
        end;
        cdsConsultar.FetchParams;
        cdsConsultar.Open;
   End;
end;

procedure TfrmLocalizarFuncionario.btnAlterarClick(Sender: TObject);
begin
  inherited;
       Close;
end;

procedure TfrmLocalizarFuncionario.grdConsultarDblClick(Sender: TObject);
begin
  inherited;
        If not (cdsConsultar.IsEmpty) Then
           btnAlterarClick(Sender);
end;

procedure TfrmLocalizarFuncionario.edtConsultarKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
     If (key = #13) and not(cdsConsultar.IsEmpty) Then
      begin
           key := #0;
           btnAlterar.SetFocus; 
      End;
end;

end.
