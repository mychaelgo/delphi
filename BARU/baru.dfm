object Form1: TForm1
  Left = 192
  Top = 114
  Width = 696
  Height = 480
  Caption = 'Form1'
  Color = clBackground
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 128
    Top = 32
    Width = 26
    Height = 13
    Alignment = taCenter
    Caption = 'NISN'
    Color = clLime
    ParentColor = False
  end
  object Label2: TLabel
    Left = 128
    Top = 56
    Width = 31
    Height = 13
    Alignment = taCenter
    Caption = 'NAMA'
    Color = clLime
    ParentColor = False
  end
  object Label3: TLabel
    Left = 128
    Top = 80
    Width = 34
    Height = 13
    Alignment = taCenter
    Caption = 'KELAS'
    Color = clLime
    ParentColor = False
  end
  object Label4: TLabel
    Left = 128
    Top = 104
    Width = 51
    Height = 13
    Alignment = taCenter
    Caption = 'JURUSAN'
    Color = clLime
    ParentColor = False
  end
  object Label5: TLabel
    Left = 128
    Top = 128
    Width = 27
    Height = 13
    Alignment = taCenter
    Caption = 'NILAI'
    Color = clLime
    ParentColor = False
  end
  object Label6: TLabel
    Left = 128
    Top = 152
    Width = 74
    Height = 13
    Alignment = taCenter
    Caption = 'KETERANGAN'
    Color = clLime
    ParentColor = False
  end
  object Edit1: TEdit
    Left = 232
    Top = 32
    Width = 105
    Height = 21
    TabOrder = 0
    Text = 'Edit1'
  end
  object Edit2: TEdit
    Left = 232
    Top = 56
    Width = 105
    Height = 21
    TabOrder = 1
    Text = 'Edit2'
  end
  object Edit3: TEdit
    Left = 232
    Top = 128
    Width = 105
    Height = 21
    TabOrder = 2
    Text = 'Edit3'
    OnChange = Edit3Change
  end
  object Edit4: TEdit
    Left = 232
    Top = 152
    Width = 105
    Height = 21
    TabOrder = 3
    Text = 'Edit4'
    OnChange = Edit4Change
  end
  object ComboBox1: TComboBox
    Left = 232
    Top = 80
    Width = 105
    Height = 21
    ItemHeight = 13
    TabOrder = 4
    Text = 'ComboBox1'
  end
  object ComboBox2: TComboBox
    Left = 232
    Top = 104
    Width = 105
    Height = 21
    ItemHeight = 13
    TabOrder = 5
    Text = 'ComboBox2'
  end
  object DBGrid1: TDBGrid
    Left = 96
    Top = 224
    Width = 449
    Height = 105
    DataSource = DataSource1
    TabOrder = 6
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object DataSource1: TDataSource
    Left = 8
    Top = 8
  end
  object Table1: TTable
    Active = True
    TableName = 'BARU.db'
    Left = 48
    Top = 8
  end
end
