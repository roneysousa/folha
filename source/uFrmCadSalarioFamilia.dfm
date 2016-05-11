inherited frmCadSalarioFamilia: TfrmCadSalarioFamilia
  Caption = 'Tabela Sal'#225'rio Fam'#237'lia'
  OldCreateOrder = True
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    object Label3: TLabel
      Left = 16
      Top = 32
      Width = 75
      Height = 13
      Caption = 'Faixa de Sal'#225'rio'
      Transparent = True
    end
    object Label4: TLabel
      Left = 16
      Top = 72
      Width = 86
      Height = 13
      Caption = 'Valor do Beneficio'
      Transparent = True
    end
    object dbeFaixa: TDBEdit
      Left = 16
      Top = 48
      Width = 212
      Height = 21
      DataField = 'SFM_FAIXA'
      DataSource = dsSalarioFamilia
      TabOrder = 0
      OnExit = dbeFaixaExit
    end
    object dbeValor: TDBEdit
      Left = 16
      Top = 88
      Width = 212
      Height = 21
      DataField = 'SFM_VALOR'
      DataSource = dsSalarioFamilia
      TabOrder = 1
    end
    object grdConsultar: TDBGrid
      Left = 1
      Top = 152
      Width = 534
      Height = 61
      Align = alBottom
      Ctl3D = False
      DataSource = dsSalarioFamilia
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 2
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'SFM_FAIXA'
          Title.Caption = 'SAL'#193'RIO AT'#201' '
          Width = 180
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SFM_VALOR'
          Title.Alignment = taRightJustify
          Title.Caption = 'VALOR'
          Width = 112
          Visible = True
        end>
    end
  end
  inherited Panel5: TPanel
    inherited BtAdicionar: TBitBtn
      OnClick = BtAdicionarClick
    end
    inherited BtExcluir: TBitBtn
      OnClick = BtExcluirClick
    end
    inherited BtCancelar: TBitBtn
      OnClick = BtCancelarClick
    end
    inherited BtGravar: TBitBtn
      OnClick = BtGravarClick
    end
  end
  object dsSalarioFamilia: TDataSource
    AutoEdit = False
    DataSet = dmFolha.cdsSalarioFamilia
    Left = 256
    Top = 144
  end
end
