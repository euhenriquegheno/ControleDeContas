object FrmContasReceber: TFrmContasReceber
  Left = 0
  Top = 0
  Caption = 'Contas a Receber'
  ClientHeight = 727
  ClientWidth = 1362
  Color = clSkyBlue
  CustomTitleBar.CaptionAlignment = taCenter
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PopupMenu = PopupMenu1
  WindowState = wsMaximized
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1362
    Height = 49
    Align = alTop
    Caption = 'CONTAS A RECEBER'
    Color = clHotLight
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -16
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentFont = False
    TabOrder = 0
  end
  object pcPrincipal: TPageControl
    Left = 0
    Top = 49
    Width = 1362
    Height = 678
    ActivePage = tsContasReceber
    Align = alClient
    TabOrder = 1
    OnChange = pcPrincipalChange
    object tsContasReceber: TTabSheet
      Caption = 'CONTAS A RECEBER'
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 1354
        Height = 57
        Align = alTop
        TabOrder = 0
        object btnSair: TButton
          AlignWithMargins = True
          Left = 4
          Top = 4
          Width = 77
          Height = 49
          Align = alLeft
          Caption = 'SAIR'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnClick = btnSairClick
        end
        object btnExcluir: TButton
          AlignWithMargins = True
          Left = 772
          Top = 4
          Width = 81
          Height = 49
          Align = alRight
          Caption = 'EXCLUIR | F3'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          OnClick = btnExcluirClick
        end
        object btnIncluir: TButton
          AlignWithMargins = True
          Left = 859
          Top = 4
          Width = 90
          Height = 49
          Align = alRight
          Caption = 'INCLUIR | F2'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          OnClick = btnIncluirClick
        end
        object btnAlterar: TButton
          AlignWithMargins = True
          Left = 674
          Top = 4
          Width = 92
          Height = 49
          Align = alRight
          Caption = 'ALTERAR | F4'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
          OnClick = btnAlterarClick
        end
        object pnReabrir: TPanel
          AlignWithMargins = True
          Left = 955
          Top = 4
          Width = 168
          Height = 49
          Cursor = crHandPoint
          Align = alRight
          Color = cl3DLight
          ParentBackground = False
          TabOrder = 4
          OnClick = pnReabrirClick
          OnMouseLeave = pnReabrirMouseLeave
          OnMouseMove = pnReabrirMouseMove
          object Image3: TImage
            Left = 15
            Top = 13
            Width = 41
            Height = 23
            Cursor = crHandPoint
            Picture.Data = {
              0954506E67496D61676589504E470D0A1A0A0000000D49484452000000200000
              0016080300000096876E760000000467414D410000B18F0BFC61050000000173
              52474200AECE1CE900000147504C544500000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000FFFFFFCDB417190000006B74
              524E530008BCF5CE791C07B0F2EFF6FCC63F02243231417BD8DF27B8C31B2E28
              D7FD771ADC3BCB19AEE54440F4ADE44EFE18AC4F46F8F0AB518AC017AAE6523A
              F96616A803CFB111A6A150639FEA2BA968E9D4C4C5BA92490B015AEB1D0A0C5C
              9E125DEC5EED9D609B1061EE9A5B6154726900000001624B47446CCC01303B00
              0000097048597300000741000007410107EB9922000001234944415478DA6364
              40058C8C9950D60C4646C65F40013405EC4061A8D284858C8C9F3014F0C314FC
              6762640C5BFDE313BA026420CE18BC8E11AE408AF129860A1946B8850C0A2F24
              19EF61A81009DF0155A0C2E8B69BF12686028DC77210052A6C8E0718AF60BA42
              E8873258811EA3CD6EAE0B589C690871831E9BF96EFED3D8FC61667A06A8C082
              D1E83CE3516CF236EF858026D8336A1F60C566BEE37329CD1B8C8C2A8A6A9B35
              5E89BFC39017666454DCA1B19551FF9F1DC3665FAC21B9C0F1C21306465F46D9
              CD868C7B31645D40A1B81A1867618C8CC227551931E3648DFF2A10C5C810C6F6
              E7AA01E3225C3106D419C6C97816B70A90D161DC8CA7CD1EEEC1AD80813FF4DF
              690BC659B81530F047301EB5B9BD07B702A08ADF172CA66153000051D941B56E
              1343F20000002574455874646174653A63726561746500323031372D30342D30
              335431383A32363A31362B30323A3030480DDE2D000000257445587464617465
              3A6D6F6469667900323031372D30342D30335431383A32363A31362B30323A30
              30395066910000004674455874736F66747761726500496D6167654D61676963
              6B20362E372E382D3920323031362D30362D31362051313620687474703A2F2F
              7777772E696D6167656D616769636B2E6F7267E6BF34B6000000187445587454
              68756D623A3A446F63756D656E743A3A50616765730031A7FFBB2F0000001874
              4558745468756D623A3A496D6167653A3A68656967687400353132C0D0505100
              000017744558745468756D623A3A496D6167653A3A5769647468003731376F92
              233D00000019744558745468756D623A3A4D696D657479706500696D6167652F
              706E673FB2564E00000017744558745468756D623A3A4D54696D650031343931
              32333637373619AFE60A00000013744558745468756D623A3A53697A6500382E
              39314B42425455C0760000005D744558745468756D623A3A5552490066696C65
              3A2F2F2E2F75706C6F6164732F6361726C6F7370726576692F4E7A346D4D5677
              2F313230362F313439313235343339352D72657475726E6261636B7265646F61
              72726F775F38323933342E706E67529F13580000000049454E44AE426082}
            OnClick = pnReabrirClick
            OnMouseLeave = pnReabrirMouseLeave
            OnMouseMove = pnReabrirMouseMove
          end
          object Label12: TLabel
            Left = 79
            Top = 17
            Width = 74
            Height = 13
            Cursor = crHandPoint
            Caption = 'REABRIR| F6'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            OnClick = pnReabrirClick
            OnMouseMove = pnReabrirMouseMove
            OnMouseLeave = pnReabrirMouseLeave
          end
        end
        object pnReceber: TPanel
          AlignWithMargins = True
          Left = 1129
          Top = 4
          Width = 221
          Height = 49
          Cursor = crHandPoint
          Align = alRight
          Color = cl3DLight
          ParentBackground = False
          TabOrder = 5
          OnClick = pnReceberClick
          OnMouseLeave = pnReceberMouseLeave
          OnMouseMove = pnReceberMouseMove
          object Label13: TLabel
            Left = 72
            Top = 17
            Width = 124
            Height = 13
            Cursor = crHandPoint
            Caption = 'RECEBER CONTA | F5'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            OnClick = pnReceberClick
            OnMouseMove = pnReceberMouseMove
            OnMouseLeave = pnReceberMouseLeave
          end
          object Image5: TImage
            Left = 6
            Top = 2
            Width = 51
            Height = 44
            Cursor = crHandPoint
            Picture.Data = {
              0954506E67496D61676589504E470D0A1A0A0000000D49484452000000300000
              003008060000005702F9870000000467414D410000B18F0BFC61050000000173
              52474200AECE1CE900000006624B474400FF00FF00FFA0BDA793000000097048
              597300000EC400000EC401952B0E1B00000C294944415478DAED596B5454D715
              FEE6CE9DF7C0F01244401E4122414405A3121F516310159298262669D29862E2
              8AAB599ADAD576F5FD336DB2DAD5265D4953AB897DD868D2C408F88C26E22388
              6F1044419087C00CC3C0BC1FF7CE749F2B50100641CC4AB2560FEB3233E79E7B
              CEFEF6FEF63EFBEC2BC3B7BCC9BEAA8957AD5A059E97CB5C6E6FA820FA0D7239
              675529F81EBFDF1F282929F9660358B162256432591809FBA44EAB5E1BA255C7
              D99DEE769BD3FD99E8F7EFE7E55CB582979B098BBFB8B8F89B0340D2BA5C2E73
              7B7DF348C05FA527C72D295C90AD983C310AEDE66E9CAB6D44D5B566DB0D93A5
              D1E9F61C21CBECE364B20AA582378BA23F505A3A76CBDC1500858585F0787D90
              735CAC3F10581F13697869F9DCACD86573A623D2A0472010601601291C16AB03
              752D1DB8DCD88ACABA66577387F9B2CDE93A49D63812004E8AA2D875EBFCD40F
              855C0E02EAA3AFC29E3D7BEE1E8025CBF240B4E0D50A7E9156ADFA4D464AFC03
              4F3D9C2B23EDDF5C3C1018AC3102425A97FAAD0E17EA5B3B70A6A60197AE357B
              4D165BA34F10DA865B87D690FB0471273DFFA62008282D2D1D3F80C0C90FF0D0
              AFB721674AC242ABCBB3333F7746CC83D9F741AF5193B603C34FCE3A655CBF55
              64BD607AEC4E18BB7AE0F478873CC7711C4E565EC19EB2B35BB41ACD8B76BB1D
              7BF7EE1D0AA0A0A00097CE34E1DEACB85051F087DDA2BC01EB4BFF6971E0470B
              32964418741BBDE066C4461A10A65682A7FB1ED10F2B09E31F660E9521141392
              13C1112D065A86CD271B0EB69C43C9D13378FBC3835B743AED8B369B2D3800D2
              468E42C9FF56A757A5B24987689D2EBF28F45243260B55F1514A8ED3B0DF7212
              7CF9ACC908E3797C7EFE064C6E8184E46E3ED4F73C8D8B0A0FC5FA35CB6108D1
              0FA1D8708D7C8B691F7FF9CFA12D5A6D100BB00822399A3FF0A79CF9A9AFCC59
              9CD6AF0DA671D90001CC9D4678BD9E6117E3951C4E1D6946667432F2E6655154
              E270AB883C09141EAA93041B4D1B1580152B5660D2A449686F6BDF92FF4476D1
              EC455348D30149E0FA9A367499ECFD36B093097D3EEF908542C3D58898A04359
              7103363F5980A9C9F1642EFF9071CC3F46A3F93103983A752AAED45ED9B2FC3B
              B308401A5337EC563776BC7314616161083168A585BD3E97141207518BFA6313
              C2312D2701FB769D4746641C59603A24620F9095E749FB213A0C47CF3E816E86
              DCC0D801A4A5A5A1EE6A9D04207B7E2A4CED569C3B598F9E4E2F5E78B91021A1
              5AF8042FBA6CED14D684214B0B3E114A150F635B0F8EEFAF86ABC72B85CC7E90
              ECCF17C0BA82C5C84C9DCC42E3A019D8588BCD812F2BAF62E1AC7468554A09FB
              9801E43F995D34F99E09F8787B39E2E262B0BC701EE21363242DDB5C16D85DDD
              8345A785BB4C361CDD77095973929134251A3EAF0087DD73CB389042AEC158DB
              8D971E5D8AB4C4D84100BBED0E6C2F2D83DD6CC1A6E71F859AC2B1141CE4BD00
              3E1A038098496138525C8DF51B1F4758780851D90F0F51A7DB6E22F38A838437
              1B6DD8F7D15974D1E78458030A9E9E0D5D887A587E78DD3E941DA8464B4D2766
              A626213D290E5A0ABD4D1D9D3855558700F9D70B0FCE4272761684DE18CC2C50
              7AE21CB67C722478181D0C20A72826CE80A32597B17ED3E3D0E9D5B4C1D825CD
              33EAF439A0B4ABCA65385D568FBAEA1B5852301D2A95027A837A10C7034C90BE
              384F9748C1A1F5BA1957AA5A616CB540A034A4B3D381A97A3DD6E7A4829F188B
              1D171BD0D669F19385026CA6CE1EBBFC46A7E56D05CF6F70BBDD230378B020BD
              289A34597EB801CFBD9C07A546468EEBEEDF3D6B2B5B4893023267274933B436
              9A71F093F3502A798445E990BB341D6111BA7EA017CA1B10111D0246CB40AF56
              394E0AD9E86833C2E9B4E2F4B116245A39ACC94AC1CE7A130E54D61DA2FCEA3D
              1A2A999BC2B18C12C52AFA5AC95289E000EAEAB6CC5D9A58141EA54165B9094F
              14CD8756AF1AC4E36EB3435A3C3C4ADFDFCF6864E9B4A3A2EC2AE293A2B0303F
              A35FD8CE0E2B345A25F4A18CD3FFA39EADC745C0CF60DAEC28549EEE80FFBA93
              1C97F75F6CEF3EE413FDAF10C62BB74BB7470670CA8435EB1640A3530D8ADB7D
              F4E8EB63D1E76245237A2C4E345EE9902C337BE1947E0037C7073030F4B3CDB1
              9B007FF4DE71E43E3C1997CF1B71E9747B13A9FB2D1AFD3E8D36B20D6F60E639
              26001113B43879B089349989F4AC78C81583538281CDE71551FE452DF9421D66
              2F98829C05A950691441C7333C5E8F800BA71A5171B4168B0BEF41CD3909C0BB
              2AA57CBD47105132CA83CEB000E62C492C4A4E8B4065451BDA9B6DC8CC49C103
              CBD225DE069348A445AF5F35213E255272E4A03B2D8DF591F087765F40635D1B
              E2924291913D11E74FDE6000DEA6A0B0E1765ABF3D80C58945E933A325218C37
              ECE4CCCDE49819088BD4014105436F6A8CE0637AA9D3491B6445592D1EC84BA2
              3935527FC5E74D9409778C0F405656162A2B2BFB013047A5B49AA8D1428EEBA6
              0D4516941663599185D1D884104C9F13DB6714547CD14C161827008D46038FDB
              F3D79C4509EBA6E54CECA7015BD02FFA473DE9689665CA607B485F2B3FDC84EA
              73C6B7A8FF953B02909F9F4F8916CF84DE6488D0BC1E13A7E7FB37A3AFA27631
              C092CCD2EDCD569BB5DBB38EFC6CE71D01608D1D68A827C42F04F268D2688C9F
              30A39683ACD120E7B9CF28F47AEF18C0B7B1FD1FC0DD6C79CBF3D9879CFC9057
              287876E40BDC6E43FB4600608531B7D7CBAA7A99943ABF4A895B82C727ECA3EF
              EFD26DDB483EF1B5036081839DCC48EBB3B46AD5D6950FCCCCBA273E0625C7CE
              8997AE35FF542E97BFC1C27930105F2B00263C0BA12460864AC9FFED91453973
              9E7A38172AB50AC7CED6E0F7FF2C396877B90BD44A85E7AE01608BD22183F30A
              C24441F44FA7BDE23EFA1D434274D341FC3A0DA951C8E5D7795EDE4D7DFE91CC
              CF4A39A23F90A0E0E5EFE7E7CE58FCFCCA85502915D2E96FC78113D875E8CBED
              6EAFEFFB04401C370026B88F1236DA6898B01BF41AF5534993264C8E8F8E54EB
              342A3AF00830F7D8C516A3B9C7D8656DA4DF95F498F3D67998BE49EB1524F42E
              9BC3C5E9B5EA6D7973B31E5F5BB0888E962A29AD3874AA8A8E8F871BEC4EF713
              9C9C3B533C5E1F60C293B6D9E0190A85FC0FF767A42E7CE8FE4C6E6AE22430E1
              A5622D8D63002D563BAE36B7A3DBE618323D138E55B1CB2FD509D5D75A5FFF45
              D1639F596C8E5D733252C3C3A4520B58C51A6F7EB0AFB3C5D8F5724B87F9C3E4
              B8688CDB8957AD2A6075A0FB540AC5F695F36766AF5936AFB780EB1F9278F655
              9F83AF48C7ACEB37F0BBED9F76FE6CED23A69484D874BF5F94AA80EC1DC2EBFF
              28166A1A5A7FA9D7A87E4B912830EA03CD48DA274E6A69E1ADCBE766AD297A64
              B1C4D3DB55D638A91C39CCF4D4DFD466C21BDB3EC1C6D54B90929672B35CE370
              E1CFBB0E044E5CAC7D8794F063BAECA349294604C0847F366F2EB6951CFF41D6
              94C437363FBB521565081954351BAA60994493A60EB354FFBF15A8D3ED45D9F9
              CBD03B6C7871F55268E3E2C00EE9DB4B8EE2D3A367F689A27F2D81EF18EDABA7
              1101485182224DA85EFBE9A6A7F313E74E9B32A49A76ABF08C063BF69F404363
              33B4726E089D18A0C9A11A14CEBC17B1D33320D36A517AEC2C2B685D70B8DCCF
              D2E6553596F7664101F452C7C071DCD6D58BEF5FFDDDFCF923729B09DFD669C1
              1F77ECC544085835330D51F1B194F3F31898D4B2391805956106C8D46A9457D5
              E1CD9DFB3BCCDDB6E7E8DE41A90A37DE6C9409CFCCAF51293767A626BCF693EF
              15F2E1A123D7F2190093C58A9ABA26CC9C1481D0A848C8349AFE555885C2278A
              7079BCC47737BA7A6C2067A59059D9DD6AB26C0EA1704AF76EEBB4B705B07225
              7B45CA51D81467471AF4BB36127572D253A41D73A4C649B5FE00A31CEC6E0FDC
              C4758AE33091A0ECD55187B907468BD5DFD56377F6389C3D36A7DBE5727B2E13
              25B72A158A3D646D61ACC20F0B40A24E20104637FEBD66596EDED379B9234FD0
              EBB4676B1B5055DF22F90009E975BA3D36EA373BDC9E560A87D70541ACA7791B
              023777EB36DAC85C9C8CEB22ADBB43741AECDEBD7BCCC20F01209DC8A88F36AD
              57B3A726BFF6EA332B1411449D605187B904D3F2DF4B8F050E9FAE3A47DF3F26
              018D74A3853ED96522CB745376E966E629BD8B6FE8830220AA2CD46A941FBCF4
              D8D289D3A51A7E70EA3087FCFC4C35FEB5FFF8294A1D9EA19FF5AC923CDEB7EF
              E3B5C0CF49880DC47FA18FD7233D4E94F6385C9E1F92F0C58C4E77C2E3BB0DC0
              40A637B068D1FB2672C409940A5EA4AB83C6DE9113DE5500DFC6F65F8467778B
              62BE8BA90000002574455874646174653A63726561746500323032302D30352D
              31315431383A33383A35392B30313A3030332589A60000002574455874646174
              653A6D6F6469667900323032302D30352D31315431383A33383A35392B30313A
              30304278311A0000004674455874736F66747761726500496D6167654D616769
              636B20362E372E382D3920323031392D30322D30312051313620687474703A2F
              2F7777772E696D6167656D616769636B2E6F7267417BE2C80000001874455874
              5468756D623A3A446F63756D656E743A3A50616765730031A7FFBB2F00000018
              744558745468756D623A3A496D6167653A3A68656967687400353132C0D05051
              00000017744558745468756D623A3A496D6167653A3A5769647468003531321C
              7C03DC00000019744558745468756D623A3A4D696D657479706500696D616765
              2F706E673FB2564E00000017744558745468756D623A3A4D54696D6500313538
              393231383733399F5D407600000013744558745468756D623A3A53697A650032
              372E334B4242AC354F720000005E744558745468756D623A3A5552490066696C
              653A2F2F2E2F75706C6F6164732F35362F66773253596E422F323335352F7061
              795F636173685F7061796D656E745F6D6F6E65795F646F6C6C61725F62696C6C
              5F69636F6E5F3134333236372E706E6780D123700000000049454E44AE426082}
            OnClick = pnReceberClick
            OnMouseLeave = pnReceberMouseLeave
            OnMouseMove = pnReceberMouseMove
          end
        end
        object btnGerarRel: TButton
          AlignWithMargins = True
          Left = 87
          Top = 4
          Width = 130
          Height = 49
          Align = alLeft
          Caption = 'GERAR RELAT'#211'RIO'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 6
          OnClick = btnGerarRelClick
        end
      end
      object NK: TDBGrid
        Left = 288
        Top = 57
        Width = 1066
        Height = 559
        Align = alClient
        DataSource = dsConsulta
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
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
        OnDrawColumnCell = NKDrawColumnCell
        OnDblClick = btnAlterarClick
        Columns = <
          item
            Expanded = False
            FieldName = 'CODIGO'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = []
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CLIENTE_NOME'
            Title.Alignment = taCenter
            Title.Caption = 'CLIENTE'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = []
            Width = 400
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VALOR'
            Title.Caption = 'VALOR - R$'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = []
            Width = 150
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CATEGORIA_NOME'
            Title.Caption = 'CATEGORIA'
            Width = 200
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DATA_VENCIMENTO'
            Title.Caption = 'DATA DE VENCIMENTO'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = []
            Width = 150
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'BANCO_PAGAMENTO'
            Title.Caption = 'BANCO'
            Width = 200
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FORMA_PAGAMENTO'
            Title.Caption = 'FORMA DE PAGAMENTO'
            Width = 200
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SITUACAO'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = []
            Width = 100
            Visible = True
          end>
      end
      object Panel7: TPanel
        Left = 0
        Top = 616
        Width = 1354
        Height = 34
        Align = alBottom
        TabOrder = 2
        object Label7: TLabel
          AlignWithMargins = True
          Left = 868
          Top = 4
          Width = 224
          Height = 26
          Align = alRight
          Caption = 'VALOR TOTAL DE CONTAS '
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
          ExplicitHeight = 18
        end
        object btnCalcular: TButton
          AlignWithMargins = True
          Left = 1275
          Top = 4
          Width = 75
          Height = 26
          Align = alRight
          Caption = 'CALCULAR'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          OnClick = btnCalcularClick
        end
        object edtValorTotal: TMaskEdit
          AlignWithMargins = True
          Left = 1098
          Top = 4
          Width = 171
          Height = 26
          Align = alRight
          Alignment = taCenter
          Color = clBlack
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
          Text = ''
          ExplicitHeight = 24
        end
      end
      object Panel10: TPanel
        Left = 0
        Top = 57
        Width = 288
        Height = 559
        Align = alLeft
        TabOrder = 3
        object Label11: TLabel
          Left = 43
          Top = 18
          Width = 210
          Height = 13
          Caption = 'FILTRAR POR DATA DE VENCIMENTO'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object Label17: TLabel
          Left = 38
          Top = 40
          Width = 16
          Height = 13
          Caption = 'DE'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object Label18: TLabel
          Left = 31
          Top = 83
          Width = 21
          Height = 13
          Caption = 'AT'#201
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object Label8: TLabel
          Left = 124
          Top = 304
          Width = 62
          Height = 13
          Caption = 'SITUA'#199#195'O'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object Label19: TLabel
          Left = 78
          Top = 181
          Width = 148
          Height = 13
          Caption = 'FILTRAR POR CATEGORIA'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object Label20: TLabel
          Left = 94
          Top = 243
          Width = 121
          Height = 13
          Caption = 'FILTRAR POR BANCO'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object Label6: TLabel
          Left = 91
          Top = 123
          Width = 128
          Height = 13
          Caption = 'FILTRAR POR CLIENTE'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object lbRegistros: TLabel
          AlignWithMargins = True
          Left = 4
          Top = 542
          Width = 280
          Height = 13
          Align = alBottom
          Alignment = taCenter
          Caption = '0 Registros...'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
          ExplicitWidth = 85
        end
        object btnBuscar: TButton
          Left = 101
          Top = 361
          Width = 104
          Height = 34
          Caption = 'BUSCAR'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnClick = btnBuscarClick
        end
        object ComboBox1: TComboBox
          Left = 65
          Top = 323
          Width = 177
          Height = 21
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          Text = 'TODOS'
          OnChange = ComboBox1Change
          Items.Strings = (
            'TODOS'
            'ABERTO'
            'RECEBIDO')
        end
        object DateTimePicker1: TDateTimePicker
          Left = 62
          Top = 37
          Width = 180
          Height = 21
          Date = 44085.000000000000000000
          Time = 0.735156076385465000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          OnChange = DateTimePicker1Change
        end
        object DateTimePicker2: TDateTimePicker
          Left = 62
          Top = 80
          Width = 180
          Height = 21
          Date = 44254.000000000000000000
          Time = 0.594430671299051000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
          OnChange = DateTimePicker2Change
        end
        object edtConsulta: TEdit
          Left = 54
          Top = 142
          Width = 199
          Height = 21
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
          OnChange = edtConsultaChange
        end
        object edtConsultaBanco: TEdit
          Left = 52
          Top = 262
          Width = 201
          Height = 21
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
          OnChange = edtConsultaBancoChange
        end
        object edtConsultaCategorias: TEdit
          Left = 52
          Top = 200
          Width = 201
          Height = 21
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          TabOrder = 6
          OnChange = edtConsultaCategoriasChange
        end
      end
    end
    object tsCadastro: TTabSheet
      Caption = 'INCLUIR'
      ImageIndex = 1
      object Label1: TLabel
        Left = 38
        Top = 43
        Width = 52
        Height = 16
        Caption = 'CODIGO'
        FocusControl = DBEdit1
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object Label3: TLabel
        Left = 38
        Top = 158
        Width = 43
        Height = 16
        Caption = 'VALOR'
        FocusControl = DBEdit3
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object Label4: TLabel
        Left = 38
        Top = 286
        Width = 148
        Height = 16
        Caption = 'DATA DE VENCIMENTO'
        FocusControl = DBEdit4
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object Label5: TLabel
        Left = 41
        Top = 355
        Width = 69
        Height = 16
        Caption = 'SITUACAO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object Label2: TLabel
        Left = 38
        Top = 110
        Width = 52
        Height = 16
        Caption = 'CODIGO'
        FocusControl = DBEdit2
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object Label14: TLabel
        Left = 152
        Top = 110
        Width = 55
        Height = 16
        Caption = 'CLIENTE'
        FocusControl = DBEdit5
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object Image6: TImage
        Left = 747
        Top = 99
        Width = 36
        Height = 31
        Cursor = crHandPoint
        Picture.Data = {
          0954506E67496D61676589504E470D0A1A0A0000000D49484452000000240000
          00240806000000E10098980000001974455874536F6674776172650041646F62
          6520496D616765526561647971C9653C0000032269545874584D4C3A636F6D2E
          61646F62652E786D7000000000003C3F787061636B657420626567696E3D22EF
          BBBF222069643D2257354D304D7043656869487A7265537A4E54637A6B633964
          223F3E203C783A786D706D65746120786D6C6E733A783D2261646F62653A6E73
          3A6D6574612F2220783A786D70746B3D2241646F626520584D5020436F726520
          352E332D633031312036362E3134353636312C20323031322F30322F30362D31
          343A35363A32372020202020202020223E203C7264663A52444620786D6C6E73
          3A7264663D22687474703A2F2F7777772E77332E6F72672F313939392F30322F
          32322D7264662D73796E7461782D6E7323223E203C7264663A44657363726970
          74696F6E207264663A61626F75743D222220786D6C6E733A786D703D22687474
          703A2F2F6E732E61646F62652E636F6D2F7861702F312E302F2220786D6C6E73
          3A786D704D4D3D22687474703A2F2F6E732E61646F62652E636F6D2F7861702F
          312E302F6D6D2F2220786D6C6E733A73745265663D22687474703A2F2F6E732E
          61646F62652E636F6D2F7861702F312E302F73547970652F5265736F75726365
          526566232220786D703A43726561746F72546F6F6C3D2241646F62652050686F
          746F73686F7020435336202857696E646F7773292220786D704D4D3A496E7374
          616E636549443D22786D702E6969643A37394143393346393842303631314541
          383434393941383037414241373933372220786D704D4D3A446F63756D656E74
          49443D22786D702E6469643A3739414339334641384230363131454138343439
          394138303741424137393337223E203C786D704D4D3A4465726976656446726F
          6D2073745265663A696E7374616E636549443D22786D702E6969643A37394143
          3933463738423036313145413834343939413830374142413739333722207374
          5265663A646F63756D656E7449443D22786D702E6469643A3739414339334638
          384230363131454138343439394138303741424137393337222F3E203C2F7264
          663A4465736372697074696F6E3E203C2F7264663A5244463E203C2F783A786D
          706D6574613E203C3F787061636B657420656E643D2272223F3ED62BF6030000
          03064944415478DAED975B884D6114C7D71E97312EB98D4B79989AE4414C2EF1
          401E3C79923C604A31721B72BF1B4C9234C648118A98E3F6A2944BB96672C98B
          94F2240CA291A63092C11C1CFF7F6B9DDA8E3367F63EDF3E91CEAA5FE7CCDE67
          EFEFF7DDD6B7C64B2412F22F8597170A2BE4795E36EFE9044AC0703008FC048D
          E021F8D4DE43E906C355A810CC04EB40599AFB5FC02550637239151A030E8009
          017EFB19D483B5A02D174293C17E30C277AD05DC072FC110300E0CF4DDFF0EAE
          D8887E8D52682488D90831DE813A7050FE5C2F63C13E30C9FEA6C849B014FC88
          42A8BB355001BA82C76019B899E199DE6015A80605263D1D3424D21885151A2F
          BA16B89B3E802A70447457658A01368A733832E0069886B6DB527F184688BDDB
          02D6803EE02CD8045E48B028050F405FD1DD5786B69FB908F502A7D8337BE156
          70D8BE078962701C4C05DF4025DA8EB908F513DD259CB6B76031B8987CCC3E53
          D70413267355AB7568BD75843B6E27DADEE122C41E5E13DD5D9CA6B9E0AE4F26
          9D10177E4FF0DE3E37F8846AD076B58B10E7FE82E8167E03E681EB81264BA3BF
          E814CF104D8E55687BAF8B5091BD9023C335B04D34F7B4061462B26C00C3ECF9
          72B47DDE4588C175B31D0C0677C072F028800CA78EB9E734E82C9A4C87A2ED16
          57219EE8E74433705C34B7D48A1E1B99A2D446A7C446E710D888B6E3AE428C95
          60B3689911B797EF02CDEDFC9E53C4ED3ED1FEE6E88C06AFA33ACB2872024CF1
          5D7B028E89961ACF45172DB339D7DB42D144CA6076AF104B17AE42CC27BBC122
          FBFE5174A177EBA8073E19961FF5C90B2E425C88B5D65BE613165BB3C128D132
          A43883081BE091B11ADCFBED469642A9320C6E57665D9E453C38678172D1AA91
          1999876D13B80DCE80AB694DB31062EADF63D3D4C3AE5D162D279E0699A74C11
          56A8C0642A45EB20B19EB2FE697495092B44993A9329B25B3CC79648F0722332
          A12EA2BB896566A15D6641B500BC8A4A268CD07CD1332A29C3F294F9A4294A99
          30429CA298E87F07B744775073876FCFA1103F28B5021C15AD6572128184FE76
          E485F242FF9DD02F0F5A53C8FB8FA8370000000049454E44AE426082}
        OnClick = Image6Click
      end
      object Label15: TLabel
        Left = 38
        Top = 236
        Width = 52
        Height = 16
        Caption = 'CODIGO'
        FocusControl = DBEdit6
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object Label16: TLabel
        Left = 152
        Top = 236
        Width = 75
        Height = 16
        Caption = 'CATEGORIA'
        FocusControl = DBEdit7
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object Image4: TImage
        Left = 747
        Top = 231
        Width = 36
        Height = 31
        Cursor = crHandPoint
        Picture.Data = {
          0954506E67496D61676589504E470D0A1A0A0000000D49484452000000240000
          00240806000000E10098980000001974455874536F6674776172650041646F62
          6520496D616765526561647971C9653C0000032269545874584D4C3A636F6D2E
          61646F62652E786D7000000000003C3F787061636B657420626567696E3D22EF
          BBBF222069643D2257354D304D7043656869487A7265537A4E54637A6B633964
          223F3E203C783A786D706D65746120786D6C6E733A783D2261646F62653A6E73
          3A6D6574612F2220783A786D70746B3D2241646F626520584D5020436F726520
          352E332D633031312036362E3134353636312C20323031322F30322F30362D31
          343A35363A32372020202020202020223E203C7264663A52444620786D6C6E73
          3A7264663D22687474703A2F2F7777772E77332E6F72672F313939392F30322F
          32322D7264662D73796E7461782D6E7323223E203C7264663A44657363726970
          74696F6E207264663A61626F75743D222220786D6C6E733A786D703D22687474
          703A2F2F6E732E61646F62652E636F6D2F7861702F312E302F2220786D6C6E73
          3A786D704D4D3D22687474703A2F2F6E732E61646F62652E636F6D2F7861702F
          312E302F6D6D2F2220786D6C6E733A73745265663D22687474703A2F2F6E732E
          61646F62652E636F6D2F7861702F312E302F73547970652F5265736F75726365
          526566232220786D703A43726561746F72546F6F6C3D2241646F62652050686F
          746F73686F7020435336202857696E646F7773292220786D704D4D3A496E7374
          616E636549443D22786D702E6969643A37394143393346393842303631314541
          383434393941383037414241373933372220786D704D4D3A446F63756D656E74
          49443D22786D702E6469643A3739414339334641384230363131454138343439
          394138303741424137393337223E203C786D704D4D3A4465726976656446726F
          6D2073745265663A696E7374616E636549443D22786D702E6969643A37394143
          3933463738423036313145413834343939413830374142413739333722207374
          5265663A646F63756D656E7449443D22786D702E6469643A3739414339334638
          384230363131454138343439394138303741424137393337222F3E203C2F7264
          663A4465736372697074696F6E3E203C2F7264663A5244463E203C2F783A786D
          706D6574613E203C3F787061636B657420656E643D2272223F3ED62BF6030000
          03064944415478DAED975B884D6114C7D71E97312EB98D4B79989AE4414C2EF1
          401E3C79923C604A31721B72BF1B4C9234C648118A98E3F6A2944BB96672C98B
          94F2240CA291A63092C11C1CFF7F6B9DDA8E3367F63EDF3E91CEAA5FE7CCDE67
          EFEFF7DDD6B7C64B2412F22F8597170A2BE4795E36EFE9044AC0703008FC048D
          E021F8D4DE43E906C355A810CC04EB40599AFB5FC02550637239151A030E8009
          017EFB19D483B5A02D174293C17E30C277AD05DC072FC110300E0CF4DDFF0EAE
          D8887E8D52682488D90831DE813A7050FE5C2F63C13E30C9FEA6C849B014FC88
          42A8BB355001BA82C76019B899E199DE6015A80605263D1D3424D21885151A2F
          BA16B89B3E802A70447457658A01368A733832E0069886B6DB527F184688BDDB
          02D6803EE02CD8045E48B028050F405FD1DD5786B69FB908F502A7D8337BE156
          70D8BE078962701C4C05DF4025DA8EB908F513DD259CB6B76031B8987CCC3E53
          D70413267355AB7568BD75843B6E27DADEE122C41E5E13DD5D9CA6B9E0AE4F26
          9D10177E4FF0DE3E37F8846AD076B58B10E7FE82E8167E03E681EB81264BA3BF
          E814CF104D8E55687BAF8B5091BD9023C335B04D34F7B4061462B26C00C3ECF9
          72B47DDE4588C175B31D0C0677C072F028800CA78EB9E734E82C9A4C87A2ED16
          57219EE8E74433705C34B7D48A1E1B99A2D446A7C446E710D888B6E3AE428C95
          60B3689911B797EF02CDEDFC9E53C4ED3ED1FEE6E88C06AFA33ACB2872024CF1
          5D7B028E89961ACF45172DB339D7DB42D144CA6076AF104B17AE42CC27BBC122
          FBFE5174A177EBA8073E19961FF5C90B2E425C88B5D65BE613165BB3C128D132
          A43883081BE091B11ADCFBED469642A9320C6E57665D9E453C38678172D1AA91
          1999876D13B80DCE80AB694DB31062EADF63D3D4C3AE5D162D279E0699A74C11
          56A8C0642A45EB20B19EB2FE697495092B44993A9329B25B3CC79648F0722332
          A12EA2BB896566A15D6641B500BC8A4A268CD07CD1332A29C3F294F9A4294A99
          30429CA298E87F07B744775073876FCFA1103F28B5021C15AD6572128184FE76
          E485F242FF9DD02F0F5A53C8FB8FA8370000000049454E44AE426082}
        OnClick = Image4Click
      end
      object DBEdit1: TDBEdit
        Left = 38
        Top = 62
        Width = 134
        Height = 24
        DataField = 'CODIGO'
        DataSource = dsConsulta
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 5
      end
      object DBEdit3: TDBEdit
        Left = 38
        Top = 179
        Width = 251
        Height = 24
        DataField = 'VALOR'
        DataSource = dsConsulta
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnKeyPress = DBEdit4KeyPress
      end
      object DBEdit4: TDBEdit
        Left = 38
        Top = 307
        Width = 134
        Height = 24
        DataField = 'DATA_VENCIMENTO'
        DataSource = dsConsulta
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        OnChange = DBEdit4Change
        OnKeyPress = DBEdit4KeyPress
      end
      object DBComboBox1: TDBComboBox
        Left = 41
        Top = 376
        Width = 145
        Height = 24
        DataField = 'SITUACAO'
        DataSource = dsConsulta
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = []
        Items.Strings = (
          'ABERTO'
          'RECEBIDA')
        ParentFont = False
        TabOrder = 4
        OnKeyPress = DBEdit4KeyPress
      end
      object Panel4: TPanel
        Left = 0
        Top = 600
        Width = 1354
        Height = 50
        Align = alBottom
        Color = clSkyBlue
        ParentBackground = False
        TabOrder = 6
        object pnCancelar: TPanel
          AlignWithMargins = True
          Left = 1000
          Top = 4
          Width = 178
          Height = 42
          Cursor = crHandPoint
          Align = alRight
          BevelKind = bkTile
          BevelOuter = bvNone
          Color = clWhite
          ParentBackground = False
          TabOrder = 0
          OnClick = pnCancelarClick
          object Label9: TLabel
            Left = 47
            Top = 11
            Width = 111
            Height = 14
            Cursor = crHandPoint
            Caption = 'CANCELAR | ESC'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
            OnClick = pnCancelarClick
          end
          object Image1: TImage
            Left = 1
            Top = -5
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
            OnClick = pnCancelarClick
          end
        end
        object pnGravar: TPanel
          AlignWithMargins = True
          Left = 1184
          Top = 4
          Width = 166
          Height = 42
          Cursor = crHandPoint
          Align = alRight
          BevelKind = bkTile
          BevelOuter = bvNone
          Color = clWhite
          ParentBackground = False
          TabOrder = 1
          OnClick = pnGravarClick
          object Label10: TLabel
            Left = 64
            Top = 11
            Width = 86
            Height = 14
            Cursor = crHandPoint
            Caption = 'GRAVAR | F1'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
            OnClick = pnGravarClick
          end
          object Image2: TImage
            Left = 6
            Top = -5
            Width = 48
            Height = 38
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
            OnClick = pnGravarClick
          end
        end
      end
      object DBEdit2: TDBEdit
        Left = 96
        Top = 107
        Width = 42
        Height = 24
        DataField = 'COD_CLIENTE'
        DataSource = dsConsulta
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 7
      end
      object DBEdit5: TDBEdit
        Left = 233
        Top = 107
        Width = 500
        Height = 24
        DataField = 'CLIENTE_NOME'
        DataSource = dsConsulta
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnKeyPress = DBEdit5KeyPress
      end
      object StaticText1: TStaticText
        Left = 38
        Top = 11
        Width = 172
        Height = 22
        Caption = 'CONTA A RECEBER'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 8
      end
      object DBEdit6: TDBEdit
        Left = 96
        Top = 233
        Width = 42
        Height = 24
        DataField = 'COD_CATEGORIA'
        DataSource = dsConsulta
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        TabOrder = 9
      end
      object DBEdit7: TDBEdit
        Left = 233
        Top = 233
        Width = 500
        Height = 24
        DataField = 'CATEGORIA_NOME'
        DataSource = dsConsulta
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        OnKeyPress = DBEdit7KeyPress
      end
      object Button6: TButton
        Left = 789
        Top = 99
        Width = 90
        Height = 31
        Caption = 'LIMPAR'
        TabOrder = 10
        OnClick = Button6Click
      end
      object Button7: TButton
        Left = 789
        Top = 229
        Width = 90
        Height = 31
        Caption = 'LIMPAR'
        TabOrder = 11
        OnClick = Button7Click
      end
    end
  end
  object qrContasReceber: TFDQuery
    Active = True
    AfterInsert = qrContasReceberAfterInsert
    Connection = Dm.Conexao
    SQL.Strings = (
      'SELECT * FROM CONTAS_RECEBER')
    Left = 364
    Top = 233
    object qrContasReceberCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qrContasReceberCLIENTE: TStringField
      FieldName = 'CLIENTE'
      Origin = 'CLIENTE'
      Size = 100
    end
    object qrContasReceberVALOR: TFMTBCDField
      FieldName = 'VALOR'
      Origin = 'VALOR'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object qrContasReceberDATA_VENCIMENTO: TDateField
      FieldName = 'DATA_VENCIMENTO'
      Origin = 'DATA_VENCIMENTO'
    end
    object qrContasReceberSITUACAO: TStringField
      FieldName = 'SITUACAO'
      Origin = 'SITUACAO'
      Size = 10
    end
    object qrContasReceberCOD_CLIENTE: TIntegerField
      FieldName = 'COD_CLIENTE'
      Origin = 'COD_CLIENTE'
      Required = True
    end
    object qrContasReceberCLIENTE_NOME: TStringField
      FieldName = 'CLIENTE_NOME'
      Origin = 'CLIENTE_NOME'
      Size = 100
    end
    object qrContasReceberBANCO_PAGAMENTO: TStringField
      FieldName = 'BANCO_PAGAMENTO'
      Origin = 'BANCO_PAGAMENTO'
      Size = 100
    end
    object qrContasReceberFORMA_PAGAMENTO: TStringField
      FieldName = 'FORMA_PAGAMENTO'
      Origin = 'FORMA_PAGAMENTO'
      Size = 100
    end
    object qrContasReceberCOD_CATEGORIA: TIntegerField
      FieldName = 'COD_CATEGORIA'
      Origin = 'COD_CATEGORIA'
    end
    object qrContasReceberCATEGORIA_NOME: TStringField
      FieldName = 'CATEGORIA_NOME'
      Origin = 'CATEGORIA_NOME'
      Size = 100
    end
  end
  object dsConsulta: TDataSource
    DataSet = qrContasReceber
    Left = 356
    Top = 289
  end
  object PopupMenu1: TPopupMenu
    Left = 564
    Top = 281
    object EXCLUIR1: TMenuItem
      Caption = 'EXCLUIR'
      ShortCut = 114
      OnClick = btnExcluirClick
    end
    object INCLUIR1: TMenuItem
      Caption = 'INCLUIR'
      ShortCut = 113
      OnClick = btnIncluirClick
    end
    object ALTERAR1: TMenuItem
      Caption = 'ALTERAR'
      ShortCut = 115
      OnClick = btnAlterarClick
    end
    object CANCELAR1: TMenuItem
      Caption = 'CANCELAR'
      ShortCut = 27
      OnClick = pnCancelarClick
    end
    object PAGAR1: TMenuItem
      Caption = 'RECEBER'
      ShortCut = 116
      OnClick = pnReceberClick
    end
    object REABRIR1: TMenuItem
      Caption = 'REABRIR'
      ShortCut = 117
      OnClick = pnReabrirClick
    end
    object GRAVAR1: TMenuItem
      Caption = 'GRAVAR'
      ShortCut = 112
      OnClick = pnGravarClick
    end
  end
  object fxContasReceber: TfrxReport
    Version = '6.9.12'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44292.946550983800000000
    ReportOptions.LastChange = 44439.633090914400000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'procedure MasterData1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  if <qrContasPagar."SITUACAO"> = '#39'QUITADO'#39' then'
      '    frxDBDataset1SITUACAO.font.Color := clBlue'
      '  else if <qrContasPagar."SITUACAO"> = '#39'ABERTO'#39' then'
      '    frxDBDataset1SITUACAO.font.Color := clGreen;'
      ''
      '  if <qrContasPagar."EMPRESA_NOME"> = '#39#39' then'
      '    frxDBDataset1EMPRESA_NOME.Text := '#39'Sem nome registrado...'#39
      '  else'
      
        '    frxDBDataset1EMPRESA_NOME.Text := <qrContasPagar."EMPRESA_NO' +
        'ME">;'
      ''
      'end;'
      ''
      'begin'
      ''
      'end.')
    Left = 363
    Top = 355
    Datasets = <
      item
        DataSet = FrmContasPagar.frxContasPagar
        DataSetName = 'qrContasPagar'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
      MirrorMode = []
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 64.252010000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 128.504020000000000000
          Top = 26.456710000000000000
          Width = 468.661720000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'RELA'#199#195'O DE CONTAS A PAGAR POR DATA DE VENCIMENTO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Date: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 563.149970000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[Date]')
          ParentFont = False
        end
        object Page: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 668.976810000000000000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[Page]')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 34.015770000000000000
        Top = 200.315090000000000000
        Width = 718.110700000000000000
        OnBeforePrint = 'MasterData1OnBeforePrint'
        DataSet = FrmContasPagar.frxContasPagar
        DataSetName = 'qrContasPagar'
        RowCount = 0
        object frxDBDataset1CODIGO: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Top = 15.118120000000000000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          DataField = 'CODIGO'
          DataSet = FrmContasPagar.frxContasPagar
          DataSetName = 'qrContasPagar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[qrContasPagar."CODIGO"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxDBDataset1EMPRESA_NOME: TfrxMemoView
          IndexTag = 2
          AllowVectorExport = True
          Left = 41.574830000000000000
          Top = 15.118120000000000000
          Width = 181.417440000000000000
          Height = 18.897650000000000000
          DataSet = FrmContasPagar.frxContasPagar
          DataSetName = 'qrContasPagar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[qrContasPagar."EMPRESA_NOME"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxDBDataset1SITUACAO: TfrxMemoView
          IndexTag = 3
          AllowVectorExport = True
          Left = 627.401980000000000000
          Top = 15.118120000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataSet = FrmContasPagar.frxContasPagar
          DataSetName = 'qrContasPagar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[qrContasPagar."SITUACAO"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxDBDataset1DATA_VENCIMENTO: TfrxMemoView
          IndexTag = 4
          AllowVectorExport = True
          Left = 543.693260000000000000
          Top = 15.118120000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataSet = FrmContasPagar.frxContasPagar
          DataSetName = 'qrContasPagar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[qrContasPagar."DATA_VENCIMENTO"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxDBDataset1VALOR: TfrxMemoView
          IndexTag = 5
          AllowVectorExport = True
          Left = 419.527830000000000000
          Top = 15.118120000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          DataSet = FrmContasPagar.frxContasPagar
          DataSetName = 'qrContasPagar'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'R$[<qrContasPagar."VALOR">]')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxDBDataset1NUMERO_BOLETO: TfrxMemoView
          IndexTag = 6
          AllowVectorExport = True
          Left = 222.992270000000000000
          Top = 15.118120000000000000
          Width = 196.535560000000000000
          Height = 18.897650000000000000
          DataField = 'NUMERO_BOLETO'
          DataSet = FrmContasPagar.frxContasPagar
          DataSetName = 'qrContasPagar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[qrContasPagar."NUMERO_BOLETO"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line1: TfrxLineView
          AllowVectorExport = True
          Top = 7.559060000000000000
          Width = 718.110700000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 34.015770000000000000
        Top = 105.826840000000000000
        Width = 718.110700000000000000
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 1.000000000000000000
          Top = 11.338590000000000000
          Width = 41.196850390000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight]
          Fill.BackColor = clScrollBar
          HAlign = haCenter
          Memo.UTF8W = (
            'COD')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 223.992270000000000000
          Top = 11.338590000000000000
          Width = 196.535560000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight]
          Fill.BackColor = clScrollBar
          HAlign = haCenter
          Memo.UTF8W = (
            'N'#186' BOLETO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 421.307360000000000000
          Top = 11.338590000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight]
          Fill.BackColor = clScrollBar
          HAlign = haCenter
          Memo.UTF8W = (
            'VALOR')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 535.693260000000000000
          Top = 11.338590000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight]
          Fill.BackColor = clScrollBar
          HAlign = haCenter
          Memo.UTF8W = (
            'DATA VENC.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 634.961040000000000000
          Top = 11.338590000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = clScrollBar
          HAlign = haCenter
          Memo.UTF8W = (
            'SITUA'#199#195'O')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 43.354360000000000000
          Top = 11.338590000000000000
          Width = 181.417440000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight]
          Fill.BackColor = clScrollBar
          HAlign = haCenter
          Memo.UTF8W = (
            'EMPRESA')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 52.913420000000000000
        Top = 257.008040000000000000
        Width = 718.110700000000000000
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 585.827150000000000000
          Top = 26.236240000000000000
          Width = 124.724490000000000000
          Height = 22.677180000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          Fill.BackColor = clScrollBar
          HAlign = haCenter
          Memo.UTF8W = (
            'R$[SUM(<qrContasPagar."VALOR">,MasterData1)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 409.748300000000000000
          Top = 26.236240000000000000
          Width = 177.637910000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          Fill.BackColor = clScrollBar
          HAlign = haCenter
          Memo.UTF8W = (
            'VALOR TOTAL A PAGAR:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line2: TfrxLineView
          AllowVectorExport = True
          Top = 3.779530000000000000
          Width = 718.110700000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
      end
    end
  end
  object frxContasReceber: TfrxDBDataset
    UserName = 'qrContasReceber'
    CloseDataSource = False
    FieldAliases.Strings = (
      'CODIGO=CODIGO'
      'CLIENTE=CLIENTE'
      'VALOR=VALOR'
      'DATA_VENCIMENTO=DATA_VENCIMENTO'
      'SITUACAO=SITUACAO'
      'COD_CLIENTE=COD_CLIENTE'
      'CLIENTE_NOME=CLIENTE_NOME'
      'BANCO_PAGAMENTO=BANCO_PAGAMENTO'
      'FORMA_PAGAMENTO=FORMA_PAGAMENTO'
      'COD_CATEGORIA=COD_CATEGORIA'
      'CATEGORIA_NOME=CATEGORIA_NOME')
    DataSet = qrContasReceber
    BCDToCurrency = False
    Left = 363
    Top = 411
  end
end