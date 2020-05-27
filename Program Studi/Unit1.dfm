object Form1: TForm1
  Left = 269
  Top = 158
  Width = 315
  Height = 246
  Caption = 'FMenuUtama'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  Scaled = False
  PixelsPerInch = 96
  TextHeight = 13
  object MainMenu1: TMainMenu
    object Master1: TMenuItem
      Caption = 'Master'
      object Pilihan1: TMenuItem
        Caption = 'Pilihan'
        OnClick = Pilihan1Click
      end
      object Laporan1: TMenuItem
        Caption = 'Laporan'
        OnClick = Laporan1Click
      end
    end
    object Exit1: TMenuItem
      Caption = 'Exit'
      object Keluar1: TMenuItem
        Caption = 'Keluar'
        OnClick = Keluar1Click
      end
    end
  end
end
