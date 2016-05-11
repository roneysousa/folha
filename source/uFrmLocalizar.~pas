unit uFrmLocalizar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, StdCtrls, Buttons, ExtCtrls, DBClient, Provider, DB,
  SqlExpr, Grids, DBGrids;

type
  TfrmLocalizarDados = class(TForm)
    Panel1: TPanel;
    Panel3: TPanel;
    sbProximo: TSpeedButton;
    sbUltimo: TSpeedButton;
    sbAnterior: TSpeedButton;
    sbPrimeiro: TSpeedButton;
    grdConsultar: TDBGrid;
    dsConsultar: TDataSource;
    datasetConsultar: TSQLDataSet;
    dspConsultar: TDataSetProvider;
    cdsConsultar: TClientDataSet;
    edtConsultar: TEdit;
    lblConsultar: TLabel;
    btnAlterar: TBitBtn;
    procedure dsConsultarDataChange(Sender: TObject; Field: TField);
    procedure dsConsultarStateChange(Sender: TObject);
    procedure sbPrimeiroClick(Sender: TObject);
    procedure sbAnteriorClick(Sender: TObject);
    procedure sbProximoClick(Sender: TObject);
    procedure sbUltimoClick(Sender: TObject);
    procedure edtConsultarKeyPress(Sender: TObject; var Key: Char);
    procedure btnAlterarClick(Sender: TObject);
    procedure edtConsultarChange(Sender: TObject);
    procedure edtConsultarKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLocalizarDados: TfrmLocalizarDados;

implementation

uses uFuncoes;

{$R *.dfm}

procedure TfrmLocalizarDados.dsConsultarDataChange(Sender: TObject;
  Field: TField);
begin
  sbPrimeiro.Enabled := (((Sender as TDataSource).DataSet.Active) and not (Sender as TDataSource).DataSet.IsEmpty) and not ((Sender as TDataSource).DataSet.Bof);
  sbAnterior.Enabled := sbPrimeiro.Enabled;
  sbUltimo.Enabled := (((Sender as TDataSource).DataSet.Active) and not (Sender as TDataSource).DataSet.IsEmpty) and not ((Sender as TDataSource).DataSet.Eof);
  sbProximo.Enabled := sbUltimo.Enabled;
end;

procedure TfrmLocalizarDados.dsConsultarStateChange(Sender: TObject);
begin
     btnAlterar.Enabled := (((Sender as TDataSource).DataSet.Active) and not (Sender as TDataSource).DataSet.IsEmpty);
end;

procedure TfrmLocalizarDados.sbPrimeiroClick(Sender: TObject);
begin
     If (cdsConsultar.Active) Then
        dsConsultar.DataSet.First;
end;

procedure TfrmLocalizarDados.sbAnteriorClick(Sender: TObject);
begin
     If (cdsConsultar.Active) Then
        dsConsultar.DataSet.Prior;
end;

procedure TfrmLocalizarDados.sbProximoClick(Sender: TObject);
begin
     If (cdsConsultar.Active) Then
        dsConsultar.DataSet.Next;
end;

procedure TfrmLocalizarDados.sbUltimoClick(Sender: TObject);
begin
     If (cdsConsultar.Active) Then
        dsConsultar.DataSet.Last;
end;

procedure TfrmLocalizarDados.edtConsultarKeyPress(Sender: TObject;
  var Key: Char);
begin
     If (key = #13) and not(cdsConsultar.IsEmpty) Then
      begin
           key := #0;
           btnAlterar.SetFocus; 
      End;
end;

procedure TfrmLocalizarDados.btnAlterarClick(Sender: TObject);
begin
     Close;
end;

procedure TfrmLocalizarDados.edtConsultarChange(Sender: TObject);
begin
     If uFuncoes.Empty(edtConsultar.Text) Then
        cdsConsultar.Close;
end;

procedure TfrmLocalizarDados.edtConsultarKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     If (cdsConsultar.Active = True)
       and not (cdsConsultar.IsEmpty) Then
     Begin
         IF (KEY = VK_LEFT) or (KEY = VK_UP) then // avalio se é seta para cima ou para baixo;
            cdsConsultar.Prior;
         //
         IF (KEY = VK_RIGHT) or (KEY = VK_DOWN) then
            cdsConsultar.Next;
     End;
end;

end.
