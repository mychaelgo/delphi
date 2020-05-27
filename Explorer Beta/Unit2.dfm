object Form2: TForm2
  Left = 0
  Top = 0
  BorderStyle = bsToolWindow
  Caption = 'Replace??'
  ClientHeight = 70
  ClientWidth = 468
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 40
    Top = 16
    Width = 31
    Height = 13
    Caption = 'Label1'
  end
  object Button1: TButton
    Left = 288
    Top = 40
    Width = 75
    Height = 25
    Caption = 'Ya'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 369
    Top = 40
    Width = 75
    Height = 25
    Caption = 'Tidak'
    TabOrder = 1
    OnClick = Button2Click
  end
end
