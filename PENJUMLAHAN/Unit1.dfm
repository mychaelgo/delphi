object Form1: TForm1
  Left = 192
  Top = 114
  Width = 696
  Height = 480
  Caption = 'Form1'
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
    Left = 64
    Top = 56
    Width = 49
    Height = 13
    Caption = 'NILAI1'
    Color = clActiveCaption
    ParentColor = False
  end
  object Label2: TLabel
    Left = 64
    Top = 88
    Width = 49
    Height = 13
    Caption = 'NILAI2'
    Color = clActiveCaption
    ParentColor = False
  end
  object Label3: TLabel
    Left = 64
    Top = 120
    Width = 49
    Height = 13
    Caption = 'HASIL'
    Color = clActiveCaption
    ParentColor = False
  end
  object Edit1: TEdit
    Left = 120
    Top = 56
    Width = 81
    Height = 21
    TabOrder = 0
    Text = 'Edit1'
  end
  object Edit2: TEdit
    Left = 120
    Top = 88
    Width = 81
    Height = 21
    TabOrder = 1
    Text = 'Edit2'
  end
  object Edit3: TEdit
    Left = 120
    Top = 120
    Width = 81
    Height = 21
    TabOrder = 2
    Text = 'Edit3'
  end
  object Button1: TButton
    Left = 264
    Top = 56
    Width = 97
    Height = 17
    Caption = 'HITUNG'
    TabOrder = 3
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 264
    Top = 80
    Width = 97
    Height = 17
    Caption = 'KELUAR'
    TabOrder = 4
    OnClick = Button2Click
  end
end
