object Form8: TForm8
  Left = 311
  Top = 123
  Width = 337
  Height = 475
  Caption = 'SISWA'
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
    Left = 120
    Top = 0
    Width = 101
    Height = 38
    Alignment = taCenter
    Caption = 'SISWA'
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
    Width = 61
    Height = 13
    Caption = 'NO INDUK'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Microsoft Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 8
    Top = 72
    Width = 75
    Height = 13
    Caption = 'ID JURUSAN'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Microsoft Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 8
    Top = 96
    Width = 79
    Height = 13
    Caption = 'NAMA SISWA'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Microsoft Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 8
    Top = 120
    Width = 54
    Height = 13
    Caption = 'KELAMIN'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Microsoft Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label6: TLabel
    Left = 8
    Top = 152
    Width = 23
    Height = 13
    Caption = 'TTL'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Microsoft Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label7: TLabel
    Left = 8
    Top = 168
    Width = 43
    Height = 13
    Caption = 'AGAMA'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Microsoft Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label8: TLabel
    Left = 8
    Top = 216
    Width = 77
    Height = 13
    Caption = 'FOTO SISWA'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Microsoft Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label9: TLabel
    Left = 8
    Top = 192
    Width = 93
    Height = 13
    Caption = 'ALAMAT SISWA'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Microsoft Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Image1: TImage
    Left = 8
    Top = 232
    Width = 105
    Height = 105
  end
  object Edit1: TEdit
    Left = 120
    Top = 48
    Width = 200
    Height = 21
    TabOrder = 0
    Text = 'Edit1'
  end
  object Edit2: TEdit
    Left = 120
    Top = 72
    Width = 200
    Height = 21
    TabOrder = 1
    Text = 'Edit2'
  end
  object Edit3: TEdit
    Left = 120
    Top = 96
    Width = 200
    Height = 21
    TabOrder = 2
    Text = 'Edit3'
  end
  object ComboBox1: TComboBox
    Left = 120
    Top = 120
    Width = 145
    Height = 21
    ItemHeight = 13
    TabOrder = 3
    Text = 'ComboBox1'
    Items.Strings = (
      'perempuan'
      'laki_laki')
  end
  object Edit4: TEdit
    Left = 120
    Top = 144
    Width = 200
    Height = 21
    TabOrder = 4
    Text = 'Edit4'
  end
  object ComboBox2: TComboBox
    Left = 120
    Top = 168
    Width = 145
    Height = 21
    ItemHeight = 13
    TabOrder = 5
    Text = 'ComboBox2'
    Items.Strings = (
      'islam'
      'kristen'
      'hindu'
      'budha'
      'katolik')
  end
  object Edit5: TEdit
    Left = 120
    Top = 192
    Width = 200
    Height = 21
    TabOrder = 6
    Text = 'Edit5'
  end
  object GroupBox1: TGroupBox
    Left = 120
    Top = 288
    Width = 201
    Height = 49
    Caption = 'CARI DATA'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 7
    object Edit8: TEdit
      Left = 8
      Top = 16
      Width = 185
      Height = 21
      TabOrder = 0
      OnKeyPress = Edit8KeyPress
    end
  end
  object BitBtn1: TBitBtn
    Left = 120
    Top = 344
    Width = 95
    Height = 25
    Caption = 'SIMPAN'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 8
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 224
    Top = 344
    Width = 95
    Height = 25
    Caption = 'EDIT'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 9
    OnClick = BitBtn2Click
  end
  object BitBtn3: TBitBtn
    Left = 120
    Top = 376
    Width = 95
    Height = 25
    Caption = 'HAPUS'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 10
    OnClick = BitBtn3Click
  end
  object BitBtn4: TBitBtn
    Left = 224
    Top = 376
    Width = 95
    Height = 25
    Caption = 'BATAL'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 11
    OnClick = BitBtn4Click
  end
  object BitBtn5: TBitBtn
    Left = 8
    Top = 408
    Width = 313
    Height = 25
    Caption = 'KEMBALI'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 12
    OnClick = BitBtn5Click
  end
  object DBGrid1: TDBGrid
    Left = 120
    Top = 224
    Width = 201
    Height = 57
    DataSource = DataSource1
    TabOrder = 13
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object BitBtn6: TBitBtn
    Left = 8
    Top = 344
    Width = 105
    Height = 57
    Caption = 'BitBtn6'
    TabOrder = 14
  end
  object g: TTable
    Active = True
    TableName = 'DATA SISWA.db'
    Left = 32
    Top = 24
  end
  object DataSource1: TDataSource
    DataSet = g
    Left = 64
    Top = 24
  end
end
