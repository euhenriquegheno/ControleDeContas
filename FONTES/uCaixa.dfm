object frmCaixa: TfrmCaixa
  Left = 0
  Top = 0
  Caption = 'Caixa'
  ClientHeight = 458
  ClientWidth = 761
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 761
    Height = 57
    Align = alTop
    TabOrder = 0
    ExplicitWidth = 730
    object Label1: TLabel
      Left = 51
      Top = 11
      Width = 65
      Height = 13
      Caption = 'DATA CAIXA:'
      FocusControl = DBEdit1
    end
    object Label2: TLabel
      Left = 201
      Top = 12
      Width = 52
      Height = 13
      Caption = 'SITUA'#199#195'O'
      FocusControl = DBEdit2
    end
    object Label4: TLabel
      Left = 336
      Top = 7
      Width = 108
      Height = 13
      Caption = 'Exibir lan'#231'amentos de:'
    end
    object label5: TLabel
      Left = 424
      Top = 34
      Width = 20
      Height = 13
      Caption = 'at'#233':'
    end
    object DBEdit1: TDBEdit
      Left = 16
      Top = 30
      Width = 134
      Height = 22
      Color = clWhite
      DataField = 'DATA'
      DataSource = dsCaixa
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 168
      Top = 31
      Width = 120
      Height = 21
      DataField = 'SITUACAO'
      DataSource = dsCaixa
      Enabled = False
      ReadOnly = True
      TabOrder = 1
    end
    object dtpDe: TDateTimePicker
      Left = 450
      Top = 4
      Width = 113
      Height = 21
      Date = 44567.000000000000000000
      Time = 0.415385740743659000
      TabOrder = 2
    end
    object dtpAte: TDateTimePicker
      Left = 450
      Top = 30
      Width = 113
      Height = 21
      Date = 44567.000000000000000000
      Time = 0.415385740743659000
      TabOrder = 3
    end
    object Panel6: TPanel
      Left = 305
      Top = 1
      Width = 7
      Height = 55
      TabOrder = 4
    end
    object Button1: TButton
      AlignWithMargins = True
      Left = 569
      Top = 31
      Width = 72
      Height = 21
      Caption = 'Filtrar'
      TabOrder = 5
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 57
    Width = 761
    Height = 344
    Align = alClient
    TabOrder = 1
    ExplicitWidth = 730
    ExplicitHeight = 304
    object pcPrincipal: TPageControl
      Left = 1
      Top = 1
      Width = 759
      Height = 342
      ActivePage = tsConsulta
      Align = alClient
      TabOrder = 0
      OnChange = pcPrincipalChange
      object tsConsulta: TTabSheet
        Caption = 'Rela'#231#227'o de lan'#231'amentos'
        object DBGrid1: TDBGrid
          Left = 0
          Top = 0
          Width = 751
          Height = 314
          Align = alClient
          DataSource = dsMovCaixa
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          ReadOnly = True
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'DESCRICAO'
              Title.Caption = 'Descri'#231#227'o'
              Width = 250
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VALOR'
              Title.Caption = 'Valor-R$'
              Width = 100
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'SAIDA'
              Title.Caption = 'Saida'
              Width = 100
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ENTRADA'
              Title.Caption = 'Entrada'
              Width = 100
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'TIPO'
              Title.Caption = 'Tipo'
              Width = 100
              Visible = True
            end>
        end
      end
      object tsMovManual: TTabSheet
        Caption = 'Movimenta'#231#227'o manual'
        ImageIndex = 1
        object Label6: TLabel
          Left = 17
          Top = 112
          Width = 59
          Height = 13
          Caption = 'DESCRICAO'
          FocusControl = DBEdit4
        end
        object Label7: TLabel
          Left = 17
          Top = 168
          Width = 50
          Height = 13
          Caption = 'VALOR-R$'
          FocusControl = DBEdit5
        end
        object Label8: TLabel
          Left = 17
          Top = 16
          Width = 128
          Height = 14
          Caption = 'Ficha de Lan'#231'amento'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label9: TLabel
          Left = 17
          Top = 219
          Width = 27
          Height = 13
          Caption = 'DATA'
          FocusControl = DBEdit6
        end
        object DBEdit4: TDBEdit
          Left = 17
          Top = 131
          Width = 400
          Height = 21
          DataField = 'DESCRICAO'
          DataSource = dsMovCaixa
          TabOrder = 0
        end
        object DBEdit5: TDBEdit
          Left = 17
          Top = 184
          Width = 200
          Height = 21
          DataField = 'VALOR'
          DataSource = dsMovCaixa
          TabOrder = 1
        end
        object rgTipo: TRadioGroup
          Left = 17
          Top = 48
          Width = 185
          Height = 49
          Caption = 'Tipo'
          Columns = 2
          ItemIndex = 0
          Items.Strings = (
            'ENTRADA'
            'SAIDA')
          TabOrder = 2
        end
        object Panel7: TPanel
          Left = 0
          Top = 273
          Width = 751
          Height = 41
          Align = alBottom
          TabOrder = 3
          ExplicitLeft = 288
          ExplicitTop = 256
          ExplicitWidth = 185
          object Button2: TButton
            Left = 364
            Top = 8
            Width = 75
            Height = 25
            Caption = 'Cancelar'
            TabOrder = 0
            OnClick = Button2Click
          end
          object Button3: TButton
            Left = 271
            Top = 8
            Width = 75
            Height = 25
            Caption = 'Confirmar'
            TabOrder = 1
            OnClick = Button3Click
          end
        end
        object DBEdit6: TDBEdit
          Left = 17
          Top = 235
          Width = 134
          Height = 21
          DataField = 'DATA'
          DataSource = dsMovCaixa
          Enabled = False
          ReadOnly = True
          TabOrder = 4
        end
      end
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 401
    Width = 761
    Height = 57
    Align = alBottom
    TabOrder = 2
    ExplicitTop = 8
    ExplicitWidth = 730
    object btnAbertura: TButton
      AlignWithMargins = True
      Left = 193
      Top = 4
      Width = 85
      Height = 49
      Align = alLeft
      Caption = 'Abertura'
      TabOrder = 0
      OnClick = btnAberturaClick
      ExplicitLeft = 186
      ExplicitTop = 5
    end
    object btnExcluir: TButton
      AlignWithMargins = True
      Left = 95
      Top = 4
      Width = 85
      Height = 49
      Align = alLeft
      Caption = 'Excluir'
      TabOrder = 1
      OnClick = btnExcluirClick
      ExplicitLeft = 4
    end
    object btnIncluir: TButton
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 85
      Height = 49
      Align = alLeft
      Caption = 'Incluir'
      TabOrder = 2
      OnClick = btnIncluirClick
    end
    object Panel4: TPanel
      Left = 183
      Top = 1
      Width = 7
      Height = 55
      Align = alLeft
      TabOrder = 3
      ExplicitLeft = 173
      ExplicitTop = 5
    end
    object btnFechamento: TButton
      AlignWithMargins = True
      Left = 375
      Top = 4
      Width = 85
      Height = 49
      Align = alLeft
      Caption = 'Fechamento'
      TabOrder = 4
      OnClick = btnFechamentoClick
      ExplicitLeft = 359
      ExplicitTop = 6
    end
    object btnReabertura: TButton
      AlignWithMargins = True
      Left = 284
      Top = 4
      Width = 85
      Height = 49
      Align = alLeft
      Caption = 'Reabertura'
      TabOrder = 5
      ExplicitLeft = 186
      ExplicitTop = 5
    end
    object Panel5: TPanel
      Left = 616
      Top = 1
      Width = 144
      Height = 55
      Align = alRight
      TabOrder = 6
      object Label3: TLabel
        Left = 23
        Top = 8
        Width = 102
        Height = 13
        Caption = 'SALDO CAIXA ATUAL'
      end
      object DBEdit3: TDBEdit
        Left = 24
        Top = 27
        Width = 100
        Height = 22
        DataField = 'SALDO'
        DataSource = dsCaixa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
      end
    end
  end
  object qrCaixa: TFDQuery
    Connection = Dm.Conexao
    SQL.Strings = (
      'select * from caixa')
    Left = 488
    Top = 89
    object qrCaixaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      Required = True
    end
    object qrCaixaDATA: TDateField
      FieldName = 'DATA'
      Origin = '"DATA"'
    end
    object qrCaixaSITUACAO: TStringField
      FieldName = 'SITUACAO'
      Origin = 'SITUACAO'
      Size = 50
    end
    object qrCaixaSALDO: TFMTBCDField
      FieldName = 'SALDO'
      Origin = 'SALDO'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
  end
  object qrMovCaixa: TFDQuery
    AfterInsert = qrMovCaixaAfterInsert
    Connection = Dm.Conexao
    SQL.Strings = (
      'select * from movimentacao_caixa')
    Left = 552
    Top = 89
    object qrMovCaixaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qrMovCaixaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 100
    end
    object qrMovCaixaVALOR: TFMTBCDField
      FieldName = 'VALOR'
      Origin = 'VALOR'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object qrMovCaixaSAIDA: TFMTBCDField
      FieldName = 'SAIDA'
      Origin = 'SAIDA'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object qrMovCaixaENTRADA: TFMTBCDField
      FieldName = 'ENTRADA'
      Origin = 'ENTRADA'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object qrMovCaixaTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      Size = 50
    end
    object qrMovCaixaDATA: TDateField
      FieldName = 'DATA'
      Origin = '"DATA"'
    end
  end
  object dsCaixa: TDataSource
    DataSet = qrCaixa
    Left = 488
    Top = 145
  end
  object dsMovCaixa: TDataSource
    DataSet = qrMovCaixa
    Left = 552
    Top = 145
  end
end
