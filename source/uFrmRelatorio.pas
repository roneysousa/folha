unit uFrmRelatorio;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask, ExtCtrls, DBXpress;

type
  TfrmRelatorio = class(TForm)
    Panel4: TPanel;
    Panel1: TPanel;
    Label1: TLabel;
    Label3: TLabel;
    spLocEmpresa: TSpeedButton;
    lbl_Funcionario: TLabel;
    edtMesAno: TMaskEdit;
    edtEmpresa: TEdit;
    Panel5: TPanel;
    BtImprimir: TBitBtn;
    BtSair: TBitBtn;
    procedure BtSairClick(Sender: TObject);
    procedure spLocEmpresaClick(Sender: TObject);
    procedure edtEmpresaChange(Sender: TObject);
    procedure edtEmpresaExit(Sender: TObject);
    procedure edtMesAnoExit(Sender: TObject);
    procedure edtEmpresaKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure BtImprimirClick(Sender: TObject);
  private
    { Private declarations }
    procedure FOLHA(M_CDEMPR : Integer); 
  public
    { Public declarations }
  end;

var
  frmRelatorio: TfrmRelatorio;
  M_CDEMPR : Integer;
  TD : TTransactionDesc;
  M_LINHA : String;

implementation

uses uFrmLocEmpresa, udmFolha2, uFuncoes, udmFolha;

{$R *.dfm}

procedure TfrmRelatorio.BtSairClick(Sender: TObject);
begin
     Close;
end;

procedure TfrmRelatorio.spLocEmpresaClick(Sender: TObject);
begin
    Application.CreateForm(TfrmLocalizarEmpresa, frmLocalizarEmpresa);
    Try
        frmLocalizarEmpresa.ShowModal;
    Finally
        M_CDEMPR := frmLocalizarEmpresa.cdsConsultar.FieldByname('EMP_CODIGO').AsInteger;
        edtEmpresa.Text := inttoStr(M_CDEMPR);
        //
        frmLocalizarEmpresa.Release;
        frmLocalizarEmpresa := nil;
    End;
end;

procedure TfrmRelatorio.edtEmpresaChange(Sender: TObject);
begin
     If uFuncoes.Empty(edtEmpresa.Text) then
     Begin
          lbl_Funcionario.Caption := '';
          edtMesAno.Clear;
     End;
end;

procedure TfrmRelatorio.edtEmpresaExit(Sender: TObject);
begin
     If not uFuncoes.Empty(edtEmpresa.Text) Then
         If (uFuncoes.ValidarLoja(StrtoInt(edtEmpresa.Text))) Then
            begin
                 edtEmpresa.Text := uFuncoes.StrZero(edtEmpresa.Text,3);
                 lbl_Funcionario.Caption := dmFolha.GetNomeEmpresa(StrtoInt(edtEmpresa.Text));
                 //dmFolha2.qryConsulta.FieldByName('EMP_FANTASIA').AsString;
                 FOLHA(StrtoInt(edtEmpresa.Text));
                 edtMesAno.SetFocus; 
            End
            Else
            begin
                 Application.MessageBox('Registro de empresa inexistente.','ATEN��O',
                     MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
                 //
                 lbl_Funcionario.Caption := '';
                 edtEmpresa.Clear;
                 edtEmpresa.SetFocus;
                 Exit;
            End;
end;

procedure TfrmRelatorio.edtMesAnoExit(Sender: TObject);
Var
     M_DTTEST : String;
     M_DATA : Tdate;
begin
    If uFuncoes.Empty(edtMesAno.Text) then
        edtMesAno.SetFocus
    Else
    Begin
         M_DTTEST := '01/'+Copy(edtMesAno.Text,1,2)+'/'+Copy(edtMesAno.Text,3,4);
         try
             If (M_DTTEST <> '01/13/'+Copy(edtMesAno.Text,3,4)) Then
             begin
                  StrtoDate(M_DTTEST);
                  M_DATA := StrtoDate(M_DTTEST);
                  M_DTTEST := DatetoStr(M_DATA);
             End;
             edtMesAno.Text := Copy(M_DTTEST,4,2)+Copy(M_DTTEST,7,4);
         Except
              on EConvertError do
              begin
                  ShowMessage ('Referencia da folha com formato incorreto!');
                  edtMesAno.Clear;
                  edtMesAno.SetFocus;
                  Exit;
              End;
         End;
    End;
end;

procedure TfrmRelatorio.edtEmpresaKeyPress(Sender: TObject; var Key: Char);
begin
     If not( key in['0'..'9',#8, #13] ) then
         key := #0;

      if (key = #13) and uFuncoes.Empty(edtEmpresa.Text) Then
        begin
             Key := #0;
             spLocEmpresaClick(Sender);
        End;
end;

procedure TfrmRelatorio.FormShow(Sender: TObject);
begin
    lbl_Funcionario.Caption := '';
end;

procedure TfrmRelatorio.FOLHA(M_CDEMPR: Integer);
Var
    M_MESFOL, M_ANOFOL : String;
begin
     //
     With dmFolha2.qryConsulta do
      begin
           SQL.Clear;
           Close;
           SQL.Add('Select EMP_CODIGO, EMP_FOLHA from EMPRESAS');
           SQL.Add('Where (EMP_CODIGO = :pCODIGO)');
           Params.ParamByName('pCODIGO').AsInteger := M_CDEMPR;
           Open;
           //
           If not (IsEmpty) Then
            begin
                 If uFuncoes.Empty(FieldByName('EMP_FOLHA').AsString) Then
                 begin
                      //edtMesAno.ReadOnly := False;
                      edtMesAno.SetFocus;
                 End
                 Else
                 begin
                      M_MESFOL := Copy(FieldByName('EMP_FOLHA').AsString,1,2);
                      M_ANOFOL := Copy(FieldByName('EMP_FOLHA').AsString,3,4);
                      If (StrtoInt(M_MESFOL)+1 > 13) Then
                       begin
                            M_MESFOL := '01';
                            M_ANOFOL := uFuncoes.StrZero(InttoStr(StrtoInt(M_ANOFOL)+1),4);
                       End
                       Else
                            M_MESFOL := uFuncoes.StrZero(InttoStr(StrtoInt(M_MESFOL)),2);
                       //
                       edtMesAno.Text := M_MESFOL+M_ANOFOL;
                      //
                      //edtMesAno.ReadOnly := True;
                 End;
            End;   // fim - do - se
      End;  // fim-with
end;

procedure TfrmRelatorio.BtImprimirClick(Sender: TObject);
begin
      If uFuncoes.Empty(edtMesAno.Text) then
      begin
           edtMesAno.SetFocus;
           Exit;
      End;
      //
      If uFuncoes.Empty(edtEmpresa.Text) then
      begin
           edtEmpresa.SetFocus;
           Exit;
      End;
end;

end.
