inherited frmCadUsuarios: TfrmCadUsuarios
  Caption = 'Cadastro de Usu'#225'rios'
  OldCreateOrder = True
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  inherited PageControl1: TPageControl
    inherited TabSheet1: TTabSheet
      object Label2: TLabel [0]
        Left = 16
        Top = 60
        Width = 28
        Height = 13
        Caption = 'Nome'
        FocusControl = dbeNMUSUA
        Transparent = True
      end
      object DBText1: TDBText [1]
        Left = 16
        Top = 26
        Width = 80
        Height = 22
        AutoSize = True
        DataField = 'SEN_CODIGO'
        DataSource = dsUsuarios
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label3: TLabel [2]
        Left = 16
        Top = 11
        Width = 33
        Height = 13
        Caption = 'C'#243'digo'
        Transparent = True
      end
      object Label1: TLabel [3]
        Left = 16
        Top = 101
        Width = 28
        Height = 13
        Caption = 'Cargo'
        FocusControl = dbeCargo
        Transparent = True
      end
      object lbl_senha: TLabel [4]
        Left = 16
        Top = 141
        Width = 34
        Height = 13
        Caption = 'Senha:'
        Transparent = True
      end
      object lbl_confirma: TLabel [5]
        Left = 16
        Top = 181
        Width = 44
        Height = 13
        Caption = 'Confirma:'
        Transparent = True
      end
      object dbeNMUSUA: TDBEdit
        Left = 16
        Top = 76
        Width = 394
        Height = 21
        CharCase = ecUpperCase
        DataField = 'SEN_NOME'
        DataSource = dsUsuarios
        TabOrder = 1
      end
      object dbeCargo: TDBEdit
        Left = 16
        Top = 117
        Width = 394
        Height = 21
        CharCase = ecUpperCase
        DataField = 'SEN_CARGO'
        DataSource = dsUsuarios
        TabOrder = 2
      end
      object dbeSNATUA: TEdit
        Left = 16
        Top = 157
        Width = 82
        Height = 21
        MaxLength = 6
        PasswordChar = '*'
        TabOrder = 3
        OnExit = dbeSNATUAExit
      end
      object edt_Confirma: TEdit
        Left = 16
        Top = 197
        Width = 82
        Height = 21
        MaxLength = 6
        PasswordChar = '*'
        TabOrder = 4
        OnExit = edt_ConfirmaExit
      end
    end
    inherited TabSheet2: TTabSheet
      inherited grdConsultar: TDBGrid
        DataSource = dsConsultar
        Columns = <
          item
            Expanded = False
            FieldName = 'SEN_CODIGO'
            Title.Caption = 'CODIGO'
            Width = 46
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SEN_NOME'
            Title.Caption = 'NOME'
            Width = 448
            Visible = True
          end>
      end
    end
  end
  inherited datasetConsultar: TSQLDataSet
    CommandText = 'select SEN_CODIGO, SEN_NOME from USUARIOS'
    MaxBlobSize = -1
    SQLConnection = dmFolha.sqlCon_Folha
  end
  inherited cdsConsultar: TClientDataSet
    object cdsConsultarSEN_CODIGO: TIntegerField
      FieldName = 'SEN_CODIGO'
      Required = True
      DisplayFormat = '000'
    end
    object cdsConsultarSEN_NOME: TStringField
      FieldName = 'SEN_NOME'
      Size = 40
    end
  end
  object dsUsuarios: TDataSource
    AutoEdit = False
    DataSet = dmFolha.cdsUsuarios
    Left = 280
    Top = 176
  end
end
