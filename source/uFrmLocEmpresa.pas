unit uFrmLocEmpresa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmLocalizar, FMTBcd, DBClient, Provider, DB, SqlExpr, Grids,
  DBGrids, Buttons, StdCtrls, ExtCtrls;

type
  TfrmLocalizarEmpresa = class(TfrmLocalizarDados)
    cdsConsultarEMP_CODIGO: TIntegerField;
    cdsConsultarEMP_FANTASIA: TStringField;
    procedure edtConsultarChange(Sender: TObject);
    procedure grdConsultarDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLocalizarEmpresa: TfrmLocalizarEmpresa;

implementation

uses udmFolha, uFuncoes;

{$R *.dfm}

procedure TfrmLocalizarEmpresa.edtConsultarChange(Sender: TObject);
begin
  inherited;
  If not uFuncoes.Empty(edtConsultar.Text) Then
    begin
        cdsConsultar.Close;
        with datasetConsultar do
        begin
            Active := False;
            CommandText := 'Select EMP_CODIGO, EMP_FANTASIA from EMPRESAS';
            CommandText := CommandText + ' Where (UPPER(EMP_FANTASIA) like :pNOME) ';
            CommandText := CommandText + ' order by EMP_FANTASIA';
            //
            datasetConsultar.Params.ParamByName('pNOME').AsString   := edtConsultar.Text + '%';
            //
            Active := True;
        end;
        cdsConsultar.FetchParams;
        cdsConsultar.Open;
   End;
end;

procedure TfrmLocalizarEmpresa.grdConsultarDblClick(Sender: TObject);
begin
  inherited;
        If not (cdsConsultar.IsEmpty) Then
           btnAlterarClick(Sender);
end;

end.
