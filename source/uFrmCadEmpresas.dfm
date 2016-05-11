inherited frmCadEmpresas: TfrmCadEmpresas
  Left = 165
  Top = 84
  Caption = 'Cadastro de Empresas'
  ClientHeight = 363
  OldCreateOrder = True
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  inherited PageControl1: TPageControl
    Height = 334
    inherited TabSheet1: TTabSheet
      object Label1: TLabel [0]
        Left = 16
        Top = 3
        Width = 33
        Height = 13
        Caption = 'C'#243'digo'
      end
      object DBText1: TDBText [1]
        Left = 16
        Top = 20
        Width = 80
        Height = 22
        AutoSize = True
        DataField = 'EMP_CODIGO'
        DataSource = dsEmpresas
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label2: TLabel [2]
        Left = 16
        Top = 91
        Width = 40
        Height = 13
        Caption = 'Fantasia'
        FocusControl = dbeFantasia
        Transparent = True
      end
      object Label3: TLabel [3]
        Left = 16
        Top = 131
        Width = 63
        Height = 13
        Caption = 'Raz'#227'o Social'
        FocusControl = DBEdit2
        Transparent = True
      end
      object Label4: TLabel [4]
        Left = 16
        Top = 171
        Width = 46
        Height = 13
        Caption = 'Endere'#231'o'
        FocusControl = dbeEndereco
        Transparent = True
      end
      object Label5: TLabel [5]
        Left = 383
        Top = 171
        Width = 37
        Height = 13
        Caption = 'N'#250'mero'
        FocusControl = DBEdit4
        Transparent = True
      end
      object Label6: TLabel [6]
        Left = 16
        Top = 211
        Width = 33
        Height = 13
        Caption = 'Cidade'
        Transparent = True
      end
      object Label8: TLabel [7]
        Left = 16
        Top = 53
        Width = 27
        Height = 13
        Caption = 'CNPJ'
        FocusControl = dbeNRCNPJ
        Transparent = True
      end
      object Label9: TLabel [8]
        Left = 322
        Top = 211
        Width = 27
        Height = 13
        Caption = 'Bairro'
        FocusControl = DBLookupComboBox1
      end
      object Label7: TLabel [9]
        Left = 16
        Top = 251
        Width = 26
        Height = 13
        Caption = 'Folha'
      end
      object DBText2: TDBText [10]
        Left = 16
        Top = 267
        Width = 65
        Height = 17
        DataField = 'EMP_FOLHA'
        DataSource = dsEmpresas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      inherited Panel1: TPanel
        Top = 265
        TabOrder = 7
      end
      object dbeFantasia: TDBEdit
        Left = 16
        Top = 107
        Width = 500
        Height = 21
        CharCase = ecUpperCase
        DataField = 'EMP_FANTASIA'
        DataSource = dsEmpresas
        TabOrder = 1
        OnExit = dbeFantasiaExit
      end
      object DBEdit2: TDBEdit
        Left = 16
        Top = 147
        Width = 500
        Height = 21
        CharCase = ecUpperCase
        DataField = 'EMP_RAZAO'
        DataSource = dsEmpresas
        TabOrder = 2
      end
      object dbeEndereco: TDBEdit
        Left = 16
        Top = 185
        Width = 361
        Height = 21
        CharCase = ecUpperCase
        DataField = 'EMP_ENDERECO'
        DataSource = dsEmpresas
        TabOrder = 3
      end
      object DBEdit4: TDBEdit
        Left = 383
        Top = 185
        Width = 134
        Height = 21
        DataField = 'EMP_NUMERO'
        DataSource = dsEmpresas
        TabOrder = 4
      end
      object dbeNRCNPJ: TDBEdit
        Left = 16
        Top = 69
        Width = 186
        Height = 21
        DataField = 'EMP_CNPJ'
        DataSource = dsEmpresas
        TabOrder = 0
        OnExit = dbeNRCNPJExit
        OnKeyPress = dbeNRCNPJKeyPress
      end
      object dbcmbCidades: TDBLookupComboBox
        Left = 16
        Top = 225
        Width = 300
        Height = 21
        DataField = 'EMP_NMCIDA'
        DataSource = dsEmpresas
        TabOrder = 5
        OnExit = dbcmbCidadesExit
      end
      object DBLookupComboBox1: TDBLookupComboBox
        Left = 322
        Top = 225
        Width = 197
        Height = 21
        DataField = 'EMP_NMBAIRRO'
        DataSource = dsEmpresas
        TabOrder = 6
      end
    end
    inherited TabSheet2: TTabSheet
      inherited grdConsultar: TDBGrid
        Height = 247
        DataSource = dsConsultar
        Columns = <
          item
            Expanded = False
            FieldName = 'EMP_CODIGO'
            Title.Caption = 'CODIGO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'EMP_FANTASIA'
            Title.Caption = 'NOME FANTASIA'
            Width = 424
            Visible = True
          end>
      end
      inherited Panel3: TPanel
        Height = 247
      end
    end
  end
  inherited dsConsultar: TDataSource
    Left = 404
    Top = 114
  end
  inherited datasetConsultar: TSQLDataSet
    CommandText = 'select EMP_CODIGO, EMP_FANTASIA from EMPRESAS'
    MaxBlobSize = -1
    SQLConnection = dmFolha.sqlCon_Folha
    Left = 452
    Top = 114
  end
  inherited dspConsultar: TDataSetProvider
    Left = 484
    Top = 114
  end
  inherited cdsConsultar: TClientDataSet
    Left = 532
    Top = 114
    object cdsConsultarEMP_CODIGO: TIntegerField
      FieldName = 'EMP_CODIGO'
      Required = True
      DisplayFormat = '000'
    end
    object cdsConsultarEMP_FANTASIA: TStringField
      FieldName = 'EMP_FANTASIA'
      Size = 50
    end
  end
  object dsEmpresas: TDataSource
    AutoEdit = False
    DataSet = dmFolha.cdsEmpresas
    Left = 240
    Top = 72
  end
end
