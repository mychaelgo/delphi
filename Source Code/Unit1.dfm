object Form1: TForm1
  Left = 287
  Top = 198
  Width = 562
  Height = 337
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Comic Sans MS'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 18
  object Label1: TLabel
    Left = 144
    Top = 3
    Width = 276
    Height = 24
    Caption = 'PT>Maju Mundur'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlue
    Font.Height = -21
    Font.Name = 'Blazed'
    Font.Style = []
    ParentFont = False
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 32
    Width = 553
    Height = 201
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'Comic Sans MS'
    TitleFont.Style = []
  end
  object Button1: TButton
    Left = 328
    Top = 240
    Width = 75
    Height = 25
    Caption = 'Hapus'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 256
    Top = 240
    Width = 75
    Height = 25
    Caption = 'Tambah'
    TabOrder = 2
    OnClick = Button2Click
  end
  object DBNavigator1: TDBNavigator
    Left = 0
    Top = 240
    Width = 224
    Height = 25
    DataSource = DataSource1
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
    TabOrder = 3
  end
  object Edit1: TEdit
    Left = 0
    Top = 272
    Width = 121
    Height = 26
    TabOrder = 4
  end
  object Button3: TButton
    Left = 120
    Top = 272
    Width = 75
    Height = 25
    Caption = 'Search'
    TabOrder = 5
    OnClick = Button3Click
  end
  object query: TADOQuery
    Connection = con
    Parameters = <>
    Left = 8
  end
  object con: TADOConnection
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\Program Files\Co' +
      'mmon Files\Borland Shared\Data\dbdemos.mdb;Persist Security Info' +
      '=False'
    LoginPrompt = False
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 40
  end
  object DataSource1: TDataSource
    DataSet = query
    Left = 72
  end
  object Query1: TADOQuery
    Connection = con
    Parameters = <>
    Left = 104
  end
end
