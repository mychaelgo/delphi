object Form3: TForm3
  Left = 237
  Top = 161
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
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 88
    Top = 88
    Width = 36
    Height = 13
    Caption = 'no_urut'
  end
  object Label2: TLabel
    Left = 88
    Top = 120
    Width = 27
    Height = 13
    Caption = 'nilai 1'
  end
  object Label3: TLabel
    Left = 88
    Top = 152
    Width = 27
    Height = 13
    Caption = 'nilai 2'
  end
  object Label4: TLabel
    Left = 88
    Top = 176
    Width = 27
    Height = 13
    Caption = 'nilai 3'
  end
  object Label5: TLabel
    Left = 88
    Top = 208
    Width = 21
    Height = 13
    Caption = 'hasil'
  end
  object Edit1: TEdit
    Left = 160
    Top = 80
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 160
    Top = 112
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object Edit3: TEdit
    Left = 160
    Top = 144
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object Edit4: TEdit
    Left = 160
    Top = 176
    Width = 121
    Height = 21
    TabOrder = 3
  end
  object Edit5: TEdit
    Left = 160
    Top = 208
    Width = 121
    Height = 21
    TabOrder = 4
    Text = 'Edit5'
  end
  object Button1: TButton
    Left = 400
    Top = 120
    Width = 75
    Height = 25
    Caption = 'hitung'
    TabOrder = 5
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 400
    Top = 144
    Width = 75
    Height = 25
    Caption = 'simpan'
    TabOrder = 6
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 400
    Top = 168
    Width = 75
    Height = 25
    Caption = 'hapus'
    TabOrder = 7
    OnClick = Button3Click
  end
  object DBGrid1: TDBGrid
    Left = 16
    Top = 312
    Width = 320
    Height = 120
    DataSource = DataSource1
    TabOrder = 8
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object Button4: TButton
    Left = 400
    Top = 192
    Width = 75
    Height = 25
    Caption = 'cari'
    TabOrder = 9
    OnClick = Button4Click
  end
  object DataSource1: TDataSource
    DataSet = Table1
    Left = 184
    Top = 240
  end
  object Table1: TTable
    Active = True
    TableName = 'data.db'
    Left = 224
    Top = 240
  end
end
