object Form3: TForm3
  Left = 216
  Top = 236
  Width = 696
  Height = 480
  Caption = 'Form3'
  Color = clBtnFace
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
    Left = 32
    Top = 72
    Width = 59
    Height = 13
    Caption = 'KODE IRUT'
    Color = clBackground
    ParentColor = False
  end
  object Label2: TLabel
    Left = 32
    Top = 96
    Width = 36
    Height = 13
    Caption = 'NILAI 1'
    Color = clBackground
    ParentColor = False
  end
  object Label3: TLabel
    Left = 32
    Top = 120
    Width = 36
    Height = 13
    Caption = 'NILAI 2'
    Color = clBackground
    ParentColor = False
  end
  object Label4: TLabel
    Left = 32
    Top = 144
    Width = 36
    Height = 13
    Caption = 'NILAI 3'
    Color = clBackground
    ParentColor = False
  end
  object Label5: TLabel
    Left = 32
    Top = 168
    Width = 31
    Height = 13
    Caption = 'HASIL'
    Color = clBackground
    ParentColor = False
  end
  object Edit1: TEdit
    Left = 104
    Top = 72
    Width = 121
    Height = 21
    TabOrder = 0
    Text = 'Edit1'
  end
  object Edit2: TEdit
    Left = 104
    Top = 96
    Width = 121
    Height = 21
    TabOrder = 1
    Text = 'Edit2'
  end
  object Edit3: TEdit
    Left = 104
    Top = 120
    Width = 121
    Height = 21
    TabOrder = 2
    Text = 'Edit3'
  end
  object Edit4: TEdit
    Left = 104
    Top = 144
    Width = 121
    Height = 21
    TabOrder = 3
    Text = 'Edit4'
  end
  object Edit5: TEdit
    Left = 104
    Top = 168
    Width = 121
    Height = 21
    TabOrder = 4
    Text = 'Edit5'
  end
  object Button1: TButton
    Left = 72
    Top = 200
    Width = 75
    Height = 25
    Caption = 'HITUNG'
    TabOrder = 5
    OnClick = Button1Click
  end
  object DBGrid1: TDBGrid
    Left = 72
    Top = 280
    Width = 513
    Height = 145
    DataSource = DataSource1
    TabOrder = 6
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object Button2: TButton
    Left = 256
    Top = 88
    Width = 75
    Height = 25
    Caption = 'SIMPAN'
    TabOrder = 7
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 256
    Top = 120
    Width = 75
    Height = 25
    Caption = 'HAPUS'
    TabOrder = 8
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 256
    Top = 152
    Width = 75
    Height = 25
    Caption = 'CARI'
    TabOrder = 9
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 256
    Top = 184
    Width = 75
    Height = 25
    Caption = 'EDIT'
    TabOrder = 10
    OnClick = Button5Click
  end
  object Button6: TButton
    Left = 256
    Top = 216
    Width = 75
    Height = 25
    Caption = 'KEMBALI'
    TabOrder = 11
    OnClick = Button6Click
  end
  object Button7: TButton
    Left = 384
    Top = 96
    Width = 121
    Height = 25
    Caption = 'HAPUS TEXT'
    TabOrder = 12
    OnClick = Button7Click
  end
  object Table1: TTable
    Active = True
    TableName = 'DBKODE.db'
    Left = 16
    Top = 8
  end
  object DataSource1: TDataSource
    DataSet = Table1
    Left = 56
    Top = 8
  end
end
