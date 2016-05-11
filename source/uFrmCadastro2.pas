unit uFrmCadastro2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, Grids, DBGrids;

type
  TfrmCadastro2 = class(TForm)
    Panel4: TPanel;
    Panel1: TPanel;
    Panel5: TPanel;
    BtAdicionar: TBitBtn;
    BtExcluir: TBitBtn;
    BtCancelar: TBitBtn;
    BtGravar: TBitBtn;
    BtSair: TBitBtn;
    procedure BtSairClick(Sender: TObject);
  private
    { Private declarations }

  public
    { Public declarations }
  end;

var
  frmCadastro2: TfrmCadastro2;

implementation

{$R *.dfm}

procedure TfrmCadastro2.BtSairClick(Sender: TObject);
begin
     Close;
end;


end.
