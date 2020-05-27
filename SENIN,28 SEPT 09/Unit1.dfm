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
  Menu = MainMenu1
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Table1: TTable
    Active = True
    TableName = 'DB.db'
    Left = 48
    Top = 72
  end
  object DataSource1: TDataSource
    DataSet = Table1
    Left = 88
    Top = 72
  end
  object MainMenu1: TMainMenu
    Left = 128
    Top = 80
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
