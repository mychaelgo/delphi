object Form2: TForm2
  Left = 408
  Top = 231
  Width = 261
  Height = 247
  Caption = 'Form2'
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Comic Sans MS'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 18
  object Label1: TLabel
    Left = 8
    Top = 16
    Width = 33
    Height = 18
    Caption = 'Name'
  end
  object Label2: TLabel
    Left = 8
    Top = 56
    Width = 42
    Height = 18
    Caption = 'Capital'
  end
  object Label3: TLabel
    Left = 8
    Top = 88
    Width = 57
    Height = 18
    Caption = 'Continent'
  end
  object Label4: TLabel
    Left = 8
    Top = 120
    Width = 29
    Height = 18
    Caption = 'Area'
  end
  object Label5: TLabel
    Left = 8
    Top = 152
    Width = 62
    Height = 18
    Caption = 'Population'
  end
  object Edit1: TEdit
    Left = 72
    Top = 16
    Width = 169
    Height = 26
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 72
    Top = 48
    Width = 169
    Height = 26
    TabOrder = 1
  end
  object Edit3: TEdit
    Left = 72
    Top = 80
    Width = 169
    Height = 26
    TabOrder = 2
  end
  object Edit4: TEdit
    Left = 72
    Top = 112
    Width = 169
    Height = 26
    TabOrder = 3
  end
  object Edit5: TEdit
    Left = 72
    Top = 144
    Width = 169
    Height = 26
    TabOrder = 4
  end
  object Button1: TButton
    Left = 8
    Top = 184
    Width = 75
    Height = 25
    Caption = 'Tambahkan'
    TabOrder = 5
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 88
    Top = 184
    Width = 75
    Height = 25
    Caption = 'Baru'
    TabOrder = 6
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 168
    Top = 184
    Width = 75
    Height = 25
    Caption = 'Keluar'
    TabOrder = 7
    OnClick = Button3Click
  end
end
