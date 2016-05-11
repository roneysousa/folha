unit uFrmRelEspelhoCartaoPonto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, ppPrnabl, ppClass, ppCtrls,
  ppBands, ppCache, ppComm, ppRelatv, ppProd, ppReport, FMTBcd, DB,
  SqlExpr, ppDB, ppDBPipe, DBClient, Provider, ppStrtch, ppMemo, ppVar;

type
  TfrmEspelhoCartPonto = class(TForm)
    Panel1: TPanel;
    Panel5: TPanel;
    BtImprimir: TBitBtn;
    BtSair: TBitBtn;
    Label1: TLabel;
    edtMatricula: TEdit;
    cmbMeses: TComboBox;
    Label2: TLabel;
    ppReport1: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppDBPEspelhoCartao: TppDBPipeline;
    dstEspelho: TSQLDataSet;
    dspEspelho: TDataSetProvider;
    cdsEspelho: TClientDataSet;
    dsEspelho: TDataSource;
    lbl_Nome: TLabel;
    ppDBText1: TppDBText;
    dstEspelhoPNT_FUNCIONARIO: TIntegerField;
    dstEspelhoFUN_NOME: TStringField;
    dstEspelhoCBO_DESCRICAO: TStringField;
    dstEspelhoPNT_DATAENTRADA: TDateField;
    dstEspelhoPNT_DATASAIDA: TDateField;
    dstEspelhoPNT_HORAENTRADA: TStringField;
    dstEspelhoPNT_HORASAIDA: TStringField;
    cdsEspelhoPNT_FUNCIONARIO: TIntegerField;
    cdsEspelhoFUN_NOME: TStringField;
    cdsEspelhoCBO_DESCRICAO: TStringField;
    cdsEspelhoPNT_DATAENTRADA: TDateField;
    cdsEspelhoPNT_DATASAIDA: TDateField;
    cdsEspelhoPNT_HORAENTRADA: TStringField;
    cdsEspelhoPNT_HORASAIDA: TStringField;
    ppDBText2: TppDBText;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    cdsEspelhoPNT_SITUACAO: TStringField;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    cdsEspelhoPNT_QTHORAS: TStringField;
    ppLine3: TppLine;
    ppLine4: TppLine;
    ppLine5: TppLine;
    ppLine6: TppLine;
    ppLine7: TppLine;
    ppLine8: TppLine;
    ppLine9: TppLine;
    ppLine10: TppLine;
    cdsEspelhoPNT_DIA: TStringField;
    ppMemo1: TppMemo;
    txtHorarios: TppMemo;
    ppSummaryBand1: TppSummaryBand;
    ppLine15: TppLine;
    ppLabel9: TppLabel;
    ppLine16: TppLine;
    ppSystemVariable1: TppSystemVariable;
    ppLabel10: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    dstEspelhoPNT_FLPRESENCA: TStringField;
    cdsEspelhoPNT_FLPRESENCA: TStringField;
    procedure BtSairClick(Sender: TObject);
    procedure edtMatriculaKeyPress(Sender: TObject; var Key: Char);
    procedure BtImprimirClick(Sender: TObject);
    procedure edtMatriculaChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edtMatriculaExit(Sender: TObject);
    procedure cdsEspelhoCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
    procedure HORARIOS_FUNC(W_NRMATR : Integer);
  public
    { Public declarations }
  end;

var
  frmEspelhoCartPonto: TfrmEspelhoCartPonto;

implementation

uses udmFolha, uFuncoes, udmFolha2, DateUtils;

{$R *.dfm}

procedure TfrmEspelhoCartPonto.BtSairClick(Sender: TObject);
begin
      Close;
end;

procedure TfrmEspelhoCartPonto.edtMatriculaKeyPress(Sender: TObject;
  var Key: Char);
begin
     If not( key in['0'..'9',#8, #13] ) then
        key:=#0;
end;

procedure TfrmEspelhoCartPonto.BtImprimirClick(Sender: TObject);
Var
     M_QTHORA : Double;
begin
     If uFuncoes.Empty(edtMatricula.Text) Then
       Begin
           Application.MessageBox('Digite a matricula do funcionário.','ATENÇÃO',
               MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
           edtMatricula.SetFocus;
           Exit;
       End;


     BtImprimir.Enabled := False;
     Try
          With cdsEspelho do
            begin
                 Close;
                 Params.ParamByName('pFUNCIONARIO').AsInteger := StrtoInt(edtMatricula.Text);
                 Open;
                 //
                 If not (IsEmpty) Then
                  begin
                       M_QTHORA := 0;
                       First;
                       While not (Eof) do
                        begin
                             //M_QTHORA := M_QTHORA + uFuncoes
                             //
                             Next;
                        End;
                       //
                       With ppReport1 do
                        begin
                             HORARIOS_FUNC(StrtoInt(edtMatricula.Text));
                             PrintReport;
                        End;
                  End;
            End;
     Finally
          BtImprimir.Enabled := True;
     End;
end;

procedure TfrmEspelhoCartPonto.edtMatriculaChange(Sender: TObject);
begin
      If not uFuncoes.Empty(edtMatricula.Text) then
        BtImprimir.Enabled := True
      Else
      Begin
          BtImprimir.Enabled := False;
          lbl_Nome.Caption := '';
      End;
end;

procedure TfrmEspelhoCartPonto.FormShow(Sender: TObject);
begin
     BtImprimir.Enabled := False;
     lbl_Nome.Caption := '';
end;

procedure TfrmEspelhoCartPonto.edtMatriculaExit(Sender: TObject);
begin
    if not uFuncoes.Empty(edtMatricula.Text) Then
     begin
      if (dmFolha2.LOCALIZAR_FUNC(StrtoInt(edtMatricula.Text)) ) Then
        begin
             lbl_Nome.Caption := dmFolha2.qryLocCliente.FieldByName('FUN_NOME').AsString;
        End
        Else
        begin
             Application.MessageBox('Funcionário não cadastro.','ATENÇÃO',
                  MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
             lbl_Nome.Caption := '';
             edtMatricula.Clear; 
             edtMatricula.SetFocus;
             Exit;
        End;
     End;
end;

procedure TfrmEspelhoCartPonto.cdsEspelhoCalcFields(DataSet: TDataSet);
begin
     cdsEspelhoPNT_DIA.AsString := Copy(cdsEspelhoPNT_DATAENTRADA.AsString,1,2);
     //
     If not(cdsEspelhoPNT_HORAENTRADA.IsNull)
        and not (cdsEspelhoPNT_HORASAIDA.IsNull) Then
           cdsEspelhoPNT_QTHORAS.AsString :=
                         uFuncoes.DifHora(cdsEspelhoPNT_HORAENTRADA.AsString,
                                          cdsEspelhoPNT_HORASAIDA.AsString);
     //
     cdsEspelhoPNT_SITUACAO.AsString :=
       dmFolha2.SITUACAO_FUNC(cdsEspelhoPNT_FUNCIONARIO.AsInteger,
                      StrtoInt(uFuncoes.DiadaSemana(cdsEspelhoPNT_DATAENTRADA.AsString)),
                      cdsEspelhoPNT_HORAENTRADA.AsString,
                      cdsEspelhoPNT_HORASAIDA.AsString,
                      cdsEspelhoPNT_FLPRESENCA.AsString);
end;

procedure TfrmEspelhoCartPonto.HORARIOS_FUNC(W_NRMATR: Integer);
Var
    M_DIA : Integer;
    LINHA : String;
begin
     dmFolha2.cdsConsulta.Close;
     With dmFolha2.dstConsulta do
      begin
           Active := False;
           CommandText := 'Select * from HORARIOS where (HRA_FUNCIONARIO = :pFUNCIONARIO) '+
                          ' order by HRA_DIASEMANA';
           Params.ParamByName('pFUNCIONARIO').AsInteger := W_NRMATR;
           Active := True;
      End;
     dmFolha2.cdsConsulta.FetchParams;
     dmFolha2.cdsConsulta.Open;
     //
     txtHorarios.Clear;
     If not (dmFolha2.cdsConsulta.IsEmpty) Then
      begin
           dmFolha2.cdsConsulta.First;
           While not (dmFolha2.cdsConsulta.Eof) do
            begin
                 M_DIA := dmFolha2.cdsConsulta.FieldByName('HRA_DIASEMANA').AsInteger;
                 LINHA := dmFolha2.cdsConsulta.FieldByName('HRA_ENTRADA').AsString +
                                   ' à '+dmFolha2.cdsConsulta.FieldByName('HRA_SAIDA').AsString;
                 //
                 dmFolha2.cdsConsulta.Next;
                 //
                 If (dmFolha2.cdsConsulta.FieldByName('HRA_DIASEMANA').AsInteger = M_DIA)
                 and not(dmFolha2.cdsConsulta.Eof) Then
                    LINHA := LINHA + '    ' + dmFolha2.cdsConsulta.FieldByName('HRA_ENTRADA').AsString +
                                   ' à '+dmFolha2.cdsConsulta.FieldByName('HRA_SAIDA').AsString;
                 //
                 dmFolha2.cdsConsulta.Next;
                 //
                 txtHorarios.Lines.Add(LINHA);
                 //M_DIA := 0;
            End;
      End;
      dmFolha2.cdsConsulta.Close;
end;

end.
