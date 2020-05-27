object Form7: TForm7
  Left = 338
  Top = 114
  Width = 321
  Height = 491
  Caption = 'PROGRAM STUDI'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 39
    Top = 0
    Width = 236
    Height = 38
    Alignment = taCenter
    Caption = 'PROGRAM STUDI'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Comic Sans MS'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 8
    Top = 48
    Width = 76
    Height = 13
    Caption = 'ID JURUSAN'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 8
    Top = 72
    Width = 66
    Height = 13
    Caption = 'NAMA PRO'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 8
    Top = 96
    Width = 45
    Height = 13
    Caption = 'PROFIL'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 8
    Top = 208
    Width = 25
    Height = 13
    Caption = 'KET'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label6: TLabel
    Left = 8
    Top = 232
    Width = 64
    Height = 13
    Caption = 'FOTO PRO'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Image1: TImage
    Left = 8
    Top = 248
    Width = 105
    Height = 105
  end
  object Edit5: TEdit
    Left = 32
    Top = 376
    Width = 33
    Height = 21
    TabOrder = 12
  end
  object Edit1: TEdit
    Left = 96
    Top = 48
    Width = 210
    Height = 21
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 96
    Top = 72
    Width = 210
    Height = 21
    TabOrder = 1
  end
  object Edit3: TEdit
    Left = 96
    Top = 96
    Width = 210
    Height = 105
    AutoSize = False
    TabOrder = 2
  end
  object Edit4: TEdit
    Left = 96
    Top = 208
    Width = 210
    Height = 21
    TabOrder = 3
  end
  object GroupBox1: TGroupBox
    Left = 120
    Top = 304
    Width = 185
    Height = 49
    Caption = 'CARI DATA'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
    object Edit8: TEdit
      Left = 8
      Top = 16
      Width = 169
      Height = 21
      TabOrder = 0
      OnKeyPress = Edit8KeyPress
    end
  end
  object BitBtn1: TBitBtn
    Left = 120
    Top = 360
    Width = 90
    Height = 25
    Caption = 'SIMPAN'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 5
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 216
    Top = 360
    Width = 90
    Height = 25
    Caption = 'EDIT'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 6
    OnClick = BitBtn2Click
  end
  object BitBtn3: TBitBtn
    Left = 120
    Top = 392
    Width = 90
    Height = 25
    Caption = 'HAPUS'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 7
    OnClick = BitBtn3Click
  end
  object BitBtn4: TBitBtn
    Left = 216
    Top = 392
    Width = 90
    Height = 25
    Caption = 'BATAL'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 8
    OnClick = BitBtn4Click
  end
  object BitBtn5: TBitBtn
    Left = 8
    Top = 424
    Width = 297
    Height = 25
    Caption = 'KEMBALI'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 9
    OnClick = BitBtn5Click
  end
  object DBGrid1: TDBGrid
    Left = 120
    Top = 240
    Width = 185
    Height = 57
    DataSource = DataSource1
    TabOrder = 10
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object BitBtn6: TBitBtn
    Left = 8
    Top = 360
    Width = 105
    Height = 57
    Caption = 'CARI FOTO'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 11
    OnClick = BitBtn6Click
  end
  object f: TTable
    Active = True
    TableName = 'PROGRAM STUDI.db'
    Left = 40
    Top = 120
  end
  object DataSource1: TDataSource
    DataSet = f
    Left = 8
    Top = 120
  end
  object OpenPictureDialog1: TOpenPictureDialog
    Left = 104
    Top = 280
  end
end
