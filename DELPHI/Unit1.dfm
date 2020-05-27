object Form1: TForm1
  Left = 192
  Top = 114
  Width = 236
  Height = 120
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
    Left = 56
    Top = 24
    object MASUK1: TMenuItem
      Caption = 'MASUK'
      object PASSWORD1: TMenuItem
        Caption = 'PASSWORD'
        OnClick = PASSWORD1Click
      end
      object LOGOUT1: TMenuItem
        Caption = 'LOG OUT'
        OnClick = LOGOUT1Click
      end
      object KELUARAPLIKASI1: TMenuItem
        Caption = 'KELUAR APLIKASI'
        OnClick = KELUARAPLIKASI1Click
      end
    end
    object INPUT1: TMenuItem
      Caption = 'INPUT'
      object DATASISWA1: TMenuItem
        Caption = 'DATA SISWA'
        OnClick = DATASISWA1Click
      end
    end
    object LAPORAN1: TMenuItem
      Caption = 'LAPORAN'
    end
  end
end
