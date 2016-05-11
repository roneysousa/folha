unit uFrmRelContHoraExtras;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmRelatorio2, StdCtrls, Buttons, Mask, ExtCtrls, FMTBcd, DB,
  SqlExpr, Provider, ppDB, ppDBPipe, ppComm, ppRelatv, ppProd, ppClass,
  ppReport, DBClient, ppVar, ppCtrls, ppPrnabl, ppBands, ppCache;

type
  TfrmRelControleHoraExtras = class(TfrmRelatorio2)
    dstHoraExtras: TSQLDataSet;
    dspHorasExtras: TDataSetProvider;
    cdsHorasExtras: TClientDataSet;
    dsHorasExtras: TDataSource;
    ppReport1: TppReport;
    ppDBPipeline1: TppDBPipeline;
    dstHoraExtrasFUN_MATRICULA: TIntegerField;
    dstHoraExtrasHOR_DTMOVI: TDateField;
    dstHoraExtrasHOR_HOINICIAL: TStringField;
    dstHoraExtrasHOR_HOFINAL: TStringField;
    dstHoraExtrasHOR_FOLHA: TStringField;
    dstHoraExtrasFUN_NOME: TStringField;
    cdsHorasExtrasFUN_MATRICULA: TIntegerField;
    cdsHorasExtrasHOR_DTMOVI: TDateField;
    cdsHorasExtrasHOR_HOINICIAL: TStringField;
    cdsHorasExtrasHOR_HOFINAL: TStringField;
    cdsHorasExtrasHOR_FOLHA: TStringField;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppLine1: TppLine;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppDBText1: TppDBText;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLine2: TppLine;
    ppLine3: TppLine;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    cdsHorasExtrasFUN_NOME: TStringField;
    cdsHorasExtrasHOR_QUANTIDADE: TStringField;
    ppDBText6: TppDBText;
    ppSummaryBand1: TppSummaryBand;
    ppLine4: TppLine;
    txtQuant: TppLabel;
    ppLabel10: TppLabel;
    ppImage1: TppImage;
    ppLabel11: TppLabel;
    txtMesref: TppLabel;
    procedure BtImprimirClick(Sender: TObject);
    procedure cdsHorasExtrasCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelControleHoraExtras: TfrmRelControleHoraExtras;

implementation

uses udmFolha, uFuncoes;

{$R *.dfm}


procedure TfrmRelControleHoraExtras.BtImprimirClick(Sender: TObject);
Var
    M_DTINIC, M_DTFINA : TDate;
    M_DIA : String;
    M_HORA, M_MINUTO :  Integer;
    M_QTHORA : Double;
begin
  inherited;
     BtImprimir.Enabled := False;
     try
           M_DTINIC := StrtoDate('01/'+Copy(edtMesAno.Text,1,2)+'/'+Copy(edtMesAno.Text,3,4));
           M_DIA := IntToStr(uFuncoes.DiasPorMes(StrtoInt(Copy(edtMesAno.Text,3,4)), StrtoInt(Copy(edtMesAno.Text,1,2))));
           M_DTFINA := StrtoDate(M_DIA+'/'+Copy(edtMesAno.Text,1,2)+'/'+Copy(edtMesAno.Text,3,4));
           //
           M_HORA   := 0;
           M_MINUTO := 0;
           M_QTHORA := 0;
           //
           With cdsHorasExtras do
            begin
                 Close;
                 Params.ParamByName('pMATRICULA').AsInteger := StrtoInt(edtNRMATR.Text);
                 Params.ParamByName('pDTINICIAL').AsDate := M_DTINIC;
                 Params.ParamByName('pDTFINAL').AsDate   := M_DTFINA;
                 open;
                 //
                 If not (IsEmpty) Then
                  begin
                       First;
                       While not (Eof) do
                        begin
                             M_HORA   := M_HORA + StrtoInt(Copy(uFuncoes.DifHora(FieldByName('HOR_HOINICIAL').AsString,
                                          FieldByName('HOR_HOFINAL').AsString),1,2));
                             M_MINUTO := M_MINUTO + StrToInt(Copy(uFuncoes.DifHora(FieldByName('HOR_HOINICIAL').AsString,
                                         FieldByName('HOR_HOFINAL').AsString),4,2));
                             //
                             If M_MINUTO >= 60 Then
                               Begin
                                    M_HORA   := M_HORA + 1;
                                    M_MINUTO := 0;
                               end;
                             //
                             next;
                        End;
                        //
                        M_QTHORA := M_HORA + (M_MINUTO/60);
                        //
                       with ppReport1 do
                        begin
                             If FileExists(ExtractFilePath( Application.ExeName )+'\logo.jpg') Then
                               ppImage1.Picture.LoadFromFile(ExtractFilePath( Application.ExeName )+'\logo.jpg');
                             //
                             txtQuant.Caption := FormatFloat('##0.#0',M_QTHORA);
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
                  //
                  Close;
            End;
     Finally
          BtImprimir.Enabled := True;
     End;
end;

procedure TfrmRelControleHoraExtras.cdsHorasExtrasCalcFields(
  DataSet: TDataSet);
begin
  inherited;
      cdsHorasExtrasHOR_QUANTIDADE.AsString :=
           uFuncoes.DifHora(cdsHorasExtrasHOR_HOINICIAL.AsString , cdsHorasExtrasHOR_HOFINAL.AsString );
end;

end.
