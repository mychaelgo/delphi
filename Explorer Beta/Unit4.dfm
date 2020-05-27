object Form4: TForm4
  Left = 283
  Top = 212
  Width = 396
  Height = 257
  Caption = 'Text File'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsStayOnTop
  Menu = MainMenu1
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object RichEdit1: TRichEdit
    Left = 0
    Top = 0
    Width = 385
    Height = 198
    DragMode = dmAutomatic
    Lines.Strings = (
      '')
    PlainText = True
    ScrollBars = ssHorizontal
    TabOrder = 0
  end
  object MainMenu1: TMainMenu
    Left = 352
    Top = 64
    object File1: TMenuItem
      Caption = 'File'
      object Open1: TMenuItem
        Caption = 'Open'
        OnClick = Open1Click
      end
      object SaveAs1: TMenuItem
        Caption = 'Save As'
        OnClick = SaveAs1Click
      end
      object Quit1: TMenuItem
        Caption = 'Quit'
        OnClick = Quit1Click
      end
    end
  end
  object Timer1: TTimer
    Interval = 1
    OnTimer = Timer1Timer
    Left = 352
    Top = 96
  end
  object OpenDialog1: TOpenDialog
    Left = 352
  end
  object SaveDialog1: TSaveDialog
    Left = 352
    Top = 32
  end
end
