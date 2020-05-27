object frmLogin: TfrmLogin
  Left = 384
  Top = 246
  BorderStyle = bsDialog
  Caption = 'Login'
  ClientHeight = 88
  ClientWidth = 215
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 48
    Height = 13
    Caption = 'Username'
  end
  object Label2: TLabel
    Left = 8
    Top = 32
    Width = 46
    Height = 13
    Caption = 'Password'
  end
  object edtUsername: TEdit
    Left = 72
    Top = 8
    Width = 137
    Height = 21
    TabOrder = 0
  end
  object edtPassword: TEdit
    Left = 72
    Top = 32
    Width = 137
    Height = 21
    PasswordChar = '*'
    TabOrder = 1
  end
  object btnLogin: TButton
    Left = 88
    Top = 56
    Width = 57
    Height = 25
    Caption = 'Login'
    TabOrder = 2
    OnClick = btnLoginClick
  end
  object btnCancel: TButton
    Left = 152
    Top = 56
    Width = 57
    Height = 25
    Caption = 'Cancel'
    TabOrder = 3
    OnClick = btnCancelClick
  end
end
