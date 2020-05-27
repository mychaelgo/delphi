object Form1: TForm1
  Left = 192
  Top = 114
  BorderStyle = bsToolWindow
  Caption = 'Jam Digital'
  ClientHeight = 42
  ClientWidth = 137
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
    Left = 24
    Top = 8
    Width = 89
    Height = 19
    Caption = 'Label1'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 112
    Top = 16
  end
end
