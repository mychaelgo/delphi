object Form3: TForm3
  Left = 206
  Top = 199
  Width = 322
  Height = 348
  Caption = 'MATA PELAJARAN'
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
    Left = 30
    Top = 0
    Width = 258
    Height = 38
    Alignment = taCenter
    Caption = 'MATA PELAJARAN'
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
    Width = 88
    Height = 13
    Caption = 'KODE MATPEL'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 8
    Top = 64
    Width = 22
    Height = 13
    Caption = 'NIP'
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
    Width = 36
    Height = 13
    Caption = 'NAMA'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Edit1: TEdit
    Left = 104
    Top = 48
    Width = 200
    Height = 21
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 104
    Top = 72
    Width = 200
    Height = 21
    TabOrder = 1
  end
  object Edit3: TEdit
    Left = 104
    Top = 96
    Width = 200
    Height = 21
    TabOrder = 2
  end
  object BitBtn1: TBitBtn
    Left = 152
    Top = 216
    Width = 75
    Height = 25
    Caption = 'SIMPAN'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 232
    Top = 216
    Width = 75
    Height = 25
    Caption = 'EDIT'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
    OnClick = BitBtn2Click
  end
  object BitBtn3: TBitBtn
    Left = 152
    Top = 248
    Width = 75
    Height = 25
    Caption = 'HAPUS'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 5
    OnClick = BitBtn3Click
  end
  object BitBtn4: TBitBtn
    Left = 232
    Top = 248
    Width = 75
    Height = 25
    Caption = 'BATAL'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 6
    OnClick = BitBtn4Click
  end
  object BitBtn5: TBitBtn
    Left = 8
    Top = 280
    Width = 297
    Height = 25
    Caption = 'KEMBALI'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 7
    OnClick = BitBtn5Click
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 216
    Width = 137
    Height = 49
    Caption = 'CARI DATA'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 8
    object Edit4: TEdit
      Left = 8
      Top = 16
      Width = 121
      Height = 21
      TabOrder = 0
      OnKeyPress = Edit4KeyPress
    end
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 128
    Width = 297
    Height = 81
    DataSource = DataSource1
    TabOrder = 9
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object b: TTable
    Active = True
    TableName = 'DATA MATA PELAJARAN.db'
    Left = 248
    Top = 32
  end
  object DataSource1: TDataSource
    DataSet = b
    Left = 280
    Top = 32
  end
end
