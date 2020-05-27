object Form1: TForm1
  Left = 0
  Top = 0
  AlphaBlend = True
  BorderStyle = bsToolWindow
  Caption = 'Xj9 - Drive Viewer'
  ClientHeight = 188
  ClientWidth = 309
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 191
    Height = 13
    Caption = 'Doble Klick Di item untuk membuka Drive'
  end
  object Label2: TLabel
    Left = 8
    Top = 170
    Width = 46
    Height = 13
    Caption = 'Pilih Drive'
  end
  object Label3: TLabel
    Left = 8
    Top = 27
    Width = 4
    Height = 13
    Caption = '-'
  end
  object Label4: TLabel
    Left = 111
    Top = 46
    Width = 119
    Height = 13
    Caption = 'By :Yudha indharmawan '
  end
  object Label5: TLabel
    Left = 111
    Top = 65
    Width = 135
    Height = 13
    Caption = 'pencopet_cinta@g-17.co.cc'
  end
  object Label6: TLabel
    Left = 111
    Top = 84
    Width = 112
    Height = 13
    Cursor = crHandPoint
    Caption = 'http://www.G-17.co.cc'
    OnClick = Label6Click
    OnMouseMove = Label6MouseMove
    OnMouseLeave = Label6MouseLeave
  end
  object Label7: TLabel
    Left = 111
    Top = 103
    Width = 186
    Height = 13
    Cursor = crHandPoint
    Caption = 'http://www.facebook.com/yudha.ajah'
    OnClick = Label7Click
    OnMouseMove = Label7MouseMove
    OnMouseLeave = Label7MouseLeave
  end
  object ListBox1: TListBox
    Left = 8
    Top = 46
    Width = 97
    Height = 118
    ItemHeight = 13
    TabOrder = 0
    OnClick = ListBox1Click
    OnDblClick = ListBox1DblClick
  end
  object Edit1: TEdit
    Left = 8
    Top = 201
    Width = 56
    Height = 21
    TabOrder = 1
    Text = 'a'
    Visible = False
  end
  object Button1: TButton
    Left = 172
    Top = 122
    Width = 129
    Height = 25
    Caption = '-'
    TabOrder = 2
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 226
    Top = 151
    Width = 75
    Height = 25
    Caption = 'Tool'
    TabOrder = 3
    OnClick = Button2Click
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 248
  end
end
