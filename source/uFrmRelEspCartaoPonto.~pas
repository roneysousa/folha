unit uFrmRelEspCartaoPonto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmRelatorio2, FMTBcd, DB, DBClient, Provider, SqlExpr, ppDB,
  ppDBPipe, ppBands, ppClass, ppVar, ppStrtch, ppMemo, ppCtrls, ppPrnabl,
  ppCache, ppComm, ppRelatv, ppProd, ppReport, StdCtrls, Buttons, Mask,
  ExtCtrls;

type
  TfrmRelEspCartaoPonto = class(TfrmRelatorio2)
    ppReport1: TppReport;
    ppHeaderBand1: TppHeaderBand;
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
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppLine6: TppLine;
    ppLine7: TppLine;
    ppLine8: TppLine;
    ppLine9: TppLine;
    ppMemo1: TppMemo;
    txtHorarios: TppMemo;
    ppDetailBand1: TppDetailBand;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppLine3: TppLine;
    ppLine4: TppLine;
    ppLine5: TppLine;
    ppLine10: TppLine;
    ppDBText3: TppDBText;
    ppFooterBand1: TppFooterBand;
    ppLine15: TppLine;
    ppLabel9: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppLabel10: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    ppSummaryBand1: TppSummaryBand;
    ppLine16: TppLine;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppDBPEspelhoCartao: TppDBPipeline;
    dstEspelho: TSQLDataSet;
    dstEspelhoPNT_FUNCIONARIO: TIntegerField;
    dstEspelhoFUN_NOME: TStringField;
    dstEspelhoCBO_DESCRICAO: TStringField;
    dstEspelhoPNT_DATAENTRADA: TDateField;
    dstEspelhoPNT_DATASAIDA: TDateField;
    dstEspelhoPNT_HORAENTRADA: TStringField;
    dstEspelhoPNT_HORASAIDA: TStringField;
    dstEspelhoPNT_FLPRESENCA: TStringField;
    dspEspelho: TDataSetProvider;
    cdsEspelho: TClientDataSet;
    cdsEspelhoPNT_FUNCIONARIO: TIntegerField;
    cdsEspelhoFUN_NOME: TStringField;
    cdsEspelhoCBO_DESCRICAO: TStringField;
    cdsEspelhoPNT_DATAENTRADA: TDateField;
    cdsEspelhoPNT_DATASAIDA: TDateField;
    cdsEspelhoPNT_HORAENTRADA: TStringField;
    cdsEspelhoPNT_HORASAIDA: TStringField;
    cdsEspelhoPNT_SITUACAO: TStringField;
    cdsEspelhoPNT_QTHORAS: TStringField;
    cdsEspelhoPNT_DIA: TStringField;
    cdsEspelhoPNT_FLPRESENCA: TStringField;
    dsEspelho: TDataSource;
    ppImage1: TppImage;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    txtMesRef: TppLabel;
    procedure cdsEspelhoCalcFields(DataSet: TDataSet);
    procedure BtImprimirClick(Sender: TObject);
  private
    { Private declarations }
    procedure HORARIOS_FUNC(W_NRMATR : Integer);    
  public
    { Public declarations }
  end;

var
  frmRelEspCartaoPonto: TfrmRelEspCartaoPonto;

implementation

uses udmFolha2, uFuncoes;

{$R *.dfm}

procedure TfrmRelEspCartaoPonto.cdsEspelhoCalcFields(DataSet: TDataSet);
begin
  inherited;
     cdsEspelhoPNT_DIA.AsString := Copy(cdsEspelhoPNT_DATAENTRADA.AsString,1,2);
     //
     If not(cdsEspelhoPNT_HORAENTRADA.IsNull)
        and not (cdsEspelhoPNT_HORASAIDA.IsNull)
        and (cdsEspelhoPNT_FLPRESENCA.AsString = 'S') Then
           cdsEspelhoPNT_QTHORAS.AsString :=
                         uFuncoes.DifHora(cdsEspelhoPNT_HORAENTRADA.AsString,
                                          cdsEspelhoPNT_HORASAIDA.AsString)
        Else
           cdsEspelhoPNT_QTHORAS.AsString := '0';
     //
     cdsEspelhoPNT_SITUACAO.AsString :=
       dmFolha2.SITUACAO_FUNC(cdsEspelhoPNT_FUNCIONARIO.AsInteger,
                      StrtoInt(uFuncoes.DiadaSemana(cdsEspelhoPNT_DATAENTRADA.AsString)),
                      cdsEspelhoPNT_HORAENTRADA.AsString,
                      cdsEspelhoPNT_HORASAIDA.AsString,
                      cdsEspelhoPNT_FLPRESENCA.AsString);
end;

procedure TfrmRelEspCartaoPonto.BtImprimirClick(Sender: TObject);
Var
    M_QTHORA : Double;
    M_DTINIC, M_DTFINA : TDate;
    M_DIA : String;
begin
  inherited;
     If uFuncoes.Empty(edtNRMATR.Text) Then
       Begin
           Application.MessageBox('Digite a matricula do funcionário.','ATENÇÃO',
               MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
           edtNRMATR.SetFocus;
           Exit;
       End;


     BtImprimir.Enabled := False;
     Try
         //
         M_DTINIC := StrtoDate('01/'+Copy(edtMesAno.Text,1,2)+'/'+Copy(edtMesAno.Text,3,4));
         M_DIA := IntToStr(uFuncoes.DiasPorMes(StrtoInt(Copy(edtMesAno.Text,3,4)), StrtoInt(Copy(edtMesAno.Text,1,2))));
         M_DTFINA := StrtoDate(M_DIA+'/'+Copy(edtMesAno.Text,1,2)+'/'+Copy(edtMesAno.Text,3,4));
         //
          With cdsEspelho do
            begin
                 Close;
                 Params.ParamByName('pFUNCIONARIO').AsInteger := StrtoInt(edtNRMATR.Text);
                 Params.ParamByName('pDTINICIAL').AsDate      := M_DTINIC;
                 Params.ParamByName('pDTFINAL').AsDate        := M_DTFINA;
                 Params.ParamByName('pFLSITU1').AsString      := 'S';
                 Params.ParamByName('pFLSITU2').AsString      := 'N';
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
                             If FileExists(ExtractFilePath( Application.ExeName )+'\logo.jpg') Then
                                 ppImage1.Picture.LoadFromFile(ExtractFilePath( Application.ExeName )+'\logo.jpg');
                             //
                             HORARIOS_FUNC(StrtoInt(edtNRMATR.Text));
                             //
                             txtMesRef.Caption := Copy(edtMesAno.Text,1,2)+'/'+
                                                  Copy(edtMesAno.Text,3,4);
                             //
                             PrintReport;
                        End;
                  End
                  Else
                      Application.MessageBox('Não há registros no período indicado.','ATENÇÃO',
                          MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
            End;
     Finally
          BtImprimir.Enabled := True;
     End;
end;

procedure TfrmRelEspCartaoPonto.HORARIOS_FUNC(W_NRMATR: Integer);
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
