object Form5: TForm5
  Left = 510
  Top = 329
  BorderStyle = bsToolWindow
  Caption = 'Create New Folder'
  ClientHeight = 84
  ClientWidth = 164
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 16
    Top = 8
    Width = 60
    Height = 13
    Caption = 'Nama Folder'
  end
  object Edit1: TEdit
    Left = 16
    Top = 24
    Width = 137
    Height = 21
    TabOrder = 0
    Text = 'New Folder'
    OnClick = Edit1Click
  end
  object Button1: TButton
    Left = 56
    Top = 48
    Width = 49
    Height = 25
    Caption = 'Create'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 112
    Top = 48
    Width = 41
    Height = 25
    Caption = 'Cancel'
    TabOrder = 2
    OnClick = Button2Click
  end
end
