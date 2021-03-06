unit uPrincFolha;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ToolWin, ImgList, Menus, ExtCtrls, StdCtrls, Buttons,
  jpeg;

type
  TfrmPrincFolha = class(TForm)
    StatusBar1: TStatusBar;
    MainMenu1: TMainMenu;
    mnuCadastro: TMenuItem;
    mnuFuncionariostem: TMenuItem;
    N1: TMenuItem;
    mnuSair: TMenuItem;
    mnuSobre: TMenuItem;
    ImageList1: TImageList;
    imgLogon: TImage;
    mnuAjudaItem: TMenuItem;
    Panel1: TPanel;
    spFuncionario: TSpeedButton;
    mnuUtilitatios: TMenuItem;
    mnuTabelasItem: TMenuItem;
    mnuCidadesSubItem: TMenuItem;
    mnuCategoriasItem: TMenuItem;
    mnuEmpresasItem: TMenuItem;
    mnuBairrosItem: TMenuItem;
    spEmpresa: TSpeedButton;
    mnuDescontosBeneficioItem: TMenuItem;
    spDescBene: TSpeedButton;
    spSair: TSpeedButton;
    Movimento1: TMenuItem;
    mnuGeraFolhaItem: TMenuItem;
    ValeAdiantamento1: TMenuItem;
    mnuLancBeneficios: TMenuItem;
    mnuCBOSubItem: TMenuItem;
    mnuPrevidenciaSubItem: TMenuItem;
    mnuImpostodeRendaSubItem: TMenuItem;
    mnuSalarioFamiliaSubItem: TMenuItem;
    Relatrios1: TMenuItem;
    ImpressodeFolha1: TMenuItem;
    N2: TMenuItem;
    mnuHorasExtrasItem: TMenuItem;
    mnuFaltasItem: TMenuItem;
    mnuRelaodeFuncionariosItem: TMenuItem;
    N3: TMenuItem;
    mnuFeriasItem: TMenuItem;
    mnuEscolaridadeSubItem: TMenuItem;
    Relatorio11: TMenuItem;
    mnuRelacaodeCaixaItem: TMenuItem;
    RelaodeCaixa21: TMenuItem;
    mnuSumarioFolhaItem: TMenuItem;
    mnuReciboPagamentoItem: TMenuItem;
    mnuRelProvIAPASItem: TMenuItem;
    mnuImportraItem: TMenuItem;
    N4: TMenuItem;
    mnuPontoItem: TMenuItem;
    mnuFeriadosSubItem: TMenuItem;
    N5: TMenuItem;
    mnuEspCartPontoItem: TMenuItem;
    mnuControleHoraExtraItem: TMenuItem;
    mnuRelaodeFaltasItem: TMenuItem;
    mnuUsuariosItem: TMenuItem;
    mnuCadUsuarios: TMenuItem;
    procedure mnuSairClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure mnuFuncionariostemClick(Sender: TObject);
    procedure mnuFecharTodasItemClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure mnuCidadesSubItemClick(Sender: TObject);
    procedure mnuCategoriasItemClick(Sender: TObject);
    procedure mnuEmpresasItemClick(Sender: TObject);
    procedure mnuBairrosItemClick(Sender: TObject);
    procedure mnuDescontosBeneficioItemClick(Sender: TObject);
    procedure mnuAjudaItemClick(Sender: TObject);
    procedure mnuCBOSubItemClick(Sender: TObject);
    procedure ValeAdiantamento1Click(Sender: TObject);
    procedure mnuLancBeneficiosClick(Sender: TObject);
    procedure mnuGeraFolhaItemClick(Sender: TObject);
    procedure mnuPrevidenciaSubItemClick(Sender: TObject);
    procedure mnuImpostodeRendaSubItemClick(Sender: TObject);
    procedure mnuSalarioFamiliaSubItemClick(Sender: TObject);
    procedure ImpressodeFolha1Click(Sender: TObject);
    procedure mnuHorasExtrasItemClick(Sender: TObject);
    procedure mnuFaltasItemClick(Sender: TObject);
    procedure mnuRelaodeFuncionariosItemClick(Sender: TObject);
    procedure mnuFeriasItemClick(Sender: TObject);
    procedure mnuEscolaridadeSubItemClick(Sender: TObject);
    procedure Relatorio11Click(Sender: TObject);
    procedure mnuRelacaodeCaixaItemClick(Sender: TObject);
    procedure RelaodeCaixa21Click(Sender: TObject);
    procedure mnuSumarioFolhaItemClick(Sender: TObject);
    procedure mnuReciboPagamentoItemClick(Sender: TObject);
    procedure mnuRelProvIAPASItemClick(Sender: TObject);
    procedure mnuImportraItemClick(Sender: TObject);
    procedure mnuPontoItemClick(Sender: TObject);
    procedure mnuFeriadosSubItemClick(Sender: TObject);
    procedure mnuEspCartPontoItemClick(Sender: TObject);
    procedure mnuControleHoraExtraItemClick(Sender: TObject);
    procedure mnuRelaodeFaltasItemClick(Sender: TObject);
    procedure mnuCadUsuariosClick(Sender: TObject);
  private
    { Private declarations }
    procedure IMAGEM_LOGO;
    procedure SetJustify(Menu: TMenu; MenuItem: TMenuItem; Justify: Byte);   
  public
    Function ExisteForm(pForm:TForm):boolean;
    
    { Public declarations }
  end;

Const
      M_USERMASTER = '000';
      M_SNMASTER   = 'ADMG2';
      
var
  frmPrincFolha   : TfrmPrincFolha;
  JanelaAtiva:String;
  M_FLLOGI : Boolean;
  M_CDUSUA, M_NMUSUA, M_NMEMPR, M_FLSUPE, M_SNATUA : String;
  M_FLMAST : Integer;  

implementation

uses uFrmCadFuncionarios, uFrmCadCidades, uFrmCadCategorias,
  uFrmCadEmpresas, uFrmCadBairros, uFrmCadDescBene, uSobre,
  uFrmCadLancamentos, uFrmCadCOB, uFrmLancamentosBeneficios,
  uFrmGerarFolha, uFrmCadPrevidencia, uFrmCadImpostoRenda,
  uFrmCadSalarioFamilia, uFrmRelFolha, uFrmCadHorasExtras, uFrmCadFaltas,
  uFrmRelFuncionarios, uFrmCadFerias, ufrmCadEscolaridade,
  uFrmRelProventoIapas, uFrmReciboPagamento, uFrmImportarDados,
  uFrmAutenticarFunc, uFrmCadFeriados, uFrmRelEspelhoCartaoPonto,
  uFrmRelContHoraExtras, uFrmRelFaltas, uFrmRelEspCartaoPonto,
  uFrmCadUsuarios, uLogon, uFuncoes;

const
     ScreenWidth: LongInt = 800; {I designed my form in 800x600 mode.}
     ScreenHeight: LongInt = 600;

{$R *.dfm}

{ TForm1 }

function TfrmPrincFolha.ExisteForm(pForm: TForm): boolean;
Var
    I:integer;
begin
    ExisteForm := False;
    For I:= 0 to Screen.FormCount -1 do
        If Screen.Forms[I] = pForm Then
        begin
            ExisteForm := True;
            Break;
        End;
end;

procedure TfrmPrincFolha.mnuSairClick(Sender: TObject);
begin
     If Application.MessageBox('Sair do Sistema?',
         'ATEN��O', MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2+MB_APPLMODAL) = idYes then
          Application.Terminate;
end;

procedure TfrmPrincFolha.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  If Application.MessageBox('Sair do Sistema?',
     'ATEN��O', MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2+MB_APPLMODAL) = idNo then
        Canclose := False;
end;

procedure TfrmPrincFolha.FormCreate(Sender: TObject);
begin
      scaled := true;
      if (screen.width <> ScreenWidth) then
      begin
            height := longint(height) * longint(screen.height) DIV ScreenHeight;
            width := longint(width) * longint(screen.width) DIV ScreenWidth;
            scaleBy(screen.width, ScreenWidth);
      end;
      //
     M_CDUSUA := '001';
     M_NMUSUA := 'INFOG2';
     //
     SetJustify(MainMenu1,mnuSobre,1);
     ShortDateFormat := 'dd/mm/yyyy';
     //
end;

procedure TfrmPrincFolha.mnuFuncionariostemClick(Sender: TObject);
begin
    mnuFecharTodasItemClick(Sender);
    //
    Application.CreateForm(TfrmCadFuncionarios, frmCadFuncionarios);
    Try
        frmCadFuncionarios.ShowModal;
    Finally
        frmCadFuncionarios.Release;
        frmCadFuncionarios := nil;
    End;
end;

procedure TfrmPrincFolha.mnuFecharTodasItemClick(Sender: TObject);
//Fechar todas as janelas abertas.
var
  I: Integer;
begin
  with frmPrincFolha do
    for I := MDIChildCount-1 downto 0 do
      MDIChildren[I].Close;
end;

procedure TfrmPrincFolha.IMAGEM_LOGO;
begin
    //imgLogon.Picture.LoadFromFile(ExtractFilePath( Application.ExeName )+dmInfoPremio.tbParametros.FieldByName('PAR_NMARQUIVO').AsString);
    If FileExists(ExtractFilePath( Application.ExeName )+'\logo.jpg') Then
        imgLogon.Picture.LoadFromFile(ExtractFilePath( Application.ExeName )+'\logo.jpg');
end;

procedure TfrmPrincFolha.FormShow(Sender: TObject);
begin
    imgLogon.Left := (frmPrincFolha.Width Div 2) - (imgLogon.Width Div 2);
    imgLogon.Top  := (frmPrincFolha.Height Div 2) - (imgLogon.Height Div 2 + StatusBar1.Height);
    IMAGEM_LOGO;
    //
     If (M_FLLOGI = False) Then
     begin
         Try
             Application.CreateForm(TfrmLogon, frmLogon);
             frmLogon.ShowModal;
         Finally
             frmLogon.Free;
         End;
     End;
     // Barra de status
     StatusBar1.Panels[0].Text := uFuncoes.StrZero(M_CDUSUA,3) + ' - '+ M_NMUSUA;
     //StatusBar1.Panels[1].Text := uDm.CAMINHO;
    //M_CDUSUA := '1';
end;

procedure TfrmPrincFolha.FormResize(Sender: TObject);
begin
     imgLogon.Left := (frmPrincFolha.Width Div 2) - (imgLogon.Width Div 2);
     imgLogon.Top  := (frmPrincFolha.Height Div 2) - (imgLogon.Height Div 2 + StatusBar1.Height);
end;

procedure TfrmPrincFolha.mnuCidadesSubItemClick(Sender: TObject);
begin
    mnuFecharTodasItemClick(Sender);
    //
    Application.CreateForm(TfrmCadCidades, frmCadCidades);
    Try
        frmCadCidades.ShowModal;
    Finally
        frmCadCidades.Release;
        frmCadCidades := nil;
    End;
end;

procedure TfrmPrincFolha.mnuCategoriasItemClick(Sender: TObject);
begin
    mnuFecharTodasItemClick(Sender);
    //
    Application.CreateForm(TfrmCadCategorias, frmCadCategorias);
    Try
        frmCadCategorias.ShowModal;
    Finally
        frmCadCategorias.Release;
        frmCadCategorias := nil;
    End;
end;

procedure TfrmPrincFolha.mnuEmpresasItemClick(Sender: TObject);
begin
    mnuFecharTodasItemClick(Sender);
    //
    Application.CreateForm(TfrmCadEmpresas, frmCadEmpresas);
    Try
        frmCadEmpresas.ShowModal;
    Finally
        frmCadEmpresas.Release;
        frmCadEmpresas := nil;
    End;
end;

procedure TfrmPrincFolha.mnuBairrosItemClick(Sender: TObject);
begin
    mnuFecharTodasItemClick(Sender);
    //
    Application.CreateForm(TfrmCadBairros, frmCadBairros);
    Try
        frmCadBairros.ShowModal;
    Finally
        frmCadBairros.Release;
        frmCadBairros := nil;
    End;
end;

procedure TfrmPrincFolha.mnuDescontosBeneficioItemClick(Sender: TObject);
begin
    mnuFecharTodasItemClick(Sender);
    //
    Application.CreateForm(TfrmCadDescBene, frmCadDescBene);
    Try
        frmCadDescBene.ShowModal;
    Finally
        frmCadDescBene.Release;
        frmCadDescBene := nil;
    End;
end;

procedure TfrmPrincFolha.mnuAjudaItemClick(Sender: TObject);
begin
    mnuFecharTodasItemClick(Sender);
    //
    Application.CreateForm(TfrmSobre, frmSobre);
    Try
        frmSobre.ShowModal;
    Finally
        frmSobre.Release;
        frmSobre := nil;
    End;
end;

procedure TfrmPrincFolha.mnuCBOSubItemClick(Sender: TObject);
begin
    mnuFecharTodasItemClick(Sender);
    //
    Application.CreateForm(TfrmCadCBO, frmCadCBO);
    Try
        frmCadCBO.ShowModal;
    Finally
        frmCadCBO.Release;
        frmCadCBO := nil;
    End;
end;

procedure TfrmPrincFolha.ValeAdiantamento1Click(Sender: TObject);
begin
    mnuFecharTodasItemClick(Sender);
    //
    Application.CreateForm(TfrmCadLancamentos, frmCadLancamentos);
    Try
        frmCadLancamentos.ShowModal;
    Finally
        frmCadLancamentos.Release;
        frmCadLancamentos := nil;
    End;
end;

procedure TfrmPrincFolha.mnuLancBeneficiosClick(Sender: TObject);
begin
    mnuFecharTodasItemClick(Sender);
    //
    Application.CreateForm(TfrmCadLancBeneficios, frmCadLancBeneficios);
    Try
        frmCadLancBeneficios.ShowModal;
    Finally
        frmCadLancBeneficios.Release;
        frmCadLancBeneficios := nil;
    End;
end;

procedure TfrmPrincFolha.mnuGeraFolhaItemClick(Sender: TObject);
begin
    mnuFecharTodasItemClick(Sender);
    //
    Application.CreateForm(TfrmGerarFolha, frmGerarFolha);
    Try
        frmGerarFolha.ShowModal;
    Finally
        frmGerarFolha.Release;
        frmGerarFolha := nil;
    End;
end;

procedure TfrmPrincFolha.mnuPrevidenciaSubItemClick(Sender: TObject);
begin
    mnuFecharTodasItemClick(Sender);
    //
    Application.CreateForm(TfrmCadPrevidencia, frmCadPrevidencia);
    Try
        frmCadPrevidencia.ShowModal;
    Finally
        frmCadPrevidencia.Release;
        frmCadPrevidencia := nil;
    End;
end;

procedure TfrmPrincFolha.mnuImpostodeRendaSubItemClick(Sender: TObject);
begin
    mnuFecharTodasItemClick(Sender);
    //
    Application.CreateForm(TfrmCadImpostoRenda, frmCadImpostoRenda);
    Try
        frmCadImpostoRenda.ShowModal;
    Finally
        frmCadImpostoRenda.Release;
        frmCadImpostoRenda := nil;
    End;
end;

procedure TfrmPrincFolha.mnuSalarioFamiliaSubItemClick(Sender: TObject);
begin
    mnuFecharTodasItemClick(Sender);
    //
    Application.CreateForm(TfrmCadSalarioFamilia, frmCadSalarioFamilia);
    Try
        frmCadSalarioFamilia.ShowModal;
    Finally
        frmCadSalarioFamilia.Release;
        frmCadSalarioFamilia := nil;
    End;
end;

procedure TfrmPrincFolha.ImpressodeFolha1Click(Sender: TObject);
begin
    mnuFecharTodasItemClick(Sender);
    //
    Application.CreateForm(TfrmRelFolhaPag, frmRelFolhaPag);
    Try
        uFrmRelFolha.M_NRFORM := 1;
        frmRelFolhaPag.ShowModal;
    Finally
        frmRelFolhaPag.Release;
        frmRelFolhaPag := nil;
    End;
end;

procedure TfrmPrincFolha.mnuHorasExtrasItemClick(Sender: TObject);
begin
    mnuFecharTodasItemClick(Sender);
    //
    Application.CreateForm(TfrmCadHorasExtras, frmCadHorasExtras);
    Try
        frmCadHorasExtras.ShowModal;
    Finally
        frmCadHorasExtras.Release;
        frmCadHorasExtras := nil;
    End;
end;

procedure TfrmPrincFolha.mnuFaltasItemClick(Sender: TObject);
begin
    mnuFecharTodasItemClick(Sender);
    //
    Application.CreateForm(TfrmCadFaltas, frmCadFaltas);
    Try
        frmCadFaltas.ShowModal;
    Finally
        frmCadFaltas.Release;
        frmCadFaltas := nil;
    End;
end;

procedure TfrmPrincFolha.mnuRelaodeFuncionariosItemClick(Sender: TObject);
begin
    mnuFecharTodasItemClick(Sender);
    //
    Application.CreateForm(TfrmRelFuncionarios, frmRelFuncionarios);
    Try
        uFrmRelFuncionarios.M_NRFORM := 1;
        frmRelFuncionarios.Caption := 'Rela��o de Funcion�rios';
        frmRelFuncionarios.ShowModal;
    Finally
        frmRelFuncionarios.Release;
        frmRelFuncionarios := nil;
    End;
end;

procedure TfrmPrincFolha.mnuFeriasItemClick(Sender: TObject);
begin
    mnuFecharTodasItemClick(Sender);
    //
    Application.CreateForm(TfrmCadFerias, frmCadFerias);
    Try
        frmCadFerias.ShowModal;
    Finally
        frmCadFerias.Release;
        frmCadFerias := nil;
    End;
end;

procedure TfrmPrincFolha.mnuEscolaridadeSubItemClick(Sender: TObject);
begin
    mnuFecharTodasItemClick(Sender);
    //
    Application.CreateForm(TfrmCadEscolaridade, frmCadEscolaridade);
    Try
        frmCadEscolaridade.ShowModal;
    Finally
        frmCadEscolaridade.Release;
        frmCadEscolaridade := nil;
    End;
end;

procedure TfrmPrincFolha.Relatorio11Click(Sender: TObject);
begin
    mnuFecharTodasItemClick(Sender);
    //
    Application.CreateForm(TfrmRelFolhaPag, frmRelFolhaPag);
    Try
        uFrmRelFolha.M_NRFORM := 2;
        frmRelFolhaPag.Caption := 'Rela��o Remunera��o/Desconto'; 
        frmRelFolhaPag.ShowModal;
    Finally
        frmRelFolhaPag.Release;
        frmRelFolhaPag := nil;
    End;
end;

procedure TfrmPrincFolha.mnuRelacaodeCaixaItemClick(Sender: TObject);
begin
    mnuFecharTodasItemClick(Sender);
    //
    Application.CreateForm(TfrmRelFuncionarios, frmRelFuncionarios);
    Try
        uFrmRelFuncionarios.M_NRFORM := 2;
        frmRelFuncionarios.Caption := 'Rela��o de Caixa';
        frmRelFuncionarios.ShowModal;
    Finally
        frmRelFuncionarios.Release;
        frmRelFuncionarios := nil;
    End;
end;

procedure TfrmPrincFolha.RelaodeCaixa21Click(Sender: TObject);
begin
    mnuFecharTodasItemClick(Sender);
    //
    Application.CreateForm(TfrmRelFuncionarios, frmRelFuncionarios);
    Try
        uFrmRelFuncionarios.M_NRFORM := 3;
        frmRelFuncionarios.Caption := 'Rela��o de Caixa';
        frmRelFuncionarios.ShowModal;
    Finally
        frmRelFuncionarios.Release;
        frmRelFuncionarios := nil;
    End;
end;

procedure TfrmPrincFolha.mnuSumarioFolhaItemClick(Sender: TObject);
begin
    mnuFecharTodasItemClick(Sender);
    //
    Application.CreateForm(TfrmRelFolhaPag, frmRelFolhaPag);
    Try
        uFrmRelFolha.M_NRFORM := 3;
        frmRelFolhaPag.Caption := 'Relat�rio Sum�rio de Folha';
        frmRelFolhaPag.ShowModal;
    Finally
        frmRelFolhaPag.Release;
        frmRelFolhaPag := nil;
    End;
end;

procedure TfrmPrincFolha.mnuReciboPagamentoItemClick(Sender: TObject);
begin
    mnuFecharTodasItemClick(Sender);
    //
    Application.CreateForm(TfrmRelReciboPaga, frmRelReciboPaga);
    Try
        frmRelReciboPaga.ShowModal;
    Finally
        frmRelReciboPaga.Release;
        frmRelReciboPaga := nil;
    End;
end;

procedure TfrmPrincFolha.mnuRelProvIAPASItemClick(Sender: TObject);
begin
    mnuFecharTodasItemClick(Sender);
    //
    Application.CreateForm(TfrmRelProvIapas, frmRelProvIapas);
    Try 
        frmRelProvIapas.ShowModal;
    Finally
        frmRelProvIapas.Release;
        frmRelProvIapas := nil;
    End;
end;

procedure TfrmPrincFolha.mnuImportraItemClick(Sender: TObject);
begin
    mnuFecharTodasItemClick(Sender);
    //
    Application.CreateForm(TfrmImportar, frmImportar);
    Try
        frmImportar.ShowModal;
    Finally
        frmImportar.Release;
        frmImportar := nil;
    End;
end;

procedure TfrmPrincFolha.mnuPontoItemClick(Sender: TObject);
begin
    mnuFecharTodasItemClick(Sender);
    //
    Application.CreateForm(TfrmAutenticar, frmAutenticar);
    Try
        frmAutenticar.ShowModal;
    Finally
        frmAutenticar.Release;
        frmAutenticar := nil;
    End;
end;

procedure TfrmPrincFolha.mnuFeriadosSubItemClick(Sender: TObject);
begin
    mnuFecharTodasItemClick(Sender);
    //
    Application.CreateForm(TfrmCadFeriados, frmCadFeriados);
    Try
        frmCadFeriados.ShowModal;
    Finally
        frmCadFeriados.Release;
        frmCadFeriados := nil;
    End;
end;

procedure TfrmPrincFolha.SetJustify(Menu: TMenu; MenuItem: TMenuItem;
  Justify: Byte);
var
    ItemInfo: TMenuItemInfo;
    Buffer: array[0..80] of Char;
begin
     ItemInfo.cbSize := SizeOf(TMenuItemInfo);
     ItemInfo.fMask := MIIM_TYPE;
     ItemInfo.dwTypeData := Buffer;
     ItemInfo.cch := SizeOf(Buffer);
     //
     GetMenuItemInfo(Menu.Handle, MenuItem.Command, False, ItemInfo);
     if Justify = 1 then
        ItemInfo.fType := ItemInfo.fType or MFT_RIGHTJUSTIFY;
     SetMenuItemInfo(Menu.Handle, MenuItem.Command, False, ItemInfo);
end;

procedure TfrmPrincFolha.mnuEspCartPontoItemClick(Sender: TObject);
begin
    mnuFecharTodasItemClick(Sender);
    //
    Application.CreateForm(TfrmRelEspCartaoPonto, frmRelEspCartaoPonto);
    Try
        frmRelEspCartaoPonto.ShowModal;
    Finally
        frmRelEspCartaoPonto.Release;
        frmRelEspCartaoPonto := nil;
    End;

{    Application.CreateForm(TfrmEspelhoCartPonto, frmEspelhoCartPonto);
    Try
        frmEspelhoCartPonto.ShowModal;
    Finally
        frmEspelhoCartPonto.Release;
        frmEspelhoCartPonto := nil;
    End;}
end;

procedure TfrmPrincFolha.mnuControleHoraExtraItemClick(Sender: TObject);
begin
    mnuFecharTodasItemClick(Sender);
    //
    Application.CreateForm(TfrmRelControleHoraExtras, frmRelControleHoraExtras);
    Try
        frmRelControleHoraExtras.ShowModal;
    Finally
        frmRelControleHoraExtras.Release;
        frmRelControleHoraExtras := nil;
    End;
end;

procedure TfrmPrincFolha.mnuRelaodeFaltasItemClick(Sender: TObject);
begin
    mnuFecharTodasItemClick(Sender);
    //
    Application.CreateForm(TfrmRelFaltas, frmRelFaltas);
    Try
        frmRelFaltas.ShowModal;
    Finally
        frmRelFaltas.Release;
        frmRelFaltas := nil;
    End;
end;

procedure TfrmPrincFolha.mnuCadUsuariosClick(Sender: TObject);
begin
    mnuFecharTodasItemClick(Sender);
    //
    Application.CreateForm(TfrmCadUsuarios, frmCadUsuarios);
    Try
        frmCadUsuarios.ShowModal;
    Finally
        frmCadUsuarios.Release;
        frmCadUsuarios := nil;
    End;
end;

end.
