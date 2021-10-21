object FrmConsCategorias: TFrmConsCategorias
  Left = 0
  Top = 0
  Caption = 'CATEGORIAS'
  ClientHeight = 416
  ClientWidth = 854
  Color = clBtnFace
  CustomTitleBar.CaptionAlignment = taCenter
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 854
    Height = 57
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 23
      Top = 22
      Width = 69
      Height = 13
      Caption = 'CONSULTAR'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object edtConsulta: TEdit
      Left = 98
      Top = 19
      Width = 223
      Height = 21
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnChange = edtConsultaChange
    end
    object btConsultar: TButton
      Left = 327
      Top = 9
      Width = 75
      Height = 41
      Caption = 'BUSCAR'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = btConsultarClick
    end
    object rgOrdenacao: TRadioGroup
      Left = 464
      Top = 6
      Width = 249
      Height = 45
      Caption = 'Ordena'#231#227'o'
      Columns = 2
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ItemIndex = 0
      Items.Strings = (
        'CODIGO'
        'CATEGORIA')
      ParentFont = False
      TabOrder = 2
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 57
    Width = 854
    Height = 359
    Align = alClient
    DataSource = dsCategorias
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ParentFont = False
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnDblClick = DBGrid1DblClick
    Columns = <
      item
        Expanded = False
        FieldName = 'CODIGO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CATEGORIA'
        Visible = True
      end>
  end
  object qrConsCategorias: TFDQuery
    Connection = Dm.Conexao
    SQL.Strings = (
      'SELECT * FROM CATEGORIAS')
    Left = 136
    Top = 144
    object qrConsCategoriasCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qrConsCategoriasCATEGORIA: TStringField
      FieldName = 'CATEGORIA'
      Origin = 'CATEGORIA'
      Required = True
      Size = 100
    end
  end
  object dsCategorias: TDataSource
    DataSet = qrConsCategorias
    Left = 232
    Top = 144
  end
end
