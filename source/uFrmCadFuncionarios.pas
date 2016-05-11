unit uFrmCadFuncionarios;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, Buttons, Grids, DBGrids, StdCtrls, ExtCtrls, DB, Mask,
  FMTBcd, ExtDlgs, DBClient, Provider, SqlExpr, DBCtrls, ToolEdit, RXDBCtrl,
  DBTables, JPEG, Camera;

type
  TfrmCadFuncionarios = class(TForm)
    Panel4: TPanel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Panel2: TPanel;
    lblConsultar: TLabel;
    rgConsultar: TRadioGroup;
    edtConsultar: TEdit;
    btnAlterar: TBitBtn;
    grdConsultar: TDBGrid;
    Panel3: TPanel;
    sbProximo: TSpeedButton;
    sbUltimo: TSpeedButton;
    sbAnterior: TSpeedButton;
    sbPrimeiro: TSpeedButton;
    pnlBotoes: TPanel;
    BtAdicionar: TBitBtn;
    BtEditar: TBitBtn;
    BtExcluir: TBitBtn;
    BtPesquisar: TBitBtn;
    BtCancelar: TBitBtn;
    BtGravar: TBitBtn;
    BtSair: TBitBtn;
    StatusBar1: TStatusBar;
    DBText1: TDBText;
    Label1: TLabel;
    Label2: TLabel;
    dbeNMFUNC: TDBEdit;
    dsMatricula: TDataSource;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    Label5: TLabel;
    DBEdit4: TDBEdit;
    Label6: TLabel;
    DBEdit5: TDBEdit;
    Label7: TLabel;
    DBEdit6: TDBEdit;
    Label8: TLabel;
    DBEdit7: TDBEdit;
    Label9: TLabel;
    dbcmbCidade: TDBLookupComboBox;
    Label10: TLabel;
    Label11: TLabel;
    DBEdit9: TDBEdit;
    Label12: TLabel;
    DBEdit10: TDBEdit;
    Label13: TLabel;
    Label14: TLabel;
    DBEdit12: TDBEdit;
    Label15: TLabel;
    DBEdit13: TDBEdit;
    imgFotoFunc: TImage;
    btLocalizar: TBitBtn;
    Label16: TLabel;
    dbeNRCPF: TDBEdit;
    Label17: TLabel;
    dbeNRIDENT: TDBEdit;
    Label18: TLabel;
    DBEdit16: TDBEdit;
    Label19: TLabel;
    Label20: TLabel;
    DBEdit17: TDBEdit;
    Label21: TLabel;
    DBEdit18: TDBEdit;
    Label22: TLabel;
    DBEdit19: TDBEdit;
    Label24: TLabel;
    DBEdit21: TDBEdit;
    Label25: TLabel;
    DBEdit22: TDBEdit;
    Label26: TLabel;
    DBEdit23: TDBEdit;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    dbeVLSALARIO: TDBEdit;
    dbGridFilhos: TDBGrid;
    Label31: TLabel;
    dsFilhos: TDataSource;
    dsConsultar: TDataSource;
    datasetConsultar: TSQLDataSet;
    dspConsultar: TDataSetProvider;
    cdsConsultar: TClientDataSet;
    cdsConsultarFUN_MATRICULA: TIntegerField;
    cdsConsultarFUN_NOME: TStringField;
    Label32: TLabel;
    cmbVLTRANS: TComboBox;
    DBComboBox2: TDBComboBox;
    dbeDTNASC: TDBDateEdit;
    dbeDTADMI: TDBDateEdit;
    OpenPictureDialog1: TOpenPictureDialog;
    dbeRECISAO: TDBDateEdit;
    dbeDTCADA: TDBDateEdit;
    Label23: TLabel;
    dbcmbCategoria: TDBLookupComboBox;
    dbcmbBairro: TDBLookupComboBox;
    Label33: TLabel;
    dbcbxEmpresa: TDBLookupComboBox;
    Label34: TLabel;
    dbeCBO: TDBEdit;
    lbl_CBO: TLabel;
    spLocalizarCBO: TSpeedButton;
    Label35: TLabel;
    dbeQTFilhos: TDBEdit;
    Label36: TLabel;
    dbeHoras: TDBEdit;
    btnCaptura: TButton;
    Label37: TLabel;
    Label38: TLabel;
    DBDateEdit1: TDBDateEdit;
    DBDateEdit2: TDBDateEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    btHorarios: TBitBtn;
    spbCidade: TSpeedButton;
    spbBairro: TSpeedButton;
    procedure BtSairClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtAdicionarClick(Sender: TObject);
    procedure BtGravarClick(Sender: TObject);
    procedure dbeNRCPFExit(Sender: TObject);
    procedure BtEditarClick(Sender: TObject);
    procedure BtExcluirClick(Sender: TObject);
    procedure BtCancelarClick(Sender: TObject);
    procedure BtPesquisarClick(Sender: TObject);
    procedure dbeDTNASCExit(Sender: TObject);
    procedure dbeDTADMIExit(Sender: TObject);
    procedure btLocalizarClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure dsConsultarDataChange(Sender: TObject; Field: TField);
    procedure dsConsultarStateChange(Sender: TObject);
    procedure edtConsultarChange(Sender: TObject);
    procedure edtConsultarKeyPress(Sender: TObject; var Key: Char);
    procedure dbeRECISAOExit(Sender: TObject);
    procedure DBEdit17KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit18KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit19KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit21KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit23KeyPress(Sender: TObject; var Key: Char);
    procedure TabSheet2Show(Sender: TObject);
    procedure TabSheet4Show(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure grdConsultarDblClick(Sender: TObject);
    procedure dbcmbCidadeExit(Sender: TObject);
    procedure rgConsultarClick(Sender: TObject);
    procedure dbGridFilhosKeyPress(Sender: TObject; var Key: Char);
    procedure dbeCBOExit(Sender: TObject);
    procedure dbeCBOChange(Sender: TObject);
    procedure spLocalizarCBOClick(Sender: TObject);
    procedure dbeCBOKeyPress(Sender: TObject; var Key: Char);
    procedure dsMatriculaDataChange(Sender: TObject; Field: TField);
    procedure dbeNRIDENTExit(Sender: TObject);
    procedure btnCapturaClick(Sender: TObject);
    procedure sbPrimeiroClick(Sender: TObject);
    procedure sbAnteriorClick(Sender: TObject);
    procedure sbProximoClick(Sender: TObject);
    procedure sbUltimoClick(Sender: TObject);
    procedure btHorariosClick(Sender: TObject);
    procedure spbCidadeClick(Sender: TObject);
    procedure spbBairroClick(Sender: TObject);
  private
    { Private declarations }
     procedure tratabotoes;
     procedure buscar;
     procedure REGISTRO;
     procedure FOTO_CLIENTE;
     procedure VERIFICAR_DEPENDENTES;
     procedure ValidarCOB(M_CODIGO, M_OPCAO : integer);
     procedure Legenda_COB;
     Procedure CarregaFotoParaBanco(FileName: String);
     Procedure ObtemImagemDoBanco(var imgDestino: TImage);
     procedure Combox_Vales;
  public
    { Public declarations }
  end;

var
  frmCadFuncionarios: TfrmCadFuncionarios;
  M_NRMATR : Integer;
  op : String;

implementation

uses udmFolha, uFuncoes, udmFolha2, uFrmLocCBO, uFrmLocBeneficio,
  CapturaCam, uFrmCadHorarios, uFrmCadCidades, uFrmCadBairros;

{$R *.dfm}

procedure TfrmCadFuncionarios.BtSairClick(Sender: TObject);
begin
       Close;
end;

procedure TfrmCadFuncionarios.FormShow(Sender: TObject);
begin
     lbl_CBO.Caption := '';
     REGISTRO;
     dmFolha.CIDADES;
     dmFolha2.BAIRROS;
     dmFolha2.EMPRESAS;
     dmFolha2.ESCOLARIDADE;
     //
     If (dmFolha.CdsConfigCFG_FUNCIONARIO.AsInteger = 0) Then
          BtAdicionarClick(Sender)
     Else
         FOTO_CLIENTE;
     //
     PageControl1.ActivePageIndex := 0;
end;

procedure TfrmCadFuncionarios.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
      dmFolha.cdsFuncionarios.Close;
      //
      Action := caFree;
end;

procedure TfrmCadFuncionarios.buscar;
begin
     M_NRMATR := cdsConsultar.FieldByName('FUN_MATRICULA').AsInteger;
     //
     dmFolha.cdsFuncionarios.Close;
     dmFolha.cdsFuncionarios.Params.ParamByName('pMATRICULA').AsInteger  := cdsConsultar.FieldByName('FUN_MATRICULA').AsInteger;
     dmFolha.cdsFuncionarios.Open;
     //
     With dmFolha.cdsFilhos do
        begin
             Close;
             Params.ParamByName('pMATRICULA').AsInteger :=
                cdsConsultar.FieldByName('FUN_MATRICULA').AsInteger;
             Open;
        End;
     //
     FOTO_CLIENTE;
end;

procedure TfrmCadFuncionarios.tratabotoes;
begin
   BtAdicionar.Enabled := not BtAdicionar.Enabled;
   BtEditar.Enabled := not BtEditar.Enabled;
   BtExcluir.Enabled := not BtExcluir.Enabled;
   BtPesquisar.Enabled := not BtPesquisar.Enabled;
   BtCancelar.Enabled := not BtCancelar.Enabled;
   BtGravar.Enabled := not BtGravar.Enabled;
   BtSair.Enabled := not BtSair.Enabled;
   btLocalizar.Enabled := not btLocalizar.Enabled;
   btnCaptura.Enabled := not btnCaptura.Enabled;
   cmbVLTRANS.Enabled := not cmbVLTRANS.Enabled;
   spLocalizarCBO.Enabled := not spLocalizarCBO.Enabled;
   btHorarios.Enabled := not btHorarios.Enabled;
   //
   spbCidade.Enabled := not spbCidade.Enabled;
   spbBairro.Enabled := not spbBairro.Enabled;
end;

procedure TfrmCadFuncionarios.BtAdicionarClick(Sender: TObject);
begin
    op := 'I';
    tratabotoes;
    PageControl1.Pages[3].TabVisible := False;
    dmFolha.parametros;
    dmFolha.cdsFuncionarios.Append;
    dmFolha.cdsFuncionarios.FieldByName('FUN_MATRICULA').AsInteger :=
            dmFolha.cdsConfig.FieldByName('CFG_FUNCIONARIO').AsInteger+1;
    dmFolha.cdsFuncionarios.FieldByName('FUN_DATACADASTRO').AsDateTime := Date();
    dmFolha.cdsFuncionarios.FieldByName('FUN_QTFILHOS').AsInteger  := 0; 
    //
    PageControl1.ActivePageIndex := 0;
    imgFotoFunc.Visible := False;
    dbcmbCategoria.SetFocus;
end;

procedure TfrmCadFuncionarios.BtGravarClick(Sender: TObject);
begin
     If uFuncoes.Empty(dbeNMFUNC.Text) Then
       Begin
           Application.MessageBox('Digite o nome do funcionário.','ATENÇÃO',
               MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
           dbeNMFUNC.SetFocus;
           Exit;
       End;
     //
     If uFuncoes.Empty(dbeNRIDENT.Text) Then
       Begin
           Application.MessageBox('Digite o número de identidade.','ATENÇÃO',
               MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
           //
           PageControl1.ActivePageIndex := 1;
           dbeNRIDENT.SetFocus;
           Exit;
       End;
     //
     If uFuncoes.Empty(dbcbxEmpresa.Text) Then
       Begin
           Application.MessageBox('Seleciona a empresa','ATENÇÃO',
               MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
           PageControl1.ActivePageIndex := 1;
           dbcbxEmpresa.SetFocus;
           Exit;
       End;
     //
     If uFuncoes.Empty(dbeCBO.Text) Then
       Begin
           Application.MessageBox('Selecione o CBO do funcionário.','ATENÇÃO',
               MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
           PageControl1.ActivePageIndex := 1;
           dbeCBO.SetFocus;
           Exit;
       End;
     //
     If uFuncoes.Empty(dbeVLSALARIO.Text) Then
       Begin
           Application.MessageBox('Digite o valor do salário.','ATENÇÃO',
               MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
           PageControl1.ActivePageIndex := 1;
           dbeVLSALARIO.SetFocus;
           Exit;
       End;
     //
     If uFuncoes.Empty(dbeHoras.Text) Then
       Begin
           Application.MessageBox('Digite a quantidade de Horas de Trabalho.','ATENÇÃO',
               MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
           PageControl1.ActivePageIndex := 1;
           dbeHoras.SetFocus;
           Exit;
       End;
     //
     try
          tratabotoes;
          //
          if dmFolha.cdsFuncionarios.State in [dsinsert] then
            begin
                 dmFolha.parametros;
                 dmFolha.CdsConfig.Edit;
                 dmFolha.cdsConfig.FieldByName('CFG_FUNCIONARIO').AsInteger :=
                      dmFolha.cdsConfig.FieldByName('CFG_FUNCIONARIO').AsInteger + 1;
                 dmFolha.cdsFuncionarios.FieldByName('FUN_MATRICULA').AsInteger :=
                      dmFolha.cdsConfig.FieldByName('CFG_FUNCIONARIO').AsInteger;
                 dmFolha.CdsConfig.ApplyUpdates(0);
             end;
          //
          If uFuncoes.Empty(dbeQTFilhos.Text ) Then
              dmFolha.cdsFuncionarios.FieldByName('FUN_QTFILHOS').AsInteger  := 0;
          //
          If (cmbVLTRANS.Text = 'SIM') Then
              dmFolha.cdsFuncionarios.FieldByName('FUN_VALETRANS').AsString := 'S'
          Else
              dmFolha.cdsFuncionarios.FieldByName('FUN_VALETRANS').AsString := 'N';
          //
          dmFolha.cdsFuncionarios.ApplyUpdates(0);
          //
          FOTO_CLIENTE;
          Legenda_COB;
          PageControl1.Pages[3].TabVisible := True;
     Except
          on Exc:Exception do
            begin
               Application.MessageBox(PChar('Error ao tentar gravar registro.'+#13
                      + Exc.Message),
                      'ATENÇÃO', MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
               dmFolha.cdsFuncionarios.Cancel;
            End;
     End;
end;

procedure TfrmCadFuncionarios.dbeNRCPFExit(Sender: TObject);
begin
    If (dmFolha.cdsFuncionarios.State in [dsInsert, dsEdit])
     and not uFuncoes.Empty(dbeNRCPF.Text) Then
         Begin
            Try
                If not (uFuncoes.CPF(dbeNRCPF.Text)) Then
                Begin
                    MessageDlg('CPF inválido!!!', mtInformation, [mbOk], 0);
                    dbeNRCPF.Clear;
                    dbeNRCPF.SetFocus;
                    Exit;
                End
                Else
                begin
                     If (dmFolha.cdsFuncionarios.State in [dsInsert]) Then
                      begin
                           If uFuncoes.ValidarCPF(dbeNRCPF.Text) Then
                            begin
                                MessageDlg('CPF já cadastro!!!', mtInformation, [mbOk], 0);
                                dbeNRCPF.Text := '';
                                dbeNRCPF.SetFocus;
                                Exit;
                            End;
                      End;
                End;
            Except
                dbeNRCPF.SetFocus;
                dbeNRCPF.Clear;
            End;
         End;
end;

procedure TfrmCadFuncionarios.BtEditarClick(Sender: TObject);
begin
      op := 'A';
      tratabotoes;
      PageControl1.Pages[3].TabVisible := False;
      dmFolha.cdsFuncionarios.Edit;
      //
      If (PageControl1.ActivePageIndex = 0)
        or (PageControl1.ActivePageIndex = 3) Then
      begin
           PageControl1.ActivePageIndex := 0;
           dbeNMFUNC.SetFocus;
      End;
      If (PageControl1.ActivePageIndex = 1) Then
         dbeNRCPF.SetFocus;
end;

procedure TfrmCadFuncionarios.BtExcluirClick(Sender: TObject);
begin
  if not (dmFolha.cdsFuncionarios.IsEmpty) and
     (dmFolha.cdsFuncionarios.RecordCount > 0) then
   begin
       If Application.MessageBox('Deseja excluir este Funcionário?', 'Exclusão de registro',
                    MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2+MB_APPLMODAL) = ID_YES Then
       Begin
            dmFolha.cdsFuncionarios.Delete;
            dmFolha.cdsFuncionarios.ApplyUpdates(0);
            //
            REGISTRO;
       end
       else
            Application.MessageBox('Não ha registro a ser excluido','ATENÇÃO',
              MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
   End;
end;

procedure TfrmCadFuncionarios.REGISTRO;
begin
     dmFolha.parametros;
     If (dmFolha.CdsConfigCFG_FUNCIONARIO.AsInteger = 0) Then
         dmFolha.cdsFuncionarios.Open
     Else
     Begin
         dmFolha.cdsFuncionarios.Close;
         dmFolha.cdsFuncionarios.Params.ParamByName('pMATRICULA').AsInteger  := dmFolha.mvcodigo('FUN_MATRICULA','FUNCIONARIOS');
         dmFolha.cdsFuncionarios.Open;
         //
     End;
     //
     With dmFolha.cdsFilhos do
      begin
           Close;
           Params.ParamByName('pMATRICULA').AsInteger :=
               dmFolha.mvcodigo('FUN_MATRICULA','FUNCIONARIOS');
           Open;
      End;
     //
     M_NRMATR := dmFolha.mvcodigo('FUN_MATRICULA','FUNCIONARIOS');
     //
     {If (dmFolha.cdsFuncionarios.FieldByName('FUN_VALETRANS').AsString = 'S') Then
         cmbVLTRANS.ItemIndex := 0
     Else
         cmbVLTRANS.ItemIndex := 1;}
     Combox_Vales;
     //
     if not uFuncoes.Empty(dmFolha.cdsFuncionariosFUN_CBO.AsString) Then
        ValidarCOB(dmFolha.cdsFuncionariosFUN_CBO.AsInteger, 2);
end;

procedure TfrmCadFuncionarios.BtCancelarClick(Sender: TObject);
begin
     If (op = 'I') Then
        VERIFICAR_DEPENDENTES;
     tratabotoes;
     PageControl1.Pages[3].TabVisible := True;
     dmFolha.cdsFuncionarios.Cancel;
     //
     FOTO_CLIENTE;
     Legenda_COB;
end;

procedure TfrmCadFuncionarios.BtPesquisarClick(Sender: TObject);
begin
      PageControl1.ActivePageIndex := 3;
      pnlBotoes.Visible := False;
end;

procedure TfrmCadFuncionarios.dbeDTNASCExit(Sender: TObject);
begin
  If (dmFolha.cdsFuncionarios.State in [dsInsert, dsEdit]) Then
    If (dbeDTNASC.Text <> '  /  /    ') Then
    begin
        try
              StrToDate(dbeDTNASC.Text);
              dbeDTNASC.Date := StrToDate(dbeDTNASC.Text);
        except
              on EConvertError do
              begin
                  ShowMessage ('Data Inválida!');
                  dbeDTNASC.Clear;
                  dbeDTNASC.SetFocus;
                  Exit;
              End;
        end;
    End;
end;

procedure TfrmCadFuncionarios.dbeDTADMIExit(Sender: TObject);
begin
  If (dmFolha.cdsFuncionarios.State in [dsInsert, dsEdit]) Then
    If (dbeDTADMI.Text <> '  /  /    ') Then
    begin
        try
              StrToDate(dbeDTADMI.Text);
              dbeDTADMI.Date := StrToDate(dbeDTADMI.Text);
              // novo
              dmFolha.cdsFuncionarios.FieldByName('FUN_DTDIREITO_FERIAS').AsDateTime :=
                  IncMonth(dmFolha.cdsFuncionarios.FieldByName('FUN_ADMISSAO').AsDateTime,12)+1;
              //
        except
              on EConvertError do
              begin
                  ShowMessage ('Data Inválida!');
                  dbeDTADMI.Clear;
                  dbeDTADMI.SetFocus;
                  Exit;
              End;
        end;
    End;
end;

procedure TfrmCadFuncionarios.btLocalizarClick(Sender: TObject);
begin
     If OpenPictureDialog1.Execute Then
       CarregaFotoParaBanco(OpenPictureDialog1.FileName);
end;

procedure TfrmCadFuncionarios.FOTO_CLIENTE;
begin
    //
     If not (dmFolha.cdsFuncionariosFUN_FOTO.IsNull) Then
         ObtemImagemDoBanco(imgFotoFunc)
     Else
         imgFotoFunc.Visible := False;
end;

procedure TfrmCadFuncionarios.btnAlterarClick(Sender: TObject);
begin
       buscar;
       Combox_Vales;
       Legenda_COB;
       PageControl1.ActivePageIndex := 0;
       pnlBotoes.Visible := True;
end;

procedure TfrmCadFuncionarios.dsConsultarDataChange(Sender: TObject;
  Field: TField);
begin
   sbPrimeiro.Enabled := (((Sender as TDataSource).DataSet.Active) and not (Sender as TDataSource).DataSet.IsEmpty) and not ((Sender as TDataSource).DataSet.Bof);
   sbAnterior.Enabled := sbPrimeiro.Enabled;
   sbUltimo.Enabled := (((Sender as TDataSource).DataSet.Active) and not (Sender as TDataSource).DataSet.IsEmpty) and not ((Sender as TDataSource).DataSet.Eof);
   sbProximo.Enabled := sbUltimo.Enabled;
end;

procedure TfrmCadFuncionarios.dsConsultarStateChange(Sender: TObject);
begin
     btnAlterar.Enabled := (((Sender as TDataSource).DataSet.Active) and not (Sender as TDataSource).DataSet.IsEmpty);
end;

procedure TfrmCadFuncionarios.edtConsultarChange(Sender: TObject);
begin
  If not uFuncoes.Empty(edtConsultar.Text) Then
    begin
        cdsConsultar.Close;
        with datasetConsultar do
        begin
            Active := False;
            CommandText := 'Select FUN_MATRICULA, FUN_NOME from FUNCIONARIOS';
            case rgConsultar.ItemIndex of
                0: CommandText := CommandText + ' Where (FUN_MATRICULA = :pCODIGO)';
                1: CommandText := CommandText + ' Where (UPPER(FUN_NOME) like :pNOME)';
            end;
            CommandText := CommandText + ' order by FUN_NOME';
            case rgConsultar.ItemIndex of
                0: datasetConsultar.Params.ParamByName('pCODIGO').AsInteger := StrtoInt(edtConsultar.Text);
                1: datasetConsultar.Params.ParamByName('pNOME').AsString   := edtConsultar.Text + '%';
            end;
            Active := True;
        end;
        cdsConsultar.FetchParams;
        cdsConsultar.Open;
   End;
   //
   If uFuncoes.Empty(edtConsultar.Text) Then
       cdsConsultar.Close;
end;

procedure TfrmCadFuncionarios.edtConsultarKeyPress(Sender: TObject;
  var Key: Char);
begin
  if rgConsultar.ItemIndex = 0 then
  begin
    if not( key in['0'..'9', #8, #13] ) then
       key:=#0;
  end;
  //
  If (key = #13) and not uFuncoes.Empty(edtConsultar.Text) Then
    begin
         Key := #0;
         If (btnAlterar.Enabled = True) Then
            btnAlterar.SetFocus;
    End;
end;

procedure TfrmCadFuncionarios.dbeRECISAOExit(Sender: TObject);
begin
  If (dmFolha.cdsFuncionarios.State in [dsInsert, dsEdit]) Then
    If (dbeRECISAO.Text <> '  /  /    ') Then
    begin
        try
              StrToDate(dbeRECISAO.Text);
              dbeRECISAO.Date := StrToDate(dbeRECISAO.Text);
        except
              on EConvertError do
              begin
                  ShowMessage ('Data Inválida!');
                  dbeRECISAO.Clear; 
                  dbeRECISAO.SetFocus;
                  Exit;
              End;
        end;
    End;
end;

procedure TfrmCadFuncionarios.DBEdit17KeyPress(Sender: TObject;
  var Key: Char);
begin
    if not( key in['0'..'9', #8, #13] ) then
       key:=#0;
end;

procedure TfrmCadFuncionarios.DBEdit18KeyPress(Sender: TObject;
  var Key: Char);
begin
    if not( key in['0'..'9', #8, #13] ) then
       key:=#0;
end;

procedure TfrmCadFuncionarios.DBEdit19KeyPress(Sender: TObject;
  var Key: Char);
begin
    if not( key in['0'..'9', #8, #13] ) then
       key:=#0;
end;

procedure TfrmCadFuncionarios.DBEdit21KeyPress(Sender: TObject;
  var Key: Char);
begin
    if not( key in['0'..'9', #8, #13] ) then
       key:=#0;
end;

procedure TfrmCadFuncionarios.DBEdit23KeyPress(Sender: TObject;
  var Key: Char);
begin
    if not( key in['0'..'9', #8, #13] ) then
       key:=#0;
end;

procedure TfrmCadFuncionarios.TabSheet2Show(Sender: TObject);
begin
      dsConsultar.DataSet.Close;
      edtConsultar.Clear;
      edtConsultar.SetFocus;
end;

procedure TfrmCadFuncionarios.TabSheet4Show(Sender: TObject);
begin
     With dmFolha.cdsFilhos do
      begin
           Close;
           Params.ParamByName('pMATRICULA').AsInteger :=
               dmFolha.cdsFuncionarios.FieldByName('FUN_MATRICULA').AsInteger;;
           Open;
      End;
end;

procedure TfrmCadFuncionarios.PageControl1Change(Sender: TObject);
begin
     If not (dmFolha.cdsFilhos.IsEmpty)
       and (dmFolha.cdsFilhos.State in [dsInsert, dsEdit]) Then
            dmFolha.cdsFilhos.ApplyUpdates(0);
     //
     If (PageControl1.ActivePageIndex = 0)
       or (PageControl1.ActivePageIndex = 1) Then
        pnlBotoes.Visible := True
     Else
        pnlBotoes.Visible := False;
end;

procedure TfrmCadFuncionarios.grdConsultarDblClick(Sender: TObject);
begin
     If not (cdsConsultar.IsEmpty) Then
         btnAlterarClick(Sender);
end;

procedure TfrmCadFuncionarios.dbcmbCidadeExit(Sender: TObject);
begin
     If (dmFolha.cdsFuncionarios.State in [dsInsert, dsEdit]) Then
     begin
          dmFolha2.cdsBairros.Close;
          With dmFolha2.dstBairros do
          Begin
               Active := False;
               CommandText := 'Select * from BAIRROS Where (CID_CODIGO = :pCODIGO)'+
                              ' order by BAI_NOME';
               Params.ParamByName('pCODIGO').AsInteger := dmFolha.cdsFuncionarios.FieldByName('FUN_CIDADE').AsInteger;
               Active := True;
          End;
          dmFolha2.cdsBairros.Open;
     End;
end;

procedure TfrmCadFuncionarios.VERIFICAR_DEPENDENTES;
begin
     With dmFolha.cdsFilhos do
        begin
             Close;
             Params.ParamByName('pMATRICULA').AsInteger :=
                dmFolha.cdsFuncionarios.FieldByName('FUN_MATRICULA').AsInteger;
             Open;
             //
             If not (IsEmpty) Then
              begin
                   Close;
                   //
                   With dmFolha2.qryConsulta do
                    begin
                         SQL.Clear;
                         Close;
                         SQL.Add('Delete from FILHOS_FUNCIONARIOS Where (FUN_MATRICULA = :pMATRICULA)');
                         Params.ParamByName('pMATRICULA').AsInteger :=
                            dmFolha.cdsFuncionarios.FieldByName('FUN_MATRICULA').AsInteger;
                         ExecSQL();
                    End;
              End;
        End;
end;

procedure TfrmCadFuncionarios.rgConsultarClick(Sender: TObject);
begin
     edtConsultar.SetFocus; 
end;

procedure TfrmCadFuncionarios.dbGridFilhosKeyPress(Sender: TObject;
  var Key: Char);
begin
     if (dbGridFilhos.SelectedField.FieldName = 'FIL_NOME') THEN
          Key := AnsiUpperCase(Key)[Length(Key)];
end;

procedure TfrmCadFuncionarios.ValidarCOB(M_CODIGO, M_OPCAO : integer);
Var
     qryAux : TSQLQuery;
begin
     qryAux := TSQLQuery.Create(nil);
     With qryAux do  // dmFolha2.qryConsulta
      try
           SQLConnection := dmFolha.sqlCon_Folha;
           //SQL.Clear;
           Close;
           SQL.Add('Select CBO_CODIGO, CBO_DESCRICAO from CBO Where (CBO_CODIGO = :pCODIGO)');
           Params.ParamByName('pCODIGO').AsInteger   := M_CODIGO;
           Open;
           //
           If not(IsEmpty) Then
            begin
                 if (M_OPCAO = 1) Then
                     dmFolha.cdsFuncionariosFUN_CBO.AsInteger := FieldByName('CBO_CODIGO').AsInteger;
                 //
                 lbl_CBO.Caption := FieldByName('CBO_DESCRICAO').AsString;
            End
            Else
            begin
                 Application.MessageBox('Código de CBO inexistente.','ATENÇÃO',
                     MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
                 //
                 dbeCBO.Clear;
                 //dbeCBO.SetFocus;
                 Exit;
            End;
      Finally
          Free;
      End;
end;

procedure TfrmCadFuncionarios.dbeCBOExit(Sender: TObject);
begin
     If (dmFolha.cdsFuncionarios.State in [dsInsert, dsEdit])
       and not uFuncoes.Empty(dbeCBO.Text) Then
           ValidarCOB(dmFolha.cdsFuncionariosFUN_CBO.AsInteger, 1);
end;

procedure TfrmCadFuncionarios.dbeCBOChange(Sender: TObject);
begin
      If uFuncoes.Empty(dbeCBO.Text) Then
        lbl_CBO.Caption := '';
end;

procedure TfrmCadFuncionarios.spLocalizarCBOClick(Sender: TObject);
Var
   M_CODCBO : Integer;
begin
    Application.CreateForm(TfrmLocalizarCBO, frmLocalizarCBO);
    Try
        frmLocalizarCBO.ShowModal;
    Finally
        If not uFuncoes.Empty(frmLocalizarCBO.cdsConsultar.FieldByname('CBO_CODIGO').AsString) Then
        begin
            M_CODCBO := frmLocalizarCBO.cdsConsultar.FieldByname('CBO_CODIGO').AsInteger;
            dmFolha.cdsFuncionariosFUN_CBO.asInteger := M_CODCBO;
        End;
        //
        frmLocalizarCBO.Release;
        frmLocalizarCBO := nil;
        //
        If not uFuncoes.Empty(dbeCBO.Text) Then
           Perform(Wm_NextDlgCtl,0,0);
        //dbeCBO.SetFocus;
    End;
end;

procedure TfrmCadFuncionarios.Legenda_COB;
begin
     If not uFuncoes.Empty(dbeCBO.Text) Then
         ValidarCOB(dmFolha.cdsFuncionariosFUN_CBO.AsInteger, 2)
     Else
         lbl_CBO.Caption := '';
end;

procedure TfrmCadFuncionarios.dbeCBOKeyPress(Sender: TObject;
  var Key: Char);
begin
      if (key = #27) then
      begin
           Key := #0;
           BtCancelarClick(Sender);
      End;
      //
      if (key = #13)
        and (dmFolha.cdsFuncionarios.State in [dsInsert, dsEdit])
        and uFuncoes.Empty(dbeCBO.Text) Then
        begin
             Key := #0;
             spLocalizarCBOClick(Sender);
        End;
end;

procedure TfrmCadFuncionarios.CarregaFotoParaBanco(FileName: String);
Var
  stImagem: TFileStream;
begin
  stImagem := TFileStream.Create( FileName, fmOpenRead or fmShareDenyWrite );
  Try
     // ibdsCredenciadosFOTO é um campo BLOB SUB_TYPE 0
     dmFolha.cdsFuncionariosFUN_FOTO.LoadFromStream( stImagem );
  Finally
  stImagem.Free;
  End;
end;

procedure TfrmCadFuncionarios.ObtemImagemDoBanco(var imgDestino: TImage);
Var
  jpgImg: TJPEGImage;
  stMem: TMemoryStream;
begin
  If (dmFolha.cdsFuncionariosFUN_FOTO.IsNull) Then
  begin
       imgFotoFunc.Visible := False;
       Exit;
  End;
  //
  jpgImg := TJPEGImage.Create;
  stMem := TMemoryStream.Create;
  Try
      dmFolha.cdsFuncionariosFUN_FOTO.SaveToStream( stMem );
      stMem.Position := 0;
      jpgImg.LoadFromStream( stMem );
      imgDestino.Picture.Assign( jpgImg );
      imgFotoFunc.Visible := True;
  Finally
        stMem.Free;
        jpgImg.Free;
  End;
end;

procedure TfrmCadFuncionarios.dsMatriculaDataChange(Sender: TObject;
  Field: TField);
begin
     If not (dmFolha.cdsFuncionariosFUN_FOTO.IsNull) Then
         ObtemImagemDoBanco(imgFotoFunc);
     //
     If (dmFolha.cdsFuncionarios.State in [dsInsert]) Then
         dbeRECISAO.ReadOnly := False;
     If (dmFolha.cdsFuncionarios.State in [dsEdit]) Then
         dbeRECISAO.ReadOnly := True;
end;

procedure TfrmCadFuncionarios.dbeNRIDENTExit(Sender: TObject);
begin
     If (dmFolha.cdsFuncionarios.State in [dsInsert])
     and  not uFuncoes.Empty(dbeNRIDENT.Text) Then
       begin
           If uFuncoes.ValidarRG(dbeNRIDENT.Text) Then
           begin
               MessageDlg('Número de RG já cadastro!!!', mtInformation, [mbOk], 0);
               dbeNRIDENT.Text := '';
               dbeNRIDENT.SetFocus;
               Exit;
           End;
       End;
end;

procedure TfrmCadFuncionarios.btnCapturaClick(Sender: TObject);
var
  DirNomeFoto: string;
  NomeFoto: string;
  procedure ConverteParaJpeg(ACaminhoFoto: string);
  var
    cjBmp: TBitmap;
    cjJpg: TJpegImage;
    strNomeSemExtensao: string;
    AFoto: TImage;
  begin
    AFoto:= TImage.Create(frmCadFuncionarios);
    AFoto.Parent := frmCadFuncionarios;
    AFoto.Visible := False;
    AFoto.Picture.Bitmap.LoadFromFile(ACaminhoFoto + '.bmp');

    cjJpg := TJPegImage.Create;
    cjBmp := TBitmap.Create;

    cjBmp.Assign(AFoto.Picture.Bitmap);
    cjJpg.Assign(cjBMP);

    cjJpg.SaveToFile(ACaminhoFoto + '.jpg');
    DeleteFile(ACaminhoFoto + '.bmp');
    cjJpg.Free;
    cjBmp.Free;
    AFoto.Free;
  end;
begin
  Try
    fCaptura := TfCaptura.Create(Self);
    try
      with fCaptura, camCamera, dmFolha, cdsFuncionarios do
      begin
        DirNomeFoto := ExtractFilePath(Application.ExeName) +'Fotos';

        NomeFoto := ExtractFilePath(DirNomeFoto) +
          Copy(ExtractFileName(DirNomeFoto),1, Length(ExtractFileName(DirNomeFoto))-4);

        FichierImage := ExtractFileName(DirNomeFoto);
        if fCaptura.ShowModal = mrOk then
        begin
          CaptureImageDisque;
          ConverteParaJpeg(NomeFoto);
          OpenPictureDialog1.FileName := NomeFoto;
          CarregaFotoParaBanco(OpenPictureDialog1.FileName);
        end;
      end;
    finally
      FreeAndNil(fCaptura);
    end;
  Except
        on Exc:Exception do
         begin
              Application.MessageBox(PChar('Error ao tentar gravar registro.'+#13
                    + Exc.Message),
                   'ATENÇÃO', MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
              dmFolha.cdsFuncionarios.Cancel;
         End;
  End;
end;

procedure TfrmCadFuncionarios.sbPrimeiroClick(Sender: TObject);
begin
     If (cdsConsultar.Active) Then
        dsConsultar.DataSet.First;
end;

procedure TfrmCadFuncionarios.sbAnteriorClick(Sender: TObject);
begin
     If (cdsConsultar.Active) Then
        dsConsultar.DataSet.Prior;
end;

procedure TfrmCadFuncionarios.sbProximoClick(Sender: TObject);
begin
     If (cdsConsultar.Active) Then
        dsConsultar.DataSet.Next;
end;

procedure TfrmCadFuncionarios.sbUltimoClick(Sender: TObject);
begin
     If (cdsConsultar.Active) Then
        dsConsultar.DataSet.Last;
end;

procedure TfrmCadFuncionarios.Combox_Vales;
begin
     If (dmFolha.cdsFuncionarios.FieldByName('FUN_VALETRANS').AsString = 'S') Then
         cmbVLTRANS.ItemIndex := 0
     Else
         cmbVLTRANS.ItemIndex := 1;
end;

procedure TfrmCadFuncionarios.btHorariosClick(Sender: TObject);
begin
    Application.CreateForm(TfrmCadHorarios, frmCadHorarios);
    Try
        With dmFolha.cdsHorarios do
          begin
               Close;
               Params.ParamByName('pFUNCIONARIO').AsInteger :=
                    dmFolha.cdsFuncionarios.fieldByname('FUN_MATRICULA').AsInteger;
               Open;      
          End;
        //
        frmCadHorarios.lbl_nmfunc.Caption := dmFolha.cdsFuncionarios.fieldByname('FUN_NOME').AsString;
        frmCadHorarios.ShowModal;
    Finally
        frmCadHorarios.Release;
        frmCadHorarios := nil;
    End;
end;

procedure TfrmCadFuncionarios.spbCidadeClick(Sender: TObject);
begin
    Application.CreateForm(TfrmCadCidades, frmCadCidades);
    Try
        frmCadCidades.ShowModal;
    Finally
        frmCadCidades.Release;
        frmCadCidades := nil;
    End;
     //
     dmFolha.RefreshCDS(dmFolha.cdsCidades);
end;

procedure TfrmCadFuncionarios.spbBairroClick(Sender: TObject);
begin
    Application.CreateForm(TfrmCadBairros, frmCadBairros);
    Try
        frmCadBairros.ShowModal;
    Finally
        frmCadBairros.Release;
        frmCadBairros := nil;
    End;
    //
    dmFolha.RefreshCDS(dmFolha2.cdsBairros);
end;

end.
