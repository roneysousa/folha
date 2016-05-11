unit uFrmLocBeneficio;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmLocalizar, FMTBcd, DBClient, Provider, DB, SqlExpr, Grids,
  DBGrids, Buttons, StdCtrls, ExtCtrls;

type
  TfrmLocBeneficio = class(TfrmLocalizarDados)
    cdsConsultarDCB_CODIGO: TIntegerField;
    cdsConsultarDCB_DESCRICAO: TStringField;
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
  frmLocBeneficio: TfrmLocBeneficio;

implementation

uses udmFolha, uFuncoes;

{$R *.dfm}

procedure TfrmLocBeneficio.edtConsultarChange(Sender: TObject);
begin
  inherited;
  If not uFuncoes.Empty(edtConsultar.Text) Then
    begin
        cdsConsultar.Close;
        with datasetConsultar do
        begin
            Active := False;
            CommandText := 'Select DCB_CODIGO, DCB_DESCRICAO from DESCONTOS_BENEFICIO';
            CommandText := CommandText + ' Where (UPPER(DCB_DESCRICAO) like :pNOME) and (DCB_CODIGO > 100) ';
            CommandText := CommandText + ' order by DCB_DESCRICAO';
            //
            datasetConsultar.Params.ParamByName('pNOME').AsString   := edtConsultar.Text + '%';
            //
            Active := True;
        end;
        cdsConsultar.FetchParams;
        cdsConsultar.Open;
   End;
end;

procedure TfrmLocBeneficio.btnAlterarClick(Sender: TObject);
begin
  inherited;
       close;
end;

procedure TfrmLocBeneficio.grdConsultarDblClick(Sender: TObject);
begin
  inherited;
        If not (cdsConsultar.IsEmpty) Then
           btnAlterarClick(Sender);
end;

procedure TfrmLocBeneficio.edtConsultarKeyPress(Sender: TObject;
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
