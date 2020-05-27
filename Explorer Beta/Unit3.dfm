object Form3: TForm3
  Left = 0
  Top = 0
  BorderStyle = bsToolWindow
  Caption = 'Form3'
  ClientHeight = 70
  ClientWidth = 235
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
    Left = 17
    Top = 8
    Width = 67
    Height = 13
    Caption = 'Nama Folder :'
  end
  object Edit1: TEdit
    Left = 90
    Top = 8
    Width = 129
    Height = 21
    TabOrder = 0
    Text = 'New Folder'
  end
  object Button1: TButton
    Left = 106
    Top = 35
    Width = 48
    Height = 25
    Caption = 'Create'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 170
    Top = 35
    Width = 49
    Height = 25
    Caption = 'Cancel'
    TabOrder = 2
    OnClick = Button2Click
  end
end
