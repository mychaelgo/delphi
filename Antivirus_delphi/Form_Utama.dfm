object FormUtama: TFormUtama
  Left = 325
  Top = 214
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Gue Antivirus (GAV)'
  ClientHeight = 421
  ClientWidth = 440
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 24
    Top = 400
    Width = 321
    Height = 13
    Caption = 
      'Copyright '#169' Ali Software - Delphi Source Code. All Rights Reserv' +
      'ed.'
  end
  object GroupBox1: TGroupBox
    Left = 16
    Top = 16
    Width = 409
    Height = 105
    Caption = 'Scan'
    TabOrder = 0
    object rb_scan1: TRadioButton
      Left = 16
      Top = 24
      Width = 105
      Height = 17
      Caption = 'Scan semua drive'
      Checked = True
      TabOrder = 0
      TabStop = True
      OnClick = rb_scan2Click
    end
    object rb_scan2: TRadioButton
      Left = 16
      Top = 48
      Width = 129
      Height = 17
      Caption = 'Scan folder atau drive'
      TabOrder = 1
      OnClick = rb_scan2Click
    end
    object edt_folder: TEdit
      Left = 32
      Top = 66
      Width = 305
      Height = 21
      Enabled = False
      TabOrder = 2
    end
    object edt_cari: TButton
      Left = 344
      Top = 64
      Width = 57
      Height = 25
      Caption = '&Cari'
      Enabled = False
      TabOrder = 3
      OnClick = edt_cariClick
    end
    object ck_scansubdir: TCheckBox
      Left = 296
      Top = 40
      Width = 105
      Height = 17
      Caption = 'Scan sub-direktori'
      Checked = True
      State = cbChecked
      TabOrder = 4
    end
  end
  object GroupBox2: TGroupBox
    Left = 16
    Top = 128
    Width = 409
    Height = 233
    Caption = 'Hasil'
    TabOrder = 1
    object lbl_jumlahfile: TLabel
      Left = 16
      Top = 16
      Width = 78
      Height = 13
      Caption = 'Jumlah file : N/A'
    end
    object lbl_virus: TLabel
      Left = 16
      Top = 32
      Width = 139
      Height = 13
      Caption = 'Jumlah virus ditemukan : N/A'
    end
    object lbl_waktu: TLabel
      Left = 280
      Top = 32
      Width = 99
      Height = 13
      Caption = 'Waktu tempuh : N/A'
    end
    object mm_status: TMemo
      Left = 15
      Top = 49
      Width = 386
      Height = 41
      ScrollBars = ssVertical
      TabOrder = 0
    end
    object GroupBox3: TGroupBox
      Left = 16
      Top = 96
      Width = 385
      Height = 121
      Caption = 'Virus List'
      TabOrder = 1
      object lv_virlist: TListView
        Left = 8
        Top = 16
        Width = 361
        Height = 65
        Checkboxes = True
        Columns = <
          item
            AutoSize = True
            Caption = 'Nama Virus'
          end
          item
            AutoSize = True
            Caption = 'Alamat'
          end>
        ColumnClick = False
        GridLines = True
        ReadOnly = True
        RowSelect = True
        TabOrder = 0
        ViewStyle = vsReport
      end
      object btn_delvir: TButton
        Left = 288
        Top = 88
        Width = 83
        Height = 25
        Caption = '&Hapus Virus'
        TabOrder = 1
        OnClick = btn_delvirClick
      end
      object btn_cls: TButton
        Left = 192
        Top = 88
        Width = 91
        Height = 25
        Caption = '&Bersihkan List'
        TabOrder = 2
        OnClick = btn_clsClick
      end
    end
  end
  object btn_scan: TButton
    Left = 24
    Top = 368
    Width = 81
    Height = 25
    Caption = '&Scan'
    TabOrder = 2
    OnClick = btn_scanClick
  end
  object btn_tentang: TButton
    Left = 112
    Top = 368
    Width = 81
    Height = 25
    Caption = '&Tentang'
    TabOrder = 3
    OnClick = btn_tentangClick
  end
  object btn_keluar: TButton
    Left = 344
    Top = 368
    Width = 81
    Height = 25
    Caption = '&Keluar'
    TabOrder = 4
    OnClick = btn_keluarClick
  end
end
