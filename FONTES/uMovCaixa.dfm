object frmMovCaixa: TfrmMovCaixa
  Left = 0
  Top = 0
  Caption = 'Movimenta'#231#227'o de caixa'
  ClientHeight = 282
  ClientWidth = 540
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 540
    Height = 241
    Align = alTop
    TabOrder = 0
    object RadioGroup1: TRadioGroup
      Left = 160
      Top = 24
      Width = 185
      Height = 41
      Caption = 'Tipo'
      Columns = 2
      ItemIndex = 0
      Items.Strings = (
        'ENTRADA'
        'SAIDA')
      TabOrder = 0
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 240
    Width = 540
    Height = 42
    Align = alBottom
    TabOrder = 1
  end
end
