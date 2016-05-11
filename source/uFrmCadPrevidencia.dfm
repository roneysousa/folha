inherited frmCadPrevidencia: TfrmCadPrevidencia
  Caption = 'Tabela da Previdencia - INSS'
  OldCreateOrder = True
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    object Label1: TLabel
      Left = 16
      Top = 32
      Width = 75
      Height = 13
      Caption = 'Faixa de Sal'#225'rio'
      FocusControl = dbeFaixa
      Transparent = True
    end
    object Label2: TLabel
      Left = 16
      Top = 72
      Width = 100
      Height = 13
      Caption = 'Percentual Desconto'
      FocusControl = dbePercentual
      Transparent = True
    end
    object dbeFaixa: TDBEdit
      Left = 16
      Top = 48
      Width = 212
      Height = 21
      DataField = 'PRE_FAIXA'
      DataSource = dsPrevidencia
      TabOrder = 0
      OnExit = dbeFaixaExit
    end
    object dbePercentual: TDBEdit
      Left = 16
      Top = 88
      Width = 212
      Height = 21
      DataField = 'PRE_PEDESCONTO'
      DataSource = dsPrevidencia
      TabOrder = 1
    end
    object grdConsultar: TDBGrid
      Left = 1
      Top = 152
      Width = 534
      Height = 61
      Align = alBottom
      Ctl3D = False
      DataSource = dsPrevidencia
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
          FieldName = 'PRE_FAIXA'
          Title.Caption = 'SAL'#193'RIO AT'#201' '
          Width = 180
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PRE_PEDESCONTO'
          Title.Alignment = taRightJustify
          Title.Caption = 'PERCENTUAL %'
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
  object dsPrevidencia: TDataSource
    AutoEdit = False
    DataSet = dmFolha.cdsPrevidencia
    Left = 256
    Top = 144
  end
end
