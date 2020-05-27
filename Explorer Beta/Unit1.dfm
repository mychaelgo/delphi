object Form1: TForm1
  Left = 247
  Top = 198
  BorderStyle = bsToolWindow
  Caption = 'Form1'
  ClientHeight = 341
  ClientWidth = 475
  Color = clBtnFace
  DockSite = True
  DragKind = dkDock
  DragMode = dmAutomatic
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 248
    Top = 264
    Width = 31
    Height = 13
    Caption = 'Label1'
  end
  object Label2: TLabel
    Left = 8
    Top = 8
    Width = 41
    Height = 13
    Caption = 'Addres :'
  end
  object Label3: TLabel
    Left = 8
    Top = 335
    Width = 4
    Height = 13
    Caption = '-'
  end
  object Label4: TLabel
    Left = 8
    Top = 354
    Width = 4
    Height = 13
    Caption = '-'
  end
  object FileListBox1: TFileListBox
    Left = 183
    Top = 33
    Width = 292
    Height = 289
    ItemHeight = 16
    PopupMenu = PopupMenu1
    ShowGlyphs = True
    TabOrder = 0
    OnChange = FileListBox1Change
  end
  object DirectoryListBox1: TDirectoryListBox
    Left = 0
    Top = 65
    Width = 177
    Height = 257
    ItemHeight = 16
    PopupMenu = PopupMenu2
    TabOrder = 1
    OnChange = DirectoryListBox1Change
    OnClick = DirectoryListBox1Click
  end
  object DriveComboBox1: TDriveComboBox
    Left = 0
    Top = 40
    Width = 177
    Height = 19
    TabOrder = 2
    OnChange = DriveComboBox1Change
  end
  object Edit1: TEdit
    Left = 55
    Top = 6
    Width = 362
    Height = 21
    TabOrder = 3
  end
  object Button1: TButton
    Left = 423
    Top = 5
    Width = 44
    Height = 22
    Caption = 'Go'
    TabOrder = 4
    OnClick = Button1Click
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 322
    Width = 475
    Height = 19
    Panels = <
      item
        Text = '0'
        Width = 210
      end
      item
        Text = '1'
        Width = 110
      end
      item
        Text = '2'
        Width = 70
      end
      item
        Text = '3'
        Width = 50
      end>
    ExplicitTop = 349
    ExplicitWidth = 540
  end
  object MainMenu1: TMainMenu
    Left = 472
    Top = 40
    object File1: TMenuItem
      Caption = 'File'
    end
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 472
    Top = 72
  end
  object PopupMenu1: TPopupMenu
    Left = 472
    Top = 104
    object Open1: TMenuItem
      Caption = 'Open'
      OnClick = Open1Click
    end
    object Delete1: TMenuItem
      Caption = 'Delete'
      OnClick = Delete1Click
    end
    object Copy1: TMenuItem
      Caption = 'Copy'
      OnClick = Copy1Click
    end
    object Cut1: TMenuItem
      Caption = 'Cut'
      OnClick = Cut1Click
    end
    object Paste1: TMenuItem
      Caption = 'Paste'
      OnClick = Paste1Click
    end
    object new1: TMenuItem
      Caption = 'new'
      object extFile1: TMenuItem
        Caption = 'Text File'
        OnClick = extFile1Click
      end
    end
    object Properties1: TMenuItem
      Caption = 'Properties'
    end
  end
  object PopupMenu2: TPopupMenu
    Left = 472
    Top = 136
    object Delete2: TMenuItem
      Caption = 'Delete'
      OnClick = Delete2Click
    end
    object New2: TMenuItem
      Caption = 'New'
      object Folder2: TMenuItem
        Caption = 'Folder'
        OnClick = Folder2Click
      end
    end
  end
  object XPManifest1: TXPManifest
    Left = 472
    Top = 168
  end
end
