object Form2: TForm2
  Left = 459
  Top = 115
  Width = 382
  Height = 121
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
    Top = 16
    Width = 126
    Height = 13
    Alignment = taCenter
    Caption = 'MASUKKAN PASSWORD'
    Color = clActiveCaption
    ParentColor = False
  end
  object Edit1: TEdit
    Left = 152
    Top = 16
    Width = 161
    Height = 21
    TabOrder = 0
    Text = 'Edit1'
  end
  object Button1: TButton
    Left = 72
    Top = 48
    Width = 75
    Height = 25
    Caption = 'OK'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 152
    Top = 48
    Width = 75
    Height = 25
    Caption = 'CANCEL'
    TabOrder = 2
    OnClick = Button2Click
  end
end
