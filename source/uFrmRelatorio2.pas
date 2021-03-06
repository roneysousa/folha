unit uFrmRelatorio2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask, ExtCtrls;

type
  TfrmRelatorio2 = class(TForm)
    Panel4: TPanel;
    Panel1: TPanel;
    Label1: TLabel;
    Label3: TLabel;
    spLocEmpresa: TSpeedButton;
    lbl_Funcionario: TLabel;
    edtMesAno: TMaskEdit;
    edtNRMATR: TEdit;
    Panel5: TPanel;
    BtImprimir: TBitBtn;
    BtSair: TBitBtn;
    procedure spLocEmpresaClick(Sender: TObject);
    procedure edtMesAnoExit(Sender: TObject);
    procedure BtSairClick(Sender: TObject);
    procedure edtNRMATRExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edtNRMATRChange(Sender: TObject);
    procedure edtNRMATRKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelatorio2: TfrmRelatorio2;
  M_NRMATR : Integer;

implementation

uses uFrmLocFunc, uFuncoes, udmFolha;

{$R *.dfm}

procedure TfrmRelatorio2.spLocEmpresaClick(Sender: TObject);
begin
    Application.CreateForm(TfrmLocalizarFuncionario, frmLocalizarFuncionario);
    Try
        frmLocalizarFuncionario.ShowModal;
    Finally
        M_NRMATR := frmLocalizarFuncionario.cdsConsultar.FieldByname('FUN_MATRICULA').AsInteger;
        edtNRMATR.Text := inttoStr(M_NRMATR);
        edtNRMATR.SetFocus; 
        //
        frmLocalizarFuncionario.Release;
        frmLocalizarFuncionario := nil;
    End;
end;

procedure TfrmRelatorio2.edtMesAnoExit(Sender: TObject);
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
                  ShowMessage ('Data incorreta!');
                  edtMesAno.Clear;
                  edtMesAno.SetFocus;
                  Exit;
              End;
         End;
    End;
end;

procedure TfrmRelatorio2.BtSairClick(Sender: TObject);
begin
     Close;
end;

procedure TfrmRelatorio2.edtNRMATRExit(Sender: TObject);
begin
     If not uFuncoes.Empty(edtNRMATR.Text) then
              If (uFuncoes.ValidarMatricula(StrtoInt(edtNRMATR.Text))) Then
            begin
                 edtNRMATR.Text := uFuncoes.StrZero(edtNRMATR.Text,7);
                 lbl_Funcionario.Caption := dmFolha.GetNomeFuncionario(StrtoInt(edtNRMATR.Text));
                 edtMesAno.SetFocus;
            End
            Else
            begin
                 Application.MessageBox('Matricula inexistente.','ATEN��O',
                     MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
                 //
                 lbl_Funcionario.Caption := '';
                 edtNRMATR.Clear;
                 edtNRMATR.SetFocus;
                 Exit;
            End;
end;

procedure TfrmRelatorio2.FormShow(Sender: TObject);
begin
     lbl_Funcionario.Caption := '';
     edtMesAno.Text := Copy(DatetoStr(Date),4,2)+Copy(DatetoStr(Date),7,4);
end;

procedure TfrmRelatorio2.edtNRMATRChange(Sender: TObject);
begin
     If uFuncoes.Empty(edtNRMATR.Text) then
         lbl_Funcionario.Caption := '';
end;

procedure TfrmRelatorio2.edtNRMATRKeyPress(Sender: TObject; var Key: Char);
begin
    If not( key in['0'..'9',#8, #13] ) then
        key:=#0;
    if (key = #13)
     and uFuncoes.Empty(edtNRMATR.Text) Then
      begin
           key:=#0;
           spLocEmpresaClick(Sender);
      End;
end;

end.
