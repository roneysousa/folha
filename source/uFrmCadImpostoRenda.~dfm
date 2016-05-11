inherited frmCadImpostoRenda: TfrmCadImpostoRenda
  Left = 204
  Top = 186
  Caption = 'Tabela de Imposto de Renda'
  OldCreateOrder = True
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    object Label1: TLabel
      Left = 24
      Top = 32
      Width = 75
      Height = 13
      Caption = 'Faixa de Sal'#225'rio'
      FocusControl = dbeFaixa
      Transparent = True
    end
    object Label2: TLabel
      Left = 24
      Top = 72
      Width = 100
      Height = 13
      Caption = 'Percentual Desconto'
      FocusControl = dbePercentual
      Transparent = True
    end
    object dbeFaixa: TDBEdit
      Left = 24
      Top = 48
      Width = 212
      Height = 21
      DataField = 'IMR_FAIXA'
      DataSource = dsImposto
      TabOrder = 0
      OnExit = dbeFaixaExit
    end
    object dbePercentual: TDBEdit
      Left = 24
      Top = 88
      Width = 212
      Height = 21
      DataField = 'IMR_PEDESCONTO'
      DataSource = dsImposto
      TabOrder = 1
    end
    object grdConsultar: TDBGrid
      Left = 1
      Top = 152
      Width = 534
      Height = 61
      Align = alBottom
      Ctl3D = False
      DataSource = dsImposto
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
          FieldName = 'IMR_FAIXA'
          Title.Caption = 'SAL'#193'RIO AT'#201' '
          Width = 180
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'IMR_PEDESCONTO'
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
  object dsImposto: TDataSource
    AutoEdit = False
    DataSet = dmFolha.cdsImpostoRenda
    Left = 256
    Top = 144
  end
end
