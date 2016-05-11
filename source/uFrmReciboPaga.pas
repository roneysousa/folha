unit uFrmReciboPaga;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QuickRpt, ExtCtrls, QRCtrls;

type
  TfrmReciboPagamento = class(TForm)
    qrReciboPagamento: TQuickRep;
    DetailBand1: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    ColumnHeaderBand1: TQRBand;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmReciboPagamento: TfrmReciboPagamento;

implementation

uses uFrmRelFolha;

{$R *.dfm}

end.
