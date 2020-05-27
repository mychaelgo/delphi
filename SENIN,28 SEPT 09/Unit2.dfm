object Form2: TForm2
  Left = 433
  Top = 180
  Width = 341
  Height = 176
  Caption = 'Form2'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 126
    Height = 21
    Caption = 'MASUKKAN PASSWORD'
    Color = clActiveCaption
    ParentColor = False
  end
  object Edit1: TEdit
    Left = 136
    Top = 8
    Width = 145
    Height = 21
    TabOrder = 0
    Text = 'Edit1'
  end
  object Button1: TButton
    Left = 24
    Top = 48
    Width = 105
    Height = 25
    Caption = 'OK'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 144
    Top = 48
    Width = 105
    Height = 25
    Caption = 'CANCEL'
    TabOrder = 2
    OnClick = Button2Click
  end
end
