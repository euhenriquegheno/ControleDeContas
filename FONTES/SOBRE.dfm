object FrmSobre: TFrmSobre
  Left = 0
  Top = 0
  Caption = 'Sobre'
  ClientHeight = 161
  ClientWidth = 319
  Color = clBtnFace
  CustomTitleBar.CaptionAlignment = taCenter
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Memo1: TMemo
    Left = 0
    Top = 0
    Width = 319
    Height = 121
    Lines.Strings = (
      ''
      '                                             SOBRE'
      ''
      '                       Desenvolvido por Henrique Gheno'
      ''
      '                                         18/08/2020'
      ''
      '           Sistema para controle de contas a pagar e receber'
      ''
      ''
      ''
      '')
    ParentShowHint = False
    ReadOnly = True
    ShowHint = False
    TabOrder = 0
  end
  object Panel1: TPanel
    Left = 0
    Top = 120
    Width = 319
    Height = 41
    Align = alBottom
    Color = clWhite
    ParentBackground = False
    TabOrder = 1
    object BitBtn1: TBitBtn
      Left = 125
      Top = 0
      Width = 75
      Height = 35
      Caption = 'Fechar'
      Kind = bkCancel
      NumGlyphs = 2
      TabOrder = 0
      OnClick = BitBtn1Click
    end
  end
end
