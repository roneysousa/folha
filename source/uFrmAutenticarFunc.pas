unit uFrmAutenticarFunc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, Math;

type
  TfrmAutenticar = class(TForm)
    Panel2: TPanel;
    Panel3: TPanel;
    edtMatricula: TEdit;
    Label1: TLabel;
    btnFechar: TBitBtn;
    Timer1: TTimer;
    Panel4: TPanel;
    Label4: TLabel;
    stxHoraInicio: TStaticText;
    Label5: TLabel;
    stxHoraSaida: TStaticText;
    Label3: TLabel;
    lbl_Funcao: TLabel;
    Label2: TLabel;
    lbl_NMFUNC: TLabel;
    imgFotoFunc: TImage;
    Panel1: TPanel;
    txtHora: TStaticText;
    Panel5: TPanel;
    stxData: TStaticText;
    procedure FormShow(Sender: TObject);
    procedure edtMatriculaExit(Sender: TObject);
    procedure edtMatriculaKeyPress(Sender: TObject; var Key: Char);
    procedure btnFecharClick(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormPaint(Sender: TObject);
  private
    { Private declarations }
    Hora: TDateTime;
    CentroX, CentroY: integer;
    procedure DesenharMostrador;
    procedure DesenharPonteiros(const Hora: TDateTime; const Apagar: boolean);
    procedure LIMPAR;
    procedure ENTRADA(M_NRMATR : Integer; M_DTENTR : TDate);
    procedure SAIDA(M_NRMATR : Integer; M_DTENTR, M_DTSAID : TDate);
    function Verificar_Entrada(M_NRMATR : Integer; M_DTENTR : TDate) : boolean;
    function Verificar_DataHora(M_DTATUA : TDate; M_HOATUA : String) : boolean;
    function Verificar_DiaSemana(M_NRMATR, M_DIASEM : Integer) : boolean;
  public
    { Public declarations }
  end;

var
  frmAutenticar: TfrmAutenticar;
  M_FLATUA : Boolean;

implementation

uses udmFolha2, udmFolha, uFuncoes, DB, DBClient, SqlExpr;

const
    ScreenWidth: LongInt = 800; {I designed my form in 800x600 mode.}
    ScreenHeight: LongInt = 600;

{$R *.dfm}

const
  { Comprimento (em pixels) do raio da circunfer�ncia e
    dos ponteiros do rel�gio }
  CompRaio = 100;
  CompSegundo = 90;
  CompMinuto = 80;
  CompHora = 60;

  { Espessura (em pixels) da circunfer�ncia e dos ponteiros do rel�gio }
  EspCirc = 2;
  EspMarca = 1;
  EspSegundo = 1;
  EspMinuto = 3;
  EspHora = 5;

  { Cores }
  CorFundo = clWhite;
  CorCirc = clBlack;
  CorMarca1 = clRed;
  CorMarca2 = clYellow;
  CorSegundo = clRed;
  CorMinuto = clBlue;
  CorHora = clNavy;

procedure TfrmAutenticar.FormShow(Sender: TObject);
begin
     lbl_NMFUNC.Caption   := '';
     lbl_Funcao.Caption   := '';
     stxHoraInicio.Caption := '00:00:00';
     stxHoraSaida.Caption  := '00:00:00';
     stxData.Caption := DatetoStr(Date());
end;

procedure TfrmAutenticar.edtMatriculaExit(Sender: TObject);
Var
   W_DIASEM : Integer;
begin
    imgFotoFunc.Visible := False;
    //
    if not uFuncoes.Empty(edtMatricula.Text) Then
     begin
      if (dmFolha2.LOCALIZAR_FUNC(StrtoInt(edtMatricula.Text)) ) Then
        begin
             lbl_NMFUNC.Caption   := udmFolha2.aNome;
             // dmFolha2.qryLocCliente.FieldByName('FUN_NOME').AsString;
             lbl_Funcao.Caption   := udmFolha2.aDescCBO;
             //dmFolha2.qryLocCliente.FieldByName('CBO_DESCRICAO').AsString;
             //
             dmFolha.cdsFuncionarios.Close;
             dmFolha.cdsFuncionarios.Params.ParamByName('pMATRICULA').AsInteger  := StrtoInt(edtMatricula.Text);
             dmFolha.cdsFuncionarios.Open;
             //
             If not (dmFolha.cdsFuncionarios.FieldByName('FUN_FOTO').IsNull) Then
              begin
                  dmFolha.ObtemImagemDoBanco(imgFotoFunc);
                  imgFotoFunc.Visible := True;
              End;
              //
              edtMatricula.Text := uFuncoes.StrZero(edtMatricula.Text,7);
            //
            W_DIASEM := StrtoInt(uFuncoes.DiadaSemana(DatetoStr(Date)));
            //
            If not (Verificar_DiaSemana(StrtoInt(edtMatricula.Text), W_DIASEM)) Then
            begin
                Application.MessageBox(PChar('O Funcion�rio n�o t�m horario cadastro na '+uFuncoes.DiadaSemanaExtenso(DatetoStr(Date))) ,'ATEN��O',
                    MB_OK+MB_ICONEXCLAMATION+MB_APPLMODAL);
                LIMPAR;
                edtMatricula.SetFocus;
                Exit;
            End;
            //
            If (Verificar_DataHora(Date(), timetoStr(Time))) Then
            begin
              If (dmFolha.VerificarFalta(StrtoInt(edtMatricula.Text), Date)  ) Then
                  raise Exception.Create('H� um registro de falta para funcion�rio na data atual.');
              //
              If not (Verificar_Entrada(StrtoInt(edtMatricula.Text),Date())) Then
              begin
                M_FLATUA := Verificar_Entrada(StrtoInt(edtMatricula.Text),Date());
                //
                If Application.MessageBox('Confirma a sa�da?',
                  'ATEN��O', MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2+MB_APPLMODAL) = idYes then
                        SAIDA(StrtoInt(edtMatricula.Text),Date(), Date())
                  else
                  begin
                       LIMPAR;
                       Exit;
                  End;
              End
              Else
                If Application.MessageBox('Confirma a entrada?',
                  'ATEN��O', MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2+MB_APPLMODAL) = idYes then
                        ENTRADA(StrtoInt(edtMatricula.Text),Date())
                  else
                  begin
                       LIMPAR;
                       Exit;
                  End;
            End
            Else
            begin
               Application.MessageBox('Data ou hora inv�lidos.','ATEN��O',
                   MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
               LIMPAR;
               edtMatricula.SetFocus;
               Exit;
            End;
        End
        Else
        begin
             Application.MessageBox('Funcion�rio n�o cadastro.','ATEN��O',
                  MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
             edtMatricula.SetFocus;
             Exit;
        End;
     End;
end;

procedure TfrmAutenticar.edtMatriculaKeyPress(Sender: TObject;
  var Key: Char);
begin
    If not( key in['0'..'9',#8, #13] ) then
        key :=#0;
   //
    if (key = #13) and
      Not uFuncoes.Empty(edtMatricula.Text) Then
      begin
           key :=#0;
           btnFechar.SetFocus;
      End;
end;

procedure TfrmAutenticar.btnFecharClick(Sender: TObject);
begin
      Close;
end;

procedure TfrmAutenticar.DesenharMostrador;
var
  Angulo, X, Y: Extended;
  P: TPoint;
  I, J: integer;
begin
  with Canvas do begin
    { Define cor do fundo }
    Brush.Color := CorFundo;

    { Define cor e espessura da caneta (linha) }
    Pen.Color := CorCirc;
    Pen.Width := EspCirc;

    { Desenha o c�rculo que define o mostrador }
    Ellipse(CentroX - CompRaio, CentroY - CompRaio,
      CentroX + CompRaio, CentroY + CompRaio);

    { Desenha as doze marcas das horas }
    Pen.Width := EspMarca;

    for I := 1 to 12 do
    begin
      { Se for 3, 6, 9 ou 12 horas... }
      if I mod 3 = 0 then
      begin
        J := 3;
        Brush.Color := CorMarca1;
      end else begin
        J := 2;
        Brush.Color := CorMarca2;
      end;

      { Calcula a posi��o da marca }
      Angulo := DegToRad(90 - 360 * I / 12);
      X := Cos(Angulo);
      Y := Sin(Angulo);
      P.x := CentroX + Trunc(CompRaio * X);
      P.y := CentroY - Trunc(CompRaio * Y);

      { Desenha  a marca na posi��o calculada }
      Ellipse(P.x - J, P.y - J, P.x + J, P.y + J);
    end;
  end;
end;

procedure TfrmAutenticar.DesenharPonteiros(const Hora: TDateTime;
  const Apagar: boolean);
var
  H, M, S, MSeg: Word;
  A, Angulo, X, Y: Extended;
  P: TPoint;
begin
  { Decodifica a hora }
  DecodeTime(Hora, H, M, S, MSeg);

  with Canvas do begin
    { Desenha o ponteiro das horas }
    Pen.Width := EspHora;
    if Apagar then
      Pen.Color := CorFundo
    else
      Pen.Color := CorHora;

    A := H mod 12 + M / 60 + S / 3600;
    Angulo := DegToRad(90 - 360 * A / 12);
    X := Cos(Angulo);
    Y := Sin(Angulo);
    P.x := CentroX + Trunc(X * CompHora);
    P.y := CentroY - Trunc(Y * CompHora);

    MoveTo(CentroX, CentroY);
    LineTo(P.x, P.y);

    { Desnha o ponteiro dos minutos }
    Pen.Width := EspMinuto;
    if Apagar then
      Pen.Color := CorFundo
    else
      Pen.Color := CorMinuto;

    A := M + S / 60;
    Angulo := DegToRad(90 - 360 * A / 60);
    X := Cos(Angulo);
    Y := Sin(Angulo);
    P.x := CentroX + Trunc(X * CompMinuto);
    P.y := CentroY - Trunc(Y * CompMinuto);

    MoveTo(CentroX, CentroY);
    LineTo(P.x, P.y);

    { Desnha o ponteiro dos segundos }
    Pen.Width := EspSegundo;
    if Apagar then
      Pen.Color := CorFundo
    else
      Pen.Color := CorSegundo;

    A := S;
    Angulo := DegToRad(90 - 360 * A / 60);
    X := Cos(Angulo);
    Y := Sin(Angulo);
    P.x := CentroX + Trunc(X * CompSegundo);
    P.y := CentroY - Trunc(Y * CompSegundo);

    MoveTo(CentroX, CentroY);
    LineTo(P.x, P.y);
  end;
end;

procedure TfrmAutenticar.Timer1Timer(Sender: TObject);
begin
  { Apaga os ponteiros atuais. }
  DesenharPonteiros(Hora, true);

  { Desenha novamente os ponteiros }
  Hora := Time;
  DesenharPonteiros(Hora, false);
  //
  txtHora.Caption := TimetoStr(Time);
end;

procedure TfrmAutenticar.FormCreate(Sender: TObject);
begin
     scaled := true;
     if (screen.width <> ScreenWidth) then
     begin
          height := longint(height) * longint(screen.height) DIV ScreenHeight;
          width := longint(width) * longint(screen.width) DIV ScreenWidth;
          scaleBy(screen.width, ScreenWidth);
     end;
     //
     CentroX := 120; //ClientWidth div 2;
     CentroY := 150; //ClientHeight div 2;
end;

procedure TfrmAutenticar.FormPaint(Sender: TObject);
begin
  DesenharMostrador;
  Hora := Time;
  DesenharPonteiros(Hora, false);
end;

procedure TfrmAutenticar.LIMPAR;
begin
     lbl_NMFUNC.Caption := '';
     lbl_Funcao.Caption := '';
     stxHoraInicio.Caption := '00:00:00';
     stxHoraSaida.Caption  := '00:00:00';
     //
     imgFotoFunc.Visible := False;
     edtMatricula.Clear;
     edtMatricula.SetFocus;
end;

procedure TfrmAutenticar.ENTRADA(M_NRMATR: Integer;M_DTENTR : TDate);
Var
   M_HOENTR : String;
begin
     try
          M_HOENTR := TimetoStr(Time());
          With dmFolha.cdsPonto do
            begin
                 Close;
                 Params.ParamByName('pFUNCIONARIO').AsInteger := M_NRMATR;
                 Params.ParamByName('pDATAENTRADA').AsDate    := M_DTENTR;
                 Open;
                 //
                 Append;
                 FieldByName('PNT_FUNCIONARIO').AsInteger  := M_NRMATR;
                 FieldByName('PNT_DATAENTRADA').AsDateTime := M_DTENTR;
                 FieldByName('PNT_HORAENTRADA').AsString   := M_HOENTR;
                 Post;
                 ApplyUpdates(0);
                 //
                 Close;
            End;
            //
            dmFolha.cdsConfig.Edit;
            dmFolha.cdsConfigCFG_DTVALIDACAO.AsDateTime := M_DTENTR;
            dmFolha.cdsConfigCFG_HOVALIDACAO.AsString   := M_HOENTR;
            dmFolha.cdsConfig.ApplyUpdates(0);
            //
            Application.MessageBox('Registro inclu�do com sucesso.','ATEN��O',
                   MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
            LIMPAR;
     Except
          on Exc:Exception do
            begin
               Application.MessageBox(PChar('Error ao tentar gravar registro.'+#13
                      + Exc.Message),
                      'ATEN��O', MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
            End;
     End;
end;

function TfrmAutenticar.Verificar_Entrada(M_NRMATR: Integer;
  M_DTENTR: TDate): boolean;
Var
    qryAux : TSQLQuery;
begin
     qryAux := TSQLQuery.Create(nil);
     With qryAux do  // dmFolha2.qryConsulta
      try
           SQLConnection := dmFolha.sqlCon_Folha;
           Close;
           SQL.Add('Select PNT_FUNCIONARIO, PNT_DATAENTRADA, PNT_DATASAIDA, PNT_HORAENTRADA, PNT_HORASAIDA from PONTO');
           SQL.Add('Where (PNT_FUNCIONARIO = :pFUNCIONARIO) AND (PNT_DATAENTRADA = :pDATAENTRADA) ');
           SQL.Add('AND (PNT_DATASAIDA is Null)');
           Params.ParamByName('pFUNCIONARIO').AsInteger := M_NRMATR;
           Params.ParamByName('pDATAENTRADA').AsDate    := M_DTENTR;
           Open;
           If not (IsEmpty) Then
           begin
               result := false;
               stxHoraInicio.Caption := FieldByName('PNT_HORAENTRADA').AsString;
               stxHoraSaida.Caption  := TimetoStr(Time());
               //stxHoraSaida.Caption  := Copy(TimetoStr(Time()),1,5);
           End
           else
           begin
               result := True;
               stxHoraInicio.Caption := TimetoStr(Time());
               //stxHoraInicio.Caption := Copy(TimetoStr(Time()),1,5);
               //stxHoraSaida.Caption  := TimetoStr(Time());
           End;
      Finally
           Free;
      End;
end;

procedure TfrmAutenticar.SAIDA(M_NRMATR: Integer; M_DTENTR,
  M_DTSAID: TDate);
Var
   M_HOENTR : String;
begin
     try
          M_HOENTR := TimetoStr(Time());
          With dmFolha.cdsPonto do
            begin
                 Close;
                 Params.ParamByName('pFUNCIONARIO').AsInteger := M_NRMATR;
                 Params.ParamByName('pDATAENTRADA').AsDate    := M_DTENTR;
                 Open;
                 //
                 if (Locate('PNT_DATASAIDA', null ,[])) Then
                 begin
                      Edit;
                      FieldByName('PNT_DATASAIDA').AsDateTime := M_DTSAID;
                      FieldByName('PNT_HORASAIDA').AsString   := M_HOENTR;
                      FieldByName('PNT_FLPRESENCA').AsString  := 'S';
                      Post;
                      ApplyUpdates(0);
                 End;
                 //
                 Close;
            End;
            //
            dmFolha.cdsConfig.Edit;
            dmFolha.cdsConfigCFG_DTVALIDACAO.AsDateTime := M_DTENTR;
            dmFolha.cdsConfigCFG_HOVALIDACAO.AsString   := M_HOENTR;
            dmFolha.cdsConfig.ApplyUpdates(0);
            //
            Application.MessageBox('Registro inclu�do com sucesso.','ATEN��O',
                   MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
            LIMPAR;
     Except
          on Exc:Exception do
            begin
               Application.MessageBox(PChar('Error ao tentar gravar registro.'+#13
                      + Exc.Message),
                      'ATEN��O', MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
            End;
     End;
end;

function TfrmAutenticar.Verificar_DataHora(M_DTATUA: TDate;
  M_HOATUA: String): boolean;
begin
     dmFolha.parametros;
     If (M_DTATUA > dmFolha.cdsConfigCFG_DTVALIDACAO.AsDateTime)
       and (M_HOATUA < dmFolha.cdsConfigCFG_HOVALIDACAO.AsString) Then
       begin
            Result := true;
            exit;
       end;
    //
    if (M_DTATUA >= dmFolha.cdsConfigCFG_DTVALIDACAO.AsDateTime)
       and (M_HOATUA >= dmFolha.cdsConfigCFG_HOVALIDACAO.AsString) Then
       begin
            Result := true;
            exit;
       end;
    //
     Result := False;
end;

function TfrmAutenticar.Verificar_DiaSemana(M_NRMATR,
  M_DIASEM: Integer): boolean;
Var
    qryAux : TSQLQuery;
begin
     qryAux := TSQLQuery.Create(nil);
     With qryAux do  // dmFolha2.qryConsulta
      try
           SQLConnection := dmFolha.sqlCon_Folha;
           Close;
           SQL.Add('Select HRA_DIASEMANA, HRA_FUNCIONARIO from HORARIOS');
           SQL.Add('Where (HRA_FUNCIONARIO = :pFUNCIONARIO) AND (HRA_DIASEMANA = :pDIASEMANA) ');
           Params.ParamByName('pFUNCIONARIO').AsInteger := M_NRMATR;
           Params.ParamByName('pDIASEMANA').AsInteger := M_DIASEM;
           Open;
           If (IsEmpty) Then
               result := false
           else
               result := True;
      Finally
          Free;     
      End;
end;

end.
