object Form1: TForm1
  Left = 274
  Top = 128
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsDialog
  Caption = 'Database Delphi'
  ClientHeight = 256
  ClientWidth = 359
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 8
    Top = 8
    Width = 345
    Height = 209
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'nama'
        Title.Caption = 'Nama'
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'hp'
        Title.Caption = 'Handphone'
        Width = 100
        Visible = True
      end>
  end
  object DBNavigator1: TDBNavigator
    Left = 8
    Top = 224
    Width = 340
    Height = 25
    DataSource = DataSource1
    TabOrder = 1
  end
  object ADOConn: TADOConnection
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=data.mdb;Persist Se' +
      'curity Info=False'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 8
  end
  object ADOTable1: TADOTable
    Connection = ADOConn
    CursorType = ctStatic
    TableName = 'phonebook'
    Left = 40
  end
  object DataSource1: TDataSource
    DataSet = ADOTable1
    Left = 72
  end
end
