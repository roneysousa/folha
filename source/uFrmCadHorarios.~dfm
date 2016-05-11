inherited frmCadHorarios: TfrmCadHorarios
  Left = 164
  Top = 134
  Caption = 'Cadastro de Hor'#225'rios'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited PageControl1: TPageControl
    inherited TabSheet1: TTabSheet
      object Label1: TLabel [0]
        Left = 24
        Top = 68
        Width = 78
        Height = 13
        Caption = 'Dias da Semana'
        Transparent = True
      end
      object Label2: TLabel [1]
        Left = 24
        Top = 108
        Width = 78
        Height = 13
        Caption = 'Hora da Entrada'
        FocusControl = dbeEntrada
        Transparent = True
      end
      object Label3: TLabel [2]
        Left = 24
        Top = 148
        Width = 70
        Height = 13
        Caption = 'Hora da Sa'#237'da'
        FocusControl = dbeSaida
        Transparent = True
      end
      object Label4: TLabel [3]
        Left = 24
        Top = 16
        Width = 55
        Height = 13
        Caption = 'Funcion'#225'rio'
        Transparent = True
      end
      object lbl_nmfunc: TLabel [4]
        Left = 24
        Top = 32
        Width = 62
        Height = 13
        Caption = 'lbl_nmfunc'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      inherited Panel1: TPanel
        inherited BtEditar: TBitBtn
          Visible = False
        end
        inherited BtExcluir: TBitBtn
          Visible = False
        end
        inherited BtPesquisar: TBitBtn
          Visible = False
        end
      end
      object cmbDia: TDBLookupComboBox
        Left = 24
        Top = 84
        Width = 209
        Height = 21
        DataField = 'DIA_SEMANA'
        DataSource = dsHorarios
        TabOrder = 1
      end
      object dbeEntrada: TDBEdit
        Left = 24
        Top = 124
        Width = 69
        Height = 21
        DataField = 'HRA_ENTRADA'
        DataSource = dsHorarios
        TabOrder = 2
        OnExit = dbeEntradaExit
        OnKeyPress = dbeEntradaKeyPress
      end
      object dbeSaida: TDBEdit
        Left = 24
        Top = 162
        Width = 69
        Height = 21
        DataField = 'HRA_SAIDA'
        DataSource = dsHorarios
        TabOrder = 3
        OnExit = dbeSaidaExit
        OnKeyPress = dbeSaidaKeyPress
      end
    end
    inherited TabSheet2: TTabSheet
      TabVisible = False
    end
  end
  object dsHorarios: TDataSource
    AutoEdit = False
    DataSet = dmFolha.cdsHorarios
    Left = 376
    Top = 120
  end
end
