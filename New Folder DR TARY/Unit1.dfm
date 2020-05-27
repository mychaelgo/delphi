object Form1: TForm1
  Left = 250
  Top = 165
  Width = 696
  Height = 480
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object MainMenu1: TMainMenu
    Left = 32
    Top = 16
    object masuk1: TMenuItem
      Caption = 'masuk'
      object password1: TMenuItem
        Caption = 'password'
        OnClick = password1Click
      end
      object logout1: TMenuItem
        Caption = 'logout'
        OnClick = logout1Click
      end
      object keluar1: TMenuItem
        Caption = 'keluar'
      end
    end
    object input1: TMenuItem
      Caption = 'input'
      object datasiswa1: TMenuItem
        Caption = 'data siswa'
      end
    end
    object edit1: TMenuItem
      Caption = 'edit'
      object datasiswa2: TMenuItem
        Caption = 'data siswa'
      end
    end
  end
end
