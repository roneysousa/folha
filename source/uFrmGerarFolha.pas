unit uFrmGerarFolha;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, Mask, ToolEdit, DBXpress, FMTBcd,
  DB, DBClient, Provider, SqlExpr, BmsXPProgressBar, ComCtrls;

type
  TfrmGerarFolha = class(TForm)
    Panel4: TPanel;
    Panel5: TPanel;
    BtGravar: TBitBtn;
    BtSair: TBitBtn;
    dstFuncionarios: TSQLDataSet;
    dspFuncionarios: TDataSetProvider;
    cdsFuncionarios: TClientDataSet;
    cdsFuncionariosFUN_MATRICULA: TIntegerField;
    cdsFuncionariosFUN_NOME: TStringField;
    cdsFuncionariosFUN_VALETRANS: TStringField;
    cdsFuncionariosFUN_SALARIO: TFMTBCDField;
    cdsFuncionariosFUN_CPF: TStringField;
    cdsFuncionariosFUN_RECISAO: TDateField;
    cdsFuncionariosFUN_QTFILHOS: TIntegerField;
    cdsFuncionariosFUN_EMPRESA: TIntegerField;
    cdsFuncionariosFUN_DTINICIO_FERIAS: TDateField;
    cdsFuncionariosFUN_DTFIM_FERIAS: TDateField;
    cdsFuncionariosFUN_HORAS_TRABALHO: TBCDField;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    spLocalizar: TSpeedButton;
    lbl_Funcionario: TLabel;
    lblPercentual: TLabel;
    edtMesAno: TMaskEdit;
    rbgFecharFolha: TRadioGroup;
    edtDTPAGA: TDateEdit;
    edtEmpresa: TEdit;
    BmsXPProgressBar1: TBmsXPProgressBar;
    Label4: TLabel;
    edtEmpresa2: TEdit;
    spLocalizar2: TSpeedButton;
    lblEmpresa: TLabel;
    edtMesAno2: TMaskEdit;
    Label6: TLabel;
    rbgFecharFolha2: TRadioGroup;
    Label7: TLabel;
    edtDTPAGA2: TDateEdit;
    procedure BtSairClick(Sender: TObject);
    procedure edtDTPAGAExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BtCancelarClick(Sender: TObject);
    procedure BtGravarClick(Sender: TObject);
    procedure edtMesAnoExit(Sender: TObject);
    procedure edtMesAnoKeyPress(Sender: TObject; var Key: Char);
    procedure edtEmpresaKeyPress(Sender: TObject; var Key: Char);
    procedure edtEmpresaChange(Sender: TObject);
    procedure spLocalizarClick(Sender: TObject);
    procedure edtEmpresaExit(Sender: TObject);
    procedure edtDTPAGA2Exit(Sender: TObject);
    procedure edtEmpresa2Change(Sender: TObject);
    procedure edtEmpresa2Exit(Sender: TObject);
    procedure edtEmpresa2KeyPress(Sender: TObject; var Key: Char);
    procedure spLocalizar2Click(Sender: TObject);
  private
    { Private declarations }
    procedure REC_FOLHA;
    procedure FOLHA(M_CDEMPR : INTEGER);
  public
    { Public declarations }
  end;

var
  frmGerarFolha: TfrmGerarFolha;
  M_CDFUNC, M_CDBENE, M_DESBEN, M_CDEMPR : Integer;
  M_CDFOLH, M_NMFUNC, M_VALES, M_CPFCGC, M_NMBENE, M_NMDESC, M_HOGERA, M_FLFIXO : String;
  M_VLSALA, M_VLRECE, M_VLBENE, M_PEBENE, M_QTBENE : Double;
  M_DTGERA : TDate;

implementation

uses uFuncoes, uPrincFolha, udmFolha, udmFolha2, uFrmLocEmpresa;

{$R *.dfm}

procedure TfrmGerarFolha.BtSairClick(Sender: TObject);
begin
     Close;
end;

procedure TfrmGerarFolha.edtDTPAGAExit(Sender: TObject);
begin
    If (edtDTPAGA.Text <> '  /  /    ') Then
    begin
        try
              StrToDate(edtDTPAGA.Text);
              edtDTPAGA.Date := StrToDate(edtDTPAGA.Text);
        except
              on EConvertError do
              begin
                  ShowMessage ('Data Inválida!');
                  edtDTPAGA.Date := Date();
                  edtDTPAGA.SetFocus;
                  Exit;
              End;
        end;
    End;
end;

procedure TfrmGerarFolha.FormShow(Sender: TObject);
begin
     dmFolha.parametros;
     PageControl1.ActivePageIndex := 0;
     lbl_Funcionario.Caption := '';
     lblEmpresa.Caption := '';
     edtDTPAGA.Date  := Date();
     edtDTPAGA2.Date := Date();
     //
     edtMesAno.ReadOnly := False;
     edtEmpresa.SetFocus;         
end;

procedure TfrmGerarFolha.BtCancelarClick(Sender: TObject);
begin
     Close;
end;

procedure TfrmGerarFolha.BtGravarClick(Sender: TObject);
var
  RESP, aFechar : String;
begin
   If (PageControl1.ActivePageIndex = 0) Then
   begin
     If uFuncoes.Empty(edtEmpresa.Text) Then
       Begin
           Application.MessageBox('Digite o código da empresa.','ATENÇÃO',
               MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
           edtEmpresa.SetFocus;
           Exit;
       End;
     //
     If (rbgFecharFolha.ItemIndex = 0) Then
     begin
         If Application.MessageBox('Confirma geração da folha?',
           'ATENÇÃO', MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2+MB_APPLMODAL) = idYes then
              RESP := 'S'
         Else
             Exit;
     End
     ELSE
     Begin
         If Application.MessageBox('Confirma geração de folha provisoria?',
           'ATENÇÃO', MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON1+MB_APPLMODAL) = idYes then
              RESP := 'S'
         Else
             Exit;
     End;
     //
     If (rbgFecharFolha.ItemIndex = 0) Then
         aFechar := 'S'
     Else
         aFechar := 'N';
     //
     If (RESP = 'S') Then
     begin
           If (dmFolha.GerarFolha(StrToInt(edtEmpresa.Text), edtDTPAGA.Date, edtMesAno.Text,  aFechar ) ) Then
            begin
                 Application.MessageBox('Folha gerada.','Concluído',
                     MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
                 Close;
             End;
     End;
   End;
   //
   If (PageControl1.ActivePageIndex = 1) Then
    begin
         {Application.MessageBox('Modulo não concluido.',
           'ATENÇÃO', MB_OK+MB_ICONINFORMATION+MB_APPLMODAL)}
         If uFuncoes.Empty(edtEmpresa2.Text) Then
            Begin
                Application.MessageBox('Digite o código da empresa.','ATENÇÃO',
                    MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
                edtEmpresa2.SetFocus;
                Exit;
            End;
          //
          If (rbgFecharFolha2.ItemIndex = 0) Then
          begin
              If Application.MessageBox('Confirma geração da folha?',
                'ATENÇÃO', MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2+MB_APPLMODAL) = idYes then
                   RESP := 'S'
              Else
                  Exit;
          End
          ELSE
          Begin
              If Application.MessageBox('Confirma geração de folha provisoria?',
                'ATENÇÃO', MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON1+MB_APPLMODAL) = idYes then
                   RESP := 'S'
              Else
                  Exit;
          End;
          //
          If (rbgFecharFolha.ItemIndex = 0) Then
              aFechar := 'S'
          Else
              aFechar := 'N';
          //
          If (RESP = 'S') Then
          begin
                If (dmFolha.GerarFolha13(StrToInt(edtEmpresa2.Text), edtDTPAGA2.Date, edtMesAno2.Text,  aFechar ) ) Then
                 begin
                      Application.MessageBox('Folha 13º gerada.','Concluído',
                          MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
                      Close;
                  End;
          End;
    End;  // fim-se 13º
end;

procedure TfrmGerarFolha.REC_FOLHA;
begin
     With dmFolha.spIncDadosFolha do
      begin
           Close;
           //
           Params.ParamByName('PCODIGO').AsString      := M_CDFOLH;
           Params.ParamByName('PMATRICULA').AsInteger  := M_CDFUNC;
           Params.ParamByName('PBENEFICIO').AsInteger  := M_CDBENE;
           Params.ParamByName('PQTBENEFICIO').AsFloat  := M_QTBENE;
           Params.ParamByName('PVLBENEFICIO').AsFloat  := M_VLBENE;
           Params.ParamByName('PPEBENEFICIO').AsFloat  := M_PEBENE;
           Params.ParamByName('PNMBENEFICIO').AsString := M_NMBENE;
           Params.ParamByName('PNMDESCRICAO').AsString := M_NMDESC;
           Params.ParamByName('PDESBEN').AsString      := InttoStr(M_DESBEN);
           Params.ParamByName('PDTGERACAO').AsDate     := M_DTGERA;
           Params.ParamByName('PHOGERACAO').AsString   := M_HOGERA;
           Params.ParamByName('PUSUARIO').AsInteger    := StrtoInt(uPrincFolha.M_CDUSUA);
           Params.ParamByName('pEMPRESA').AsInteger    := StrtoInt(edtEmpresa.Text);
           //
           ExecProc();
      End;
end;

procedure TfrmGerarFolha.edtMesAnoExit(Sender: TObject);
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
             // 
             StrtoDate(M_DTTEST);
             M_DATA := StrtoDate(M_DTTEST);
             M_DTTEST := DatetoStr(M_DATA);
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

procedure TfrmGerarFolha.edtMesAnoKeyPress(Sender: TObject; var Key: Char);
begin
     If (key = #27) Then
      begin
           Key := #0;
           edtEmpresa.SetFocus;
           Exit;
      End;
end;

procedure TfrmGerarFolha.edtEmpresaKeyPress(Sender: TObject;
  var Key: Char);
begin
     If not( key in['0'..'9',#8, #13] ) then
         key := #0;
     //
      if (key = #13) and uFuncoes.Empty(edtEmpresa.Text) Then
        begin
             Key := #0;
             spLocalizarClick(Sender);
        End;
end;

procedure TfrmGerarFolha.edtEmpresaChange(Sender: TObject);
begin
     If uFuncoes.Empty(edtEmpresa.Text) then
      begin
           lbl_Funcionario.Caption := '';
           edtMesAno.Clear;
      End;
end;

procedure TfrmGerarFolha.spLocalizarClick(Sender: TObject);
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

procedure TfrmGerarFolha.edtEmpresaExit(Sender: TObject);
begin
     If not uFuncoes.Empty(edtEmpresa.Text) Then
         If (uFuncoes.ValidarLoja(StrtoInt(edtEmpresa.Text))) Then
            begin
                 edtEmpresa.Text := uFuncoes.StrZero(edtEmpresa.Text,3);
                 lbl_Funcionario.Caption := dmFolha.GetNomeEmpresa(StrtoInt(edtEmpresa.Text));
                 //dmFolha2.qryConsulta.FieldByName('EMP_FANTASIA').AsString;
                 //
                 FOLHA(StrtoInt(edtEmpresa.Text));
            End
            Else
            begin
                 Application.MessageBox('Registro de empresa inexistente.','ATENÇÃO',
                     MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
                 //
                 lbl_Funcionario.Caption := '';
                 edtEmpresa.Clear;
                 edtEmpresa.SetFocus;
                 Exit;
            End;
end;

procedure TfrmGerarFolha.FOLHA(M_CDEMPR: INTEGER);
Var
    M_MESFOL, M_ANOFOL : String;
    qraux : TSQLquery;
    texto : string;
begin
  //
  texto  := 'Select EMP_CODIGO, EMP_FOLHA from EMPRESAS ';
  texto  := texto  + 'Where (EMP_CODIGO = :pCODIGO)';
  //
  QrAux := TSqlquery.Create(nil);
  with QrAux do
   try
       SQLConnection := dmFolha.sqlCon_Folha;
       sql.Add(texto);
       Params.ParamByName('pCODIGO').AsInteger := M_CDEMPR;
       Open;
       //
       If not (IsEmpty) Then
        begin
             If uFuncoes.Empty(FieldByName('EMP_FOLHA').AsString) Then
               begin
                      edtMesAno.ReadOnly := False;
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
                            M_MESFOL := uFuncoes.StrZero(InttoStr(StrtoInt(M_MESFOL)+1),2);
                       //
                       If (PageControl1.ActivePageIndex = 0) Then
                           edtMesAno.Text := M_MESFOL+M_ANOFOL
                       Else
                           edtMesAno2.Text := '13'+Copy(DatetoStr(Date),7,4);
                      //
                      edtMesAno.ReadOnly := True;
                      If (PageControl1.ActivePageIndex = 0) Then
                          edtDTPAGA.SetFocus
                      Else
                          edtDTPAGA2.SetFocus;
               End;
        End;   // fim - do - se
   finally
      free;
   end;
end;

procedure TfrmGerarFolha.edtDTPAGA2Exit(Sender: TObject);
begin
    If (edtDTPAGA2.Text <> '  /  /    ') Then
    begin
        try
              StrToDate(edtDTPAGA2.Text);
              edtDTPAGA2.Date := StrToDate(edtDTPAGA2.Text);
        except
              on EConvertError do
              begin
                  ShowMessage ('Data Inválida!');
                  edtDTPAGA2.Date := Date();
                  edtDTPAGA2.SetFocus;
                  Exit;
              End;
        end;
    End;
end;

procedure TfrmGerarFolha.edtEmpresa2Change(Sender: TObject);
begin
     If uFuncoes.Empty(edtEmpresa2.Text) then
      begin
           lblEmpresa.Caption := '';
           edtMesAno2.Clear;
      End;
end;

procedure TfrmGerarFolha.edtEmpresa2Exit(Sender: TObject);
begin
     If not uFuncoes.Empty(edtEmpresa2.Text) Then
         If (uFuncoes.ValidarLoja(StrtoInt(edtEmpresa2.Text))) Then
            begin
                 edtEmpresa2.Text := uFuncoes.StrZero(edtEmpresa2.Text,3);
                 lblEmpresa.Caption := dmFolha.GetNomeEmpresa(StrtoInt(edtEmpresa2.Text));
                 //dmFolha2.qryConsulta.FieldByName('EMP_FANTASIA').AsString;
                 //
                 FOLHA(StrtoInt(edtEmpresa2.Text));
            End
            Else
            begin
                 Application.MessageBox('Registro de empresa inexistente.','ATENÇÃO',
                     MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
                 //
                 lblEmpresa.Caption := '';
                 edtEmpresa2.Clear;
                 edtEmpresa2.SetFocus;
                 Exit;
            End;
end;

procedure TfrmGerarFolha.edtEmpresa2KeyPress(Sender: TObject;
  var Key: Char);
begin
     If not( key in['0'..'9',#8, #13] ) then
         key := #0;
     //
      if (key = #13) and uFuncoes.Empty(edtEmpresa.Text) Then
        begin
             Key := #0;
             spLocalizar2Click(Sender);
        End;
end;

procedure TfrmGerarFolha.spLocalizar2Click(Sender: TObject);
begin
    Application.CreateForm(TfrmLocalizarEmpresa, frmLocalizarEmpresa);
    Try
        frmLocalizarEmpresa.ShowModal;
    Finally
        M_CDEMPR := frmLocalizarEmpresa.cdsConsultar.FieldByname('EMP_CODIGO').AsInteger;
        edtEmpresa2.Text := inttoStr(M_CDEMPR);
        //
        frmLocalizarEmpresa.Release;
        frmLocalizarEmpresa := nil;
    End;
end;

End.
