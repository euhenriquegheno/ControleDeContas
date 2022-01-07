object FrmCadCliente: TFrmCadCliente
  Left = 0
  Top = 0
  Caption = 'CLIENTES'
  ClientHeight = 611
  ClientWidth = 1234
  Color = clSkyBlue
  CustomTitleBar.CaptionAlignment = taCenter
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PopupMenu = PopupMenu1
  Position = poScreenCenter
  WindowState = wsMaximized
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object pcPrincipal: TPageControl
    Left = 0
    Top = 63
    Width = 1234
    Height = 548
    ActivePage = tsConsulta
    Align = alClient
    TabOrder = 0
    OnChange = pcPrincipalChange
    object tsConsulta: TTabSheet
      Caption = 'CONSULTA'
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 1226
        Height = 57
        Align = alTop
        TabOrder = 0
        object Label1: TLabel
          Left = 23
          Top = 21
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
        object Button1: TButton
          AlignWithMargins = True
          Left = 1112
          Top = 4
          Width = 110
          Height = 49
          Align = alRight
          Caption = 'CADASTRAR | F2'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnClick = Button1Click
        end
        object Button2: TButton
          AlignWithMargins = True
          Left = 1008
          Top = 4
          Width = 98
          Height = 49
          Align = alRight
          Caption = 'ALTERAR | F3'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          OnClick = Button2Click
        end
        object Button3: TButton
          AlignWithMargins = True
          Left = 904
          Top = 4
          Width = 98
          Height = 49
          Align = alRight
          Caption = 'EXCLUIR | F4'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          OnClick = Button3Click
        end
        object edtConsulta: TEdit
          Left = 98
          Top = 16
          Width = 191
          Height = 21
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
        end
        object Button4: TButton
          Left = 295
          Top = 8
          Width = 75
          Height = 43
          Caption = 'BUSCAR'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
          OnClick = Button4Click
        end
        object rgOrdenacao: TRadioGroup
          Left = 408
          Top = 10
          Width = 267
          Height = 41
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
            'NOME DO CLIENTE')
          ParentFont = False
          TabOrder = 5
        end
      end
      object DBGrid1: TDBGrid
        Left = 0
        Top = 57
        Width = 1226
        Height = 463
        Align = alClient
        DataSource = dsCliente
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
        OnDblClick = Button2Click
        Columns = <
          item
            Expanded = False
            FieldName = 'CODIGO'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = []
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOME'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = []
            Width = 211
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ENDERECO'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = []
            Width = 210
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CIDADE'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = []
            Width = 163
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'BAIRRO'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = []
            Width = 176
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'UF'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = []
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CPF / CNPJ'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = []
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DATA_CADASTRO'
            Title.Caption = 'DATA DE CADASTRO'
            Visible = True
          end>
      end
    end
    object tsCadCliente: TTabSheet
      Caption = 'CADASTRO'
      ImageIndex = 1
      object Label2: TLabel
        Left = 32
        Top = 32
        Width = 50
        Height = 13
        Caption = 'CODIGO'
        FocusControl = DBEdit1
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object Label3: TLabel
        Left = 31
        Top = 94
        Width = 33
        Height = 13
        Caption = 'NOME'
        FocusControl = DBEdit2
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object Label4: TLabel
        Left = 32
        Top = 157
        Width = 64
        Height = 13
        Caption = 'ENDERE'#199'O'
        FocusControl = DBEdit3
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object Label5: TLabel
        Left = 32
        Top = 219
        Width = 47
        Height = 13
        Caption = 'CIDADE'
        FocusControl = DBEdit4
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object Label6: TLabel
        Left = 31
        Top = 282
        Width = 46
        Height = 13
        Caption = 'BAIRRO'
        FocusControl = DBEdit5
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object Label7: TLabel
        Left = 540
        Top = 219
        Width = 14
        Height = 13
        Caption = 'UF'
        FocusControl = DBEdit6
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object Label8: TLabel
        Left = 31
        Top = 347
        Width = 64
        Height = 13
        Caption = 'CPF / CNPJ'
        FocusControl = DBEdit7
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object Label11: TLabel
        Left = 31
        Top = 416
        Width = 120
        Height = 13
        Caption = 'DATA DE CADASTRO'
        FocusControl = DBEdit8
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object DBEdit1: TDBEdit
        Left = 32
        Top = 51
        Width = 134
        Height = 21
        DataField = 'CODIGO'
        DataSource = dsCliente
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
      end
      object DBEdit2: TDBEdit
        Left = 32
        Top = 113
        Width = 500
        Height = 21
        DataField = 'NOME'
        DataSource = dsCliente
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnKeyPress = DBEdit1KeyPress
      end
      object DBEdit3: TDBEdit
        Left = 31
        Top = 176
        Width = 500
        Height = 21
        DataField = 'ENDERECO'
        DataSource = dsCliente
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        OnKeyPress = DBEdit1KeyPress
      end
      object DBEdit4: TDBEdit
        Left = 31
        Top = 238
        Width = 500
        Height = 21
        DataField = 'CIDADE'
        DataSource = dsCliente
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        OnKeyPress = DBEdit1KeyPress
      end
      object DBEdit5: TDBEdit
        Left = 31
        Top = 301
        Width = 250
        Height = 21
        DataField = 'BAIRRO'
        DataSource = dsCliente
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
        OnKeyPress = DBEdit1KeyPress
      end
      object DBEdit6: TDBEdit
        Left = 537
        Top = 238
        Width = 29
        Height = 21
        DataField = 'UF'
        DataSource = dsCliente
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
        OnKeyPress = DBEdit1KeyPress
      end
      object DBEdit7: TDBEdit
        Left = 31
        Top = 366
        Width = 200
        Height = 21
        DataField = 'CPF / CNPJ'
        DataSource = dsCliente
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        TabOrder = 6
        OnKeyPress = DBEdit1KeyPress
      end
      object Panel3: TPanel
        Left = 0
        Top = 460
        Width = 1226
        Height = 60
        Align = alBottom
        Color = clSkyBlue
        ParentBackground = False
        TabOrder = 7
        object Panel4: TPanel
          AlignWithMargins = True
          Left = 1048
          Top = 4
          Width = 174
          Height = 52
          Cursor = crHandPoint
          Align = alRight
          Color = clWhite
          ParentBackground = False
          TabOrder = 0
          OnClick = Panel4Click
          object Label9: TLabel
            AlignWithMargins = True
            Left = 55
            Top = 16
            Width = 92
            Height = 16
            Cursor = crHandPoint
            Caption = 'GRAVAR | F1'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
            OnClick = Panel4Click
          end
          object Image1: TImage
            Left = 7
            Top = 0
            Width = 48
            Height = 42
            Cursor = crHandPoint
            Picture.Data = {
              0954506E67496D61676589504E470D0A1A0A0000000D49484452000000300000
              00300804000000FD0B310C000000E94944415478DAEDD6310E823014C6F18FD1
              09BC0BE2EEE2AD44568FE20D7473F438DEC0123458E86B5F5FDBC1E4BD848485
              FF2FA4B4A142E1A9145040010516D3E2804B39A0C51D5B9C319401A6FC381691
              0BD8997CF3B92F0090F93C80279F03F0E6D381403E1508E6D300463E0560E5E5
              40871B272F05D8791750E38A139E79F26BA0310F7778E1481251F925B0C1C32C
              DE3814B137F99A9F5FBF416F1E034944E75D6B401382BCFB2B7213A23CF599AE
              09619EDE07360169DEB7D17E0948F3FE9D3C13DF89CE878E0A9B10E4C367D14C
              88F29CC36E228479DE69DA9B4B98FFBB7F53051450C0396F76214B315D293414
              0000000049454E44AE426082}
            OnClick = Panel4Click
          end
        end
        object Panel5: TPanel
          AlignWithMargins = True
          Left = 848
          Top = 4
          Width = 194
          Height = 52
          Cursor = crHandPoint
          Align = alRight
          Color = clWhite
          ParentBackground = False
          TabOrder = 1
          OnClick = Panel5Click
          object Label10: TLabel
            Left = 48
            Top = 16
            Width = 120
            Height = 16
            Cursor = crHandPoint
            Caption = 'CANCELAR | ESC'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
            OnClick = Panel5Click
          end
          object Image2: TImage
            Left = 5
            Top = 1
            Width = 40
            Height = 38
            Cursor = crHandPoint
            Picture.Data = {
              0954506E67496D61676589504E470D0A1A0A0000000D49484452000000300000
              003008060000005702F987000001584944415478DAEDD6A14EC35018C5F13699
              98C063F620888AD9E92140F20404C15B4C4CE016923948008598C4EC9126119C
              266D52D196DE7BFF1F1F4BEE498EEEF9ADD9F695C599A7F41E9001DE0332C07B
              4006780FC800EF017F0D98A93BF5593DC25BD6EA95FA6805A8C7BFA8D7EA495D
              81887AFC6BF38CADFA6001786BC6B7A110DDF16D36C5C4371102B86F3E9D6E52
              117DE3BFD51BF58306D088E4F131000A818C8F05A422B0F1298058043A3E1510
              8AC0C71380A90893F114E037C4A5D578123086985B8DA70143886ED0F1168031
              043EDE0AD0F785AD431F802680A1F166081230F45369FA2628C0D8EFFCA2E0AF
              581430E54FCAE214470021FFB026881440CC798023620129B70D8A8801108719
              860805905725820801589CC4C98810C097BA04C78F21F6EA1D0DB8500F6A058E
              EF43BCABB7CD3350408BF8549FC0F15D4415323E06F0EF9201DEC900EF648077
              32C03B670FF8014A798E31E4A32A930000000049454E44AE426082}
            OnClick = Panel5Click
          end
        end
      end
      object DBEdit8: TDBEdit
        Left = 31
        Top = 432
        Width = 134
        Height = 21
        DataField = 'DATA_CADASTRO'
        DataSource = dsCliente
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 8
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1234
    Height = 63
    Align = alTop
    Caption = 'CLIENTES'
    Color = clWhite
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -15
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentFont = False
    TabOrder = 1
    object Image3: TImage
      Left = 1
      Top = 1
      Width = 1232
      Height = 61
      Align = alClient
      Picture.Data = {
        0954506E67496D61676589504E470D0A1A0A0000000D49484452000005500000
        003C0806000000807091CE000000097048597300000EC400000EC401952B0E1B
        0000047369545874584D4C3A636F6D2E61646F62652E786D7000000000003C3F
        787061636B657420626567696E3D27EFBBBF272069643D2757354D304D704365
        6869487A7265537A4E54637A6B633964273F3E0A3C783A786D706D6574612078
        6D6C6E733A783D2761646F62653A6E733A6D6574612F273E0A3C7264663A5244
        4620786D6C6E733A7264663D27687474703A2F2F7777772E77332E6F72672F31
        3939392F30322F32322D7264662D73796E7461782D6E7323273E0A0A203C7264
        663A4465736372697074696F6E207264663A61626F75743D27270A2020786D6C
        6E733A4174747269623D27687474703A2F2F6E732E6174747269627574696F6E
        2E636F6D2F6164732F312E302F273E0A20203C4174747269623A4164733E0A20
        20203C7264663A5365713E0A202020203C7264663A6C69207264663A70617273
        65547970653D275265736F75726365273E0A20202020203C4174747269623A43
        7265617465643E323032322D30312D30373C2F4174747269623A437265617465
        643E0A20202020203C4174747269623A45787449643E66303563366435392D66
        3965312D343064392D623932332D3862623136373535643930643C2F41747472
        69623A45787449643E0A20202020203C4174747269623A466249643E35323532
        36353931343137393538303C2F4174747269623A466249643E0A20202020203C
        4174747269623A546F756368547970653E323C2F4174747269623A546F756368
        547970653E0A202020203C2F7264663A6C693E0A2020203C2F7264663A536571
        3E0A20203C2F4174747269623A4164733E0A203C2F7264663A44657363726970
        74696F6E3E0A0A203C7264663A4465736372697074696F6E207264663A61626F
        75743D27270A2020786D6C6E733A64633D27687474703A2F2F7075726C2E6F72
        672F64632F656C656D656E74732F312E312F273E0A20203C64633A7469746C65
        3E0A2020203C7264663A416C743E0A202020203C7264663A6C6920786D6C3A6C
        616E673D27782D64656661756C74273E53495354454D4120444520434F4E5441
        533C2F7264663A6C693E0A2020203C2F7264663A416C743E0A20203C2F64633A
        7469746C653E0A203C2F7264663A4465736372697074696F6E3E0A0A203C7264
        663A4465736372697074696F6E207264663A61626F75743D27270A2020786D6C
        6E733A7064663D27687474703A2F2F6E732E61646F62652E636F6D2F7064662F
        312E332F273E0A20203C7064663A417574686F723E48656E7269717565204768
        656E6F3C2F7064663A417574686F723E0A203C2F7264663A4465736372697074
        696F6E3E0A0A203C7264663A4465736372697074696F6E207264663A61626F75
        743D27270A2020786D6C6E733A786D703D27687474703A2F2F6E732E61646F62
        652E636F6D2F7861702F312E302F273E0A20203C786D703A43726561746F7254
        6F6F6C3E43616E76613C2F786D703A43726561746F72546F6F6C3E0A203C2F72
        64663A4465736372697074696F6E3E0A3C2F7264663A5244463E0A3C2F783A78
        6D706D6574613E0A3C3F787061636B657420656E643D2772273F3E0D45E97100
        0013D14944415478DAEDDD7974D4D5DDC7F1CFEC334908204229A8A760EB4259
        144416457D8A20AB8A520A96C5A065D116959EB65A6B5504974A15AA22BBB8B1
        A8AC5241B1C803B2C922822CA202415659B34E3249669EDFBDC98424243C5AF4
        E849DE2F8F673233F7777FF7FEF867CEE77CEFBDAE9863CDAEFDFADB9C65DAB2
        EF6BA58573E572B9040000000000000055492C1653F550404DCFFF8946F6B856
        AD1AD6976BC39E83B1EBFEF1AA3232C3F207FD72BB5CB6A141900A0000000000
        00A0B22B9987469DBF23391125272568D99FFBCAD56DECACD8C20DDBED079182
        A86D4C700A000000000000A0AA8967A37E8F5BE99961756B71895C357EFF742C
        1CC92734050000000000008022264C0DF97D7205063D1173152DDB2744050000
        0000000050D5C5B352FB1A1CFC648CF014000000000000004E8967A604A80000
        00000000005046A900F5871E0C00000000000000FC1811A00200000000000040
        05085001000000000000A00204A8000000000000005001025400000000000000
        A800012A0000000000000054800015000000000000002A40800A000000000000
        0015204005000000000000800A10A00200000000000040050850010000000000
        00A00204A800000095542C1693CBE572FE97DC72C9FCE88BC662A77D5FDE3515
        F555F2BD515EDB338DA5BCCFCAEBFB6CFAFDA6CFC465FFD3377A2E000000A8BA
        08500100002A211302BADD269C947222F9524181E471CBE7F5C8EB76DB80B020
        1AB56D4D7868DA79DCAED302CD9241A9695FB69D51103DF3CFC9787B739F68B4
        705C9EA2F715F51D6F7B26A61FF737686B03E4A2F9C45FC379E69944656FEA3C
        0FAF792E1EB70D54A304A8000000288100150000A09231C1A60922C3917CB9DD
        6E353BBF8E7E5EE71CED3F91AE6D078FEA44568E0D0F8341BF6D9FE0F7DAC030
        2B274F51C56CC8585E5568C8EFB3FD66E5E6D990311E4626067CC5B59C657F58
        9A4FCD38F2A25105BC1E057D5E7B7D6E7EBE7C1E4F71086B3E37EFB322111514
        C4E42F6A1BEFB1649C195361F5A8E92337AF407E9FD3D6EBADE0FE85E16C7624
        CF8E37525060C3D626E7D5D105B5929DB1FB75E06486B61F38A6E35961FB5DC8
        791ED16F59610B000080CA8B00150000A012290C4FDDCACE8DA851FDDA9A38A0
        8B5A35A86FAB2BF30BA2DA77225DDB0F1ED32BAB366BE6DAAD4A0E05B578786F
        5DD9A09EFEF9EE5AFDE5CDA50A05BC8A95F98568AE9D39A4876E6D71899EFBCF
        3ADD3B63890D53AB3BD76F7CF80ED548082ACF54B9168FA3B0F2D30490BDC7CF
        D17B6BB76968F7ABF5DC6D1DB5F9ABAFD5CBF9ECCB232795E8F72A333B5763FB
        76D2B0EB5B6AF6861DEAF9AF37D4BB6D134D4DE9A6ACA2E0B36445ACA978AD91
        10B06318376FB97EE7F4FBFC6F6F50464E4425F34E138626047CDAB0E7A0BA8C
        996543D43AC9897AB15F27DDD8EC225BC11AB7FF4486761F3D69E7F686F35C12
        828152CBFA010000507511A00200005432F12ACAE5F7F757D3F3EA94DBE6F185
        2BF5E0CCF754B366B256FDF5765DF2D35A5AB173AFDA8F7EDD06B065990075D1
        7DBD757DA30636906CF7D42B8AE417A8566248BBFFF17B25F87D158EE7A6E7DE
        D082E59BF4C75FFF4AA37B5D6F3F7BF29D557A60E61225574B547A565853EFBC
        51295737D3A1B44CD51B3E5603AE6AAA9706763FE33CEF7F6BA99E9AFE9E86F5
        FC95C6DED6B1C2765F1C3EAE1623A62A3D234BE352BA69E8FFB428FECECCC184
        CBF16ADAFB662CD19877562AB15AC2FFBB3501000000AA0602540000804AC254
        679A30302B235B77DFD05ACFF7ED643FDF76E0A89E5FBA5EF56A24E992BAB574
        282D4B8FBDBD424733C376F9FDAA076E57E3F36AEB3FDBF7A8CBB3334B5566C6
        9900F5ED7B7AA953E30BB5EACB7DEA307ABA5D427F4E62489F8D1AA29ACEEBFC
        8F776AEA879FA85AD07F6A4F52A7ABD54EFB3DFBBED63DDDAED6983E8541E7A6
        BD87D5E6F169B662341C8E68D2C0EEBAF39ACBB4FBC849357978A2EA544B54BB
        8BCE57664E44BFAC5F5B8FDC748D0D394DF0BB6ECF41550F05B471EF416DF97C
        9F86746EA317FB75B661E823F3976BE7E1E30A780B97E17B9DB91CCFCAD1D21D
        7BECF2FEFFFD735FB56A58DF2EEB7F78DE72CDDFB4D356CF9A7B987D595F5FF3
        69D1D6072E0E930200008045800A000050899890313B9CAB5707DFACBE6D9AD8
        A0F09A275FD5AA4F764A01BFE4F5985392E4F37B6D5BB3EFE8EA076F57E3FAB5
        B574FB1E753E4380BAF09EDFE886C60DB5E6CBFD6A3FFA35E5E617D80075C7A8
        21F675CA8A4DBAF385B7A4604025F700088602CAC9CAD1B02E6D34B64FC7E2C3
        AB5A8F9AA68DA9871475FA9E94D2AD38406D31628A4E64E798525AC979EDD8EA
        977A77F86DF69A3E13E66AE6FBEBA4A4907C3EAFF272221A7CFD951ADFBFB3FD
        BEE333D3B564ED56292168E769774C75BB9DB63E057D1EAD7D304597D63B571B
        520FEA8A11534F8D33AFC0B6F5878284A7000000288500150000A01289151DEE
        B4F44F7DD5FAC2FAFAE2EB13BAFCD1C9B622D47C5E108BDA8395CC714BE6B0A6
        80CF6397F07FAB0075D77EB57FFA54801AAF4035D59BFD26CD5792A94035C164
        E1694FF67E9919591AD6A5AD0D5073F3F29DFB7AF5D7D91FE889052B248F5B93
        6FEFA63B4C807AF4A49A3F3AC5EE571A72DAA465E7E8D62B2ED55B77DD6AC7F1
        BB97FFADC91F6C547252C8CE35233D5B833B9C0A507B8E9BADD9EBB72B391428
        5C825F3415539D6A0EC1FAE86F29BAB86E2D7DBCF790DA3EFE72F1D2FD78566A
        AE213C050000404904A80000009588A9EE3401E6964707A97ECD6A85A1E89899
        C541614926543527D8AFFE8E02D4D7567FAA7E93E72B29E02F3E80C904B5E6DE
        665B8178806A0E9B3295AF1FECD8A31B9E99A1BC48BE260FEC5E2A40CDCA8DC8
        EFF5282B3B473D5A36D29CBB7BDAFEEE7869A1A67EB041894921FB3E2B335CAA
        02F5D617666BCEFAEDAA961028DEC3D404A2E62F13A22E1EDE471D1A35B09F0F
        74FA7AE93FEB54AD7A9233A628C129000000CA45800A0000508998A0F39CC4A0
        768C1AAA9ACEEB9BEBB7ABD78B736C3567D91F7DDF75803A6DE566A58C2BB184
        BFA8023531E82F15A09ECCCED189AC1C9D7F4EB21AFF7DA23E4B3DA429837B68
        60BB66671DA0761D334BEFACFD54AE84A062454BF8DD1E8F3D542BCBB9679FAB
        9A6AFAA09B6D5B13A8DEF2C25BFAB7F38CE2874611A2020000A02C0254000080
        4AC2C47E9182027B00D3B69183EDE148AFADDEA27E13E729211828AE0A8DFBEE
        02D4C2B076C6DAAD1ABD784DE1F2F9A2AD04C2913C6D3F785419E9A796F0EF3F
        91A137D66DD37D1D5BE9AED716EBC5052BF492D3F7ED57353DAB00D58CF1EED7
        17DB03AACC72FD68346A2B5D538FA729F5689AED2FDBE977C280AE1A74EDE5F6
        7A53B19B3275A15E5DFEB182CEF332338F12A2020000A00402540000804A221E
        A0FE2439515B1F2B0C505F5EB959B74F9EFFBD06A85F3C71970D4D4D1B4FD1B5
        E65E1EB75B9F1F3E6E0F8B3A7E3C4DC3BA5E555C81DA7FF2022D18D64BFFDEFC
        85BA3DF98AA60CBDF5BFAE401DD2E14ABDD8AFB3F2A351FB0CE2DB159865F9A6
        8FA7DE59A5FBA7BF6B97EA9B319B79CF187CB37A5E716971C5E9C8851FEAA139
        CBECDEACE67A4254000000C411A00200005412E505A8D3567EA294490B9410FA
        FE03D46851D56949BB8E9C50CBC75E2A15A09A03A25A8E98AA8903BAA855C3FA
        AAF187D11ADDEB7A0DB9AEF95907A81EE7FEF1E0D354979A10F71F8B56EB2FAF
        2F5692F35C4C65AC998B19EB84FE5D7447BBCB0A0FD872E63C7ED9460D7D6591
        827EEF0FFD4F090000801F1102540000804AA2FC0075B352BEE70AD4CF1E1FAA
        9ACEBD666FD8A17FBEBB46C9C1534BF8B373F3F4C9BEC3A596F09BBD472FBCFF
        050D68DB54236FB94E9D9E9DA18E8D1A6AF80DADCE6A09BF094C87CF7A5F1FA7
        1EB24BF8CD7BD3C7AE2327F5C5D7C7E5F7780A435E677E66BFD348244F239CFB
        3FD4BD5D71D8FAD0DC651A396FB9129CF998CFA84205000000012A0000402551
        DE1EA8AFAEDAA2FE93BEEF3D50E387487DA29417664B417FE121527650AED30E
        91CACDCB57A38726A85652823EFA5B8AFEF5FE3A1B569A3D51F71C3DA9CBCFE2
        10A92E63666AD1DAAD72266C26680FB2723BFD98BEE2CBF563252A65C359E1E2
        71D9793AD7B419354DEB771F5042C04F880A0000000254000080CAC4049DE640
        A7ED2387A8565248B33EDAA6DEE3E72814F0A94C7EFA9D07A8AFAFF9547D27CD
        5752C05F2AAC35DD65960850CDC1522D1F9BAACF0F9F50EAD3BF57464E446BBE
        DCAF7E6D9B68CFD1345DFEE8E4FF3A40ED396EB666AFDBAE6A09015B656A98C0
        B4EC9EA6F110D5CCD584BB2F0FBD45FDDB36B5DFD925FFD3DF5562B584E23E00
        0000507511A00200005422A662D204989B47FC4EE7D54CD6BB9FEE52F77FCDB2
        CBD3CBFAAE03D4D7566F51BF89A757BB7A8A42CA92016ADBC75FD6A6CFF76AEA
        D05B957275E1E1510DCEADA1BDC7D2D5EC9149FF75807ACB0B6F69EEBA6D4A08
        054FABB82DCB84A85E8FDBB947AE3A5FF60BBD736F6FFBF984651B35C4B94FA2
        59C61FE3A7320000405547800A0000508998D0D0EF71EBC30706A8D9F93FD1D6
        0347D47AE4B4524BD1E3859879F9D1D303D431336D65A66952F247E2370E5027
        CDB74BDF4D3819BFDEEB762B33E3D41EA8E610A9AB4C80BA73AFFA5CD75CD307
        DD5C7C9FAF8EA7ABE9C3671BA06E5762890AD4925C45138B7F63F76975C673CD
        4517E8BD3FDEA680734FB3A5C03DAFBC63EF41052A00000008500100002A1193
        0F86F3F235F7EE9EBAB9F9C5CA71FE6EF6F024EDDC7B482E136C9A7D410BA2A6
        2C547EBFCF1EACB4FAC1C20075D98E5475F8E7741B329A08D544A0F1CAD56FBC
        847FFC5C058AB60B8847A83EE71ED999A52B505B8F9AA6CDA987747EED1ADAF4
        C89DB61FE33B0950D76E55B0E810A8B8F89EA766CC1E1310BB0B436213EE86D3
        B374639BC69AFF875EB6CD88052BF4F01BEF2B2939C9EE890A000080AA8D0015
        0000A012F1BA5D76BFD1477FDD5E7FBFB19DFDCC2CE37FECED15B62A34391450
        BD1AD574383D4B8B3FFD52097E9F561555A0BEBD69A77A8D9FABA0CF5314804A
        39917C1BA89AA5EC0B879D3940354BDF87BEB6C81E5E65B60730D7C73703484B
        CB2C5581DA7AE44BDA7AE0A80D594D70D9BDD92F6CBBB30950CD3DBB8E9DA5F7
        B7ED56B5A0DF8E397E7F13249B20B761ED1A3A9E15B66388DABD51A55A89414D
        1CD055D7376A60DB9A7D5C5FFF7093129D3999E09843A4000000AA3602540000
        804AC21E8CE476D9D0F3929F9EAB750F0D5462C067BF3361615E4181AD2C35C1
        A4094F3B3F3343C9A1A03E7CA0BF9A9C574787D3B2742C2B6C4358132C9AFD41
        D77CB94F835F59A4487E417105EA879F7FA51B9E995E1CA0C60FAC3A70324327
        B373EDF5E607A6A9DEAC5D2D414F2F5AA3D1B396E8DE5FB7D7B3BD3B283327A2
        B64FBCACED078E2A3F37A27BBBB4B59F9B0034F5589A9A8F98522A40BDE98A4B
        35E7AE9E766EE505A883DAB7D484015D6C65EBBE1319650EB07239F38EEAE6E7
        DF547A38573B1F1F6AAB6A4F3AFD9A10D5F4593739D1794E7EDB3EF5689A5A38
        F74FCFC92D77DF58000000543D04A8000000958809514DF0979D9DA381D735D7
        94946EE5B69BB7F133F578FE4D252704F5D9A8A1AA5B3DB1C23EEBDE3746874F
        6668D1F0DBD4A9C985DA7EF0A8AE183155B979F9AA552D41879FBDF78C631AB7
        7483EE1E33530FA674D5C81ED7D9CF7EF1C0387B7094A9516D706E75BB8CDF84
        98265CBDE04FCF29333762F723CDCCCAD16FDA34D1CC213DEC75BF9D384FD357
        6E566262D056979A6ADB7BBB5CA567FB7438E3182E7F64B2F69D48D757A38729
        E8F396DBC654A6F699304FEF6DF9C21E845572DF58000000545D04A800000095
        4CBC12359C9BA72B1BD6D72D2D2ED6CF6AD5B09599A64A34F558BAD6EEDAAF8D
        A9876C4879E73597A96EF524450A0A54BCEEDE798D57B33EBF74BDD2C2B9BAF6
        E20BD4B5E9CFB5EBC8494D5BB9D9068C21BF4FC3DAB7745EBDF67DACC4BA7D53
        519A14F46BC9D6DD7A6FE3676AD7B8A16EBAFC22ED3874CCEE976ABE3715A239
        F905EAE47C670E723A9619D6F8651BED583CE6FE79F9FA65BDDABAAD75631D77
        BE33D71DC9C8B6D5B126DB0C3BE36BEDCCB147F38B959B9F5F34FF53733001A8
        19D7E4159BEC75A6EDC575CF5183DA3555CF9973C8E7B5D5A65BF61FD15C678C
        5F1D4B5342C0670F8F223C0500008041800A000050C9C48A96B09B00323B374F
        CACB97E25597798521A3FC3E5B8969DAE666E798B453A7762C2DC1F9C89F18B2
        072F9925F2CA8998B5FD0A8402366034A16C242B7CEA58FBD30723057C4A0C06
        ECB2FCB2D7DBB0D7F46DBE33FDBBDD0A24044B7D67B60A88869D31BADCF22604
        ECC14FF139DA6BCD9CC2B9D219024F6F62D05E97639E477E41E1B87C1E7B3FFB
        DE99BF27E857C0EBA5F214000000A510A0020000544226603421A009184D1618
        2D11389A68D01CB0142DAAB2F4D813E92B0E0CF36D6569E1D600A62AD5FC6D2A
        34E3F7F09E61AF507B00553466434973ADA728FC2C797D71DFAEC2B2D1FC32DF
        B95DAEA2FD484B7F179FA7EDD775E6FD4A4BCEC15C6AAE36FBBCC6FBB2CF281A
        B3CF89F0140000002511A00200005462B17202C158150F097926000000F83608
        5001000000000000A00204A8000000000000005001025400000000000000A800
        012A0000000000000054800015000000000000002A40800A0000000000000015
        204005000000000000800A10A0020000000000004005085001000000000000A0
        0204A80000000000000050011BA03AE472B97EE8B100000000000000C08F423C
        337505063D11337F10A202000000000000C0A9F0D4BE26DFF5742C5250F0438F
        09000000000000007E344C781AF479E5EA3676566CE1861DAA96145224BF802A
        54000000000000005596094EFD5E8F3232C3BAF18A4BE4FA38F550ECDAA75E55
        7A5658A1A05FD158E1995204A900000000000000AA8A58512EEA76B914CE89A8
        7A52482BEEEF2F973941EAA3DD0774DF8C255ABFE7A0DC6E8253000000000000
        005553341A538B9FFD5463FA74D0950DEAE9FF002628E9063EE8B2E400000000
        49454E44AE426082}
      Stretch = True
      ExplicitLeft = 440
      ExplicitTop = 32
      ExplicitWidth = 105
      ExplicitHeight = 105
    end
  end
  object qrCliente: TFDQuery
    AfterInsert = qrClienteAfterInsert
    Connection = Dm.Conexao
    SQL.Strings = (
      'SELECT * FROM CLIENTE')
    Left = 196
    Top = 274
    object qrClienteCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qrClienteNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Size = 100
    end
    object qrClienteENDERECO: TStringField
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      Size = 100
    end
    object qrClienteCIDADE: TStringField
      FieldName = 'CIDADE'
      Origin = 'CIDADE'
      Size = 100
    end
    object qrClienteBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Origin = 'BAIRRO'
      Size = 50
    end
    object qrClienteUF: TStringField
      FieldName = 'UF'
      Origin = 'UF'
      Size = 2
    end
    object qrClienteCPFCNPJ: TStringField
      FieldName = 'CPF / CNPJ'
      Origin = '"CPF / CNPJ"'
    end
    object qrClienteDATA_CADASTRO: TDateField
      FieldName = 'DATA_CADASTRO'
      Origin = 'DATA_CADASTRO'
    end
  end
  object dsCliente: TDataSource
    DataSet = qrCliente
    Left = 276
    Top = 274
  end
  object PopupMenu1: TPopupMenu
    Left = 652
    Top = 210
    object GRAVAR1: TMenuItem
      Caption = 'GRAVAR'
      ShortCut = 112
      OnClick = Panel4Click
    end
    object CANCELAR1: TMenuItem
      Caption = 'CANCELAR'
      ShortCut = 27
      OnClick = Panel5Click
    end
    object CADASTRAR1: TMenuItem
      Caption = 'CADASTRAR'
      ShortCut = 113
      OnClick = Button1Click
    end
    object ALTERAR1: TMenuItem
      Caption = 'ALTERAR'
      ShortCut = 114
      OnClick = Button2Click
    end
    object CANCELAR2: TMenuItem
      Caption = 'EXCLUIR'
      ShortCut = 115
      OnClick = Button3Click
    end
  end
end
