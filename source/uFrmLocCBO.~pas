unit uFrmLocCBO;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmLocalizar, FMTBcd, DBClient, Provider, DB, SqlExpr, Grids,
  DBGrids, Buttons, StdCtrls, ExtCtrls;

type
  TfrmLocalizarCBO = class(TfrmLocalizarDados)
    cdsConsultarCBO_CODIGO: TIntegerField;
    cdsConsultarCBO_DESCRICAO: TStringField;
    procedure edtConsultarChange(Sender: TObject);
    procedure edtConsultarDblClick(Sender: TObject);
    procedure grdConsultarKeyPress(Sender: TObject; var Key: Char);
    procedure grdConsultarDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLocalizarCBO: TfrmLocalizarCBO;

implementation

uses udmFolha, uFuncoes;

{$R *.dfm}

procedure TfrmLocalizarCBO.edtConsultarChange(Sender: TObject);
begin
  inherited;
  If not uFuncoes.Empty(edtConsultar.Text) Then
    begin
        cdsConsultar.Close;
        with datasetConsultar do
        begin
            Active := False;
            CommandText := 'Select CBO_CODIGO, CBO_DESCRICAO from CBO';
            CommandText := CommandText + ' Where (UPPER(CBO_DESCRICAO) like :pNOME) ';
            CommandText := CommandText + ' order by CBO_DESCRICAO';
            //
            datasetConsultar.Params.ParamByName('pNOME').AsString   := edtConsultar.Text + '%';
            //
            Active := True;
        end;
        cdsConsultar.FetchParams;
        cdsConsultar.Open;
   End;
end;

procedure TfrmLocalizarCBO.edtConsultarDblClick(Sender: TObject);
begin
  inherited;
        If not (cdsConsultar.IsEmpty) Then
           btnAlterarClick(Sender);
end;

procedure TfrmLocalizarCBO.grdConsultarKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
     If (key = #13) and not(cdsConsultar.IsEmpty) Then
      begin
           key := #0;
           btnAlterar.SetFocus; 
      End;
end;

procedure TfrmLocalizarCBO.grdConsultarDblClick(Sender: TObject);
begin
  inherited;
        If not (cdsConsultar.IsEmpty) Then
           btnAlterarClick(Sender);
end;

end.
