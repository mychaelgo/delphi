object Form3: TForm3
  Left = 319
  Top = 162
  Width = 696
  Height = 474
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
    Left = 8
    Top = 16
    Width = 18
    Height = 13
    Alignment = taCenter
    Caption = 'NIS'
    Color = clSkyBlue
    ParentColor = False
  end
  object Label2: TLabel
    Left = 8
    Top = 40
    Width = 31
    Height = 13
    Alignment = taCenter
    Caption = 'NAMA'
    Color = clSkyBlue
    ParentColor = False
  end
  object Label3: TLabel
    Left = 8
    Top = 64
    Width = 36
    Height = 13
    Alignment = taCenter
    Caption = 'NILAI 1'
    Color = clSkyBlue
    ParentColor = False
  end
  object Label4: TLabel
    Left = 8
    Top = 88
    Width = 36
    Height = 13
    Alignment = taCenter
    Caption = 'NILAI 2'
    Color = clSkyBlue
    ParentColor = False
  end
  object Label5: TLabel
    Left = 8
    Top = 112
    Width = 36
    Height = 13
    Alignment = taCenter
    Caption = 'NILAI 3'
    Color = clSkyBlue
    ParentColor = False
  end
  object Label6: TLabel
    Left = 8
    Top = 136
    Width = 31
    Height = 13
    Alignment = taCenter
    Caption = 'HASIL'
    Color = clSkyBlue
    ParentColor = False
  end
  object Label7: TLabel
    Left = 8
    Top = 160
    Width = 74
    Height = 13
    Alignment = taCenter
    Caption = 'KETERANGAN'
    Color = clSkyBlue
    ParentColor = False
  end
  object Edit1: TEdit
    Left = 96
    Top = 16
    Width = 97
    Height = 21
    TabOrder = 0
    Text = 'Edit1'
  end
  object Edit2: TEdit
    Left = 96
    Top = 40
    Width = 97
    Height = 21
    TabOrder = 1
    Text = 'Edit2'
  end
  object Edit3: TEdit
    Left = 96
    Top = 64
    Width = 97
    Height = 21
    TabOrder = 2
    Text = 'Edit3'
  end
  object Edit4: TEdit
    Left = 96
    Top = 88
    Width = 97
    Height = 21
    TabOrder = 3
    Text = 'Edit4'
  end
  object Edit5: TEdit
    Left = 96
    Top = 112
    Width = 97
    Height = 21
    TabOrder = 4
    Text = 'Edit5'
  end
  object Edit6: TEdit
    Left = 96
    Top = 136
    Width = 97
    Height = 21
    TabOrder = 5
    Text = 'Edit6'
  end
  object Button1: TButton
    Left = 32
    Top = 192
    Width = 129
    Height = 25
    Caption = 'HITUNG'
    TabOrder = 6
  end
  object Button2: TButton
    Left = 216
    Top = 16
    Width = 89
    Height = 25
    Caption = 'SIMPAN BARU'
    TabOrder = 7
  end
  object Button3: TButton
    Left = 216
    Top = 48
    Width = 89
    Height = 25
    Caption = 'SIMPAN EDIT'
    TabOrder = 8
  end
  object Button4: TButton
    Left = 216
    Top = 80
    Width = 89
    Height = 25
    Caption = 'CARI'
    TabOrder = 9
  end
  object Button5: TButton
    Left = 216
    Top = 112
    Width = 89
    Height = 25
    Caption = 'HAPUS'
    TabOrder = 10
  end
  object Button6: TButton
    Left = 216
    Top = 144
    Width = 89
    Height = 25
    Caption = 'KEMBALI'
    TabOrder = 11
  end
  object DBGrid1: TDBGrid
    Left = 72
    Top = 224
    Width = 377
    Height = 153
    TabOrder = 12
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object Edit7: TEdit
    Left = 96
    Top = 160
    Width = 97
    Height = 21
    TabOrder = 13
    Text = 'Edit7'
  end
end
