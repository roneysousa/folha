unit uFrmRelFaltas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmRelatorio2, StdCtrls, Buttons, Mask, ExtCtrls, FMTBcd, DB,
  SqlExpr, DBClient, Provider, ppDB, ppDBPipe, ppComm, ppRelatv, ppProd,
  ppClass, ppReport, ppCtrls, ppPrnabl, ppBands, ppCache, ppVar;

type
  TfrmRelFaltas = class(TfrmRelatorio2)
    dstFaltas: TSQLDataSet;
    dspFaltas: TDataSetProvider;
    cdsFaltas: TClientDataSet;
    dsFaltas: TDataSource;
    ppReport1: TppReport;
    ppDBPipeline1: TppDBPipeline;
    cdsFaltasFUN_MATRICULA: TIntegerField;
    cdsFaltasFAL_DTMOVI: TDateField;
    cdsFaltasFAL_JUSTIFICATIVA: TMemoField;
    cdsFaltasFAL_FOLHA: TStringField;
    dstFaltasFUN_MATRICULA: TIntegerField;
    dstFaltasFAL_DTMOVI: TDateField;
    dstFaltasFAL_JUSTIFICATIVA: TMemoField;
    dstFaltasFAL_FOLHA: TStringField;
    dstFaltasFUN_NOME: TStringField;
    cdsFaltasFUN_NOME: TStringField;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppDBText1: TppDBText;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppLine1: TppLine;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    ppSystemVariable1: TppSystemVariable;
    ppLine2: TppLine;
    ppLine3: TppLine;
    ppImage1: TppImage;
    ppLabel11: TppLabel;
    txtMesref: TppLabel;
    procedure BtImprimirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelFaltas: TfrmRelFaltas;

implementation

uses udmFolha, uFuncoes;

{$R *.dfm}

procedure TfrmRelFaltas.BtImprimirClick(Sender: TObject);
Var
    M_DTINIC, M_DTFINA : TDate;
    M_DIA : String;
begin
  inherited;
      If uFuncoes.Empty(edtNRMATR.Text) then
      begin
           edtNRMATR.SetFocus;
           Exit;
      End;
     //
      If uFuncoes.Empty(edtMesAno.Text) then
      begin
           edtMesAno.SetFocus;
           Exit;
      End;
      //

     BtImprimir.Enabled := False;
     try
           M_DTINIC := StrtoDate('01/'+Copy(edtMesAno.Text,1,2)+'/'+Copy(edtMesAno.Text,3,4));
           M_DIA := IntToStr(uFuncoes.DiasPorMes(StrtoInt(Copy(edtMesAno.Text,3,4)), StrtoInt(Copy(edtMesAno.Text,1,2))));
           M_DTFINA := StrtoDate(M_DIA+'/'+Copy(edtMesAno.Text,1,2)+'/'+Copy(edtMesAno.Text,3,4));
           //
           With cdsFaltas do
            begin
                 Close;
                 Params.ParamByName('pMATRICULA').AsInteger := StrtoInt(edtNRMATR.Text);
                 Params.ParamByName('pDTINICIAL').AsDate := M_DTINIC;
                 Params.ParamByName('pDTFINAL').AsDate   := M_DTFINA;
                 open;
                 //
                 If not (IsEmpty) Then
                  begin
                        //
                       with ppReport1 do
                        begin
                             If FileExists(ExtractFilePath( Application.ExeName )+'\logo.jpg') Then
                               ppImage1.Picture.LoadFromFile(ExtractFilePath( Application.ExeName )+'\logo.jpg');
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

end.
