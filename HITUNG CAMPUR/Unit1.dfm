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
    Left = 24
    Top = 24
    Width = 57
    Height = 13
    Alignment = taCenter
    Caption = 'NILAI1'
    Color = clActiveCaption
    ParentColor = False
  end
  object Label2: TLabel
    Left = 24
    Top = 56
    Width = 57
    Height = 13
    Alignment = taCenter
    Caption = 'NILAI2'
    Color = clActiveCaption
    ParentColor = False
  end
  object Label3: TLabel
    Left = 24
    Top = 88
    Width = 57
    Height = 13
    Alignment = taCenter
    Caption = 'NILAI3'
    Color = clActiveCaption
    ParentColor = False
  end
  object Label4: TLabel
    Left = 24
    Top = 120
    Width = 57
    Height = 17
    Alignment = taCenter
    Caption = 'HASIL'
    Color = clActiveCaption
    ParentColor = False
  end
  object Edit1: TEdit
    Left = 88
    Top = 24
    Width = 97
    Height = 21
    TabOrder = 0
    Text = 'Edit1'
  end
  object Edit2: TEdit
    Left = 88
    Top = 56
    Width = 97
    Height = 21
    TabOrder = 1
    Text = 'Edit2'
  end
  object Edit3: TEdit
    Left = 88
    Top = 88
    Width = 97
    Height = 21
    TabOrder = 2
    Text = 'Edit3'
  end
  object Edit4: TEdit
    Left = 88
    Top = 120
    Width = 97
    Height = 21
    TabOrder = 3
    Text = 'Edit4'
  end
  object Button1: TButton
    Left = 40
    Top = 176
    Width = 137
    Height = 25
    Caption = 'HITUNG'
    TabOrder = 4
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 40
    Top = 208
    Width = 137
    Height = 25
    Caption = 'KELUAR'
    TabOrder = 5
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 40
    Top = 240
    Width = 137
    Height = 25
    Caption = 'HAPUS'
    TabOrder = 6
    OnClick = Button3Click
  end
end
