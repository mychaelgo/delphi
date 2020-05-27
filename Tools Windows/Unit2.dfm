object Form2: TForm2
  Left = 0
  Top = 0
  BorderStyle = bsToolWindow
  Caption = 'Tool'
  ClientHeight = 180
  ClientWidth = 260
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox2: TGroupBox
    Left = 8
    Top = 8
    Width = 74
    Height = 81
    Caption = 'Regedit'
    TabOrder = 0
    object SpeedButton1: TSpeedButton
      Left = 13
      Top = 56
      Width = 46
      Height = 22
      Caption = 'Open'
      OnClick = SpeedButton1Click
    end
    object RadioButton3: TRadioButton
      Left = 3
      Top = 14
      Width = 63
      Height = 17
      Caption = 'Enable'
      TabOrder = 0
      OnClick = RadioButton3Click
    end
    object RadioButton4: TRadioButton
      Left = 3
      Top = 37
      Width = 63
      Height = 17
      Caption = 'Disable'
      TabOrder = 1
      OnClick = RadioButton4Click
    end
  end
  object GroupBox3: TGroupBox
    Left = 90
    Top = 8
    Width = 79
    Height = 81
    Caption = 'Folder Option'
    TabOrder = 1
    object RadioButton5: TRadioButton
      Left = 3
      Top = 14
      Width = 63
      Height = 17
      Caption = 'Show'
      TabOrder = 0
      OnClick = RadioButton5Click
    end
    object RadioButton6: TRadioButton
      Left = 3
      Top = 37
      Width = 63
      Height = 17
      Caption = 'Hide'
      TabOrder = 1
      OnClick = RadioButton6Click
    end
  end
  object GroupBox4: TGroupBox
    Left = 175
    Top = 8
    Width = 81
    Height = 81
    Caption = 'Task Manager'
    TabOrder = 2
    object SpeedButton2: TSpeedButton
      Left = 13
      Top = 56
      Width = 46
      Height = 22
      Caption = 'Open'
      OnClick = SpeedButton2Click
    end
    object RadioButton7: TRadioButton
      Left = 3
      Top = 14
      Width = 63
      Height = 17
      Caption = 'Enable'
      TabOrder = 0
      OnClick = RadioButton7Click
    end
    object RadioButton8: TRadioButton
      Left = 3
      Top = 37
      Width = 63
      Height = 17
      Caption = 'Disable'
      TabOrder = 1
      OnClick = RadioButton8Click
    end
  end
  object GroupBox5: TGroupBox
    Left = 8
    Top = 95
    Width = 74
    Height = 77
    Caption = 'Find'
    TabOrder = 3
    object RadioButton9: TRadioButton
      Left = 3
      Top = 14
      Width = 63
      Height = 17
      Caption = 'Show'
      TabOrder = 0
      OnClick = RadioButton9Click
    end
    object RadioButton10: TRadioButton
      Left = 3
      Top = 37
      Width = 63
      Height = 17
      Caption = 'Hide'
      TabOrder = 1
      OnClick = RadioButton10Click
    end
  end
  object GroupBox6: TGroupBox
    Left = 92
    Top = 95
    Width = 79
    Height = 77
    Caption = 'Run'
    TabOrder = 4
    object RadioButton11: TRadioButton
      Left = 3
      Top = 14
      Width = 63
      Height = 17
      Caption = 'Show'
      TabOrder = 0
      OnClick = RadioButton11Click
    end
    object RadioButton12: TRadioButton
      Left = 3
      Top = 37
      Width = 63
      Height = 17
      Caption = 'Hide'
      TabOrder = 1
      OnClick = RadioButton12Click
    end
  end
  object Button1: TButton
    Left = 177
    Top = 147
    Width = 75
    Height = 25
    Caption = 'Selesai'
    TabOrder = 5
    OnClick = Button1Click
  end
  object Timer1: TTimer
    Interval = 1
    OnTimer = Timer1Timer
    Left = 224
    Top = 112
  end
end
