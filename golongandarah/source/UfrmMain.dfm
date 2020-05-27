object frmMain: TfrmMain
  Left = 235
  Top = 132
  Width = 695
  Height = 558
  Caption = 'Database Golongan Darah'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  DesignSize = (
    687
    524)
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox2: TGroupBox
    Left = 8
    Top = 8
    Width = 673
    Height = 281
    Anchors = [akLeft, akTop, akRight]
    Caption = 'Editor'
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 24
      Width = 28
      Height = 13
      Caption = 'Nama'
    end
    object Label2: TLabel
      Left = 8
      Top = 48
      Width = 62
      Height = 13
      Caption = 'Tempat Lahir'
    end
    object Label3: TLabel
      Left = 8
      Top = 72
      Width = 65
      Height = 13
      Caption = 'Tanggal Lahir'
    end
    object Label4: TLabel
      Left = 8
      Top = 96
      Width = 64
      Height = 13
      Caption = 'Jenis Kelamin'
    end
    object Label5: TLabel
      Left = 8
      Top = 120
      Width = 78
      Height = 13
      Caption = 'Golongan Darah'
    end
    object Label6: TLabel
      Left = 8
      Top = 144
      Width = 39
      Height = 13
      Caption = 'Telepon'
    end
    object Label7: TLabel
      Left = 8
      Top = 168
      Width = 56
      Height = 13
      Caption = 'Handphone'
    end
    object Label8: TLabel
      Left = 8
      Top = 192
      Width = 25
      Height = 13
      Caption = 'Email'
    end
    object Label9: TLabel
      Left = 352
      Top = 24
      Width = 32
      Height = 13
      Caption = 'Alamat'
    end
    object Label10: TLabel
      Left = 352
      Top = 160
      Width = 75
      Height = 13
      Caption = 'Catatan Khusus'
    end
    object Label11: TLabel
      Left = 352
      Top = 88
      Width = 79
      Height = 13
      Caption = 'Kota/Kabupaten'
    end
    object Label12: TLabel
      Left = 352
      Top = 112
      Width = 37
      Height = 13
      Caption = 'Provinsi'
    end
    object Label13: TLabel
      Left = 352
      Top = 136
      Width = 42
      Height = 13
      Caption = 'Kodepos'
    end
    object Label14: TLabel
      Left = 96
      Top = 24
      Width = 3
      Height = 13
      Caption = ':'
    end
    object Label15: TLabel
      Left = 96
      Top = 48
      Width = 3
      Height = 13
      Caption = ':'
    end
    object Label16: TLabel
      Left = 96
      Top = 72
      Width = 3
      Height = 13
      Caption = ':'
    end
    object Label17: TLabel
      Left = 96
      Top = 96
      Width = 3
      Height = 13
      Caption = ':'
    end
    object Label18: TLabel
      Left = 96
      Top = 120
      Width = 3
      Height = 13
      Caption = ':'
    end
    object Label19: TLabel
      Left = 96
      Top = 144
      Width = 3
      Height = 13
      Caption = ':'
    end
    object Label20: TLabel
      Left = 96
      Top = 168
      Width = 3
      Height = 13
      Caption = ':'
    end
    object Label21: TLabel
      Left = 96
      Top = 192
      Width = 3
      Height = 13
      Caption = ':'
    end
    object Label22: TLabel
      Left = 440
      Top = 24
      Width = 3
      Height = 13
      Caption = ':'
    end
    object Label23: TLabel
      Left = 440
      Top = 88
      Width = 3
      Height = 13
      Caption = ':'
    end
    object Label24: TLabel
      Left = 440
      Top = 112
      Width = 3
      Height = 13
      Caption = ':'
    end
    object Label25: TLabel
      Left = 440
      Top = 136
      Width = 3
      Height = 13
      Caption = ':'
    end
    object Label26: TLabel
      Left = 440
      Top = 160
      Width = 3
      Height = 13
      Caption = ':'
    end
    object edtNama: TDBEdit
      Left = 112
      Top = 24
      Width = 193
      Height = 21
      DataField = 'nama'
      DataSource = DSData
      TabOrder = 0
    end
    object edtTempatLahir: TDBEdit
      Left = 112
      Top = 48
      Width = 193
      Height = 21
      DataField = 'tempat_lahir'
      DataSource = DSData
      TabOrder = 1
    end
    object edtTelepon: TDBEdit
      Left = 112
      Top = 144
      Width = 193
      Height = 21
      DataField = 'telp'
      DataSource = DSData
      TabOrder = 5
    end
    object edtHandphone: TDBEdit
      Left = 112
      Top = 168
      Width = 193
      Height = 21
      DataField = 'hp'
      DataSource = DSData
      TabOrder = 6
    end
    object mCatatanKhusus: TDBMemo
      Left = 456
      Top = 160
      Width = 209
      Height = 81
      DataField = 'catatan_khusus'
      DataSource = DSData
      TabOrder = 12
    end
    object mAlamat: TDBMemo
      Left = 456
      Top = 24
      Width = 209
      Height = 57
      DataField = 'alamat'
      DataSource = DSData
      TabOrder = 8
    end
    object edtKota: TDBEdit
      Left = 456
      Top = 88
      Width = 209
      Height = 21
      DataField = 'kota'
      DataSource = DSData
      TabOrder = 9
    end
    object edtKodepos: TDBEdit
      Left = 456
      Top = 136
      Width = 113
      Height = 21
      DataField = 'kodepos'
      DataSource = DSData
      TabOrder = 11
    end
    object edtEmail: TDBEdit
      Left = 112
      Top = 192
      Width = 193
      Height = 21
      DataField = 'email'
      DataSource = DSData
      TabOrder = 7
    end
    object dtpTanggalLahir: TDateTimePicker
      Left = 112
      Top = 72
      Width = 193
      Height = 21
      Date = 29221.467631840280000000
      Time = 29221.467631840280000000
      TabOrder = 2
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 112
      Top = 96
      Width = 81
      Height = 21
      DataField = 'jenis_kelamin'
      DataSource = DSData
      KeyField = 'id'
      ListField = 'desc'
      ListSource = DSJenisKelamin
      TabOrder = 3
    end
    object cmbGolonganDarah: TDBLookupComboBox
      Left = 112
      Top = 120
      Width = 81
      Height = 21
      DataField = 'id_golongan_darah'
      DataSource = DSData
      KeyField = 'id'
      ListField = 'desc'
      ListSource = DSGolonganDarah
      TabOrder = 4
    end
    object cmbProvinsi: TDBLookupComboBox
      Left = 456
      Top = 112
      Width = 177
      Height = 21
      DataField = 'id_provinsi'
      DataSource = DSData
      KeyField = 'id'
      ListField = 'desc'
      ListSource = DSProvinsi
      TabOrder = 10
    end
    object btnTambah: TButton
      Left = 344
      Top = 248
      Width = 75
      Height = 25
      Caption = '&Tambah'
      TabOrder = 13
      OnClick = btnTambahClick
    end
    object btnSimpan: TButton
      Left = 424
      Top = 248
      Width = 75
      Height = 25
      Caption = '&Simpan'
      TabOrder = 14
      OnClick = btnSimpanClick
    end
    object btnBatal: TButton
      Left = 504
      Top = 248
      Width = 75
      Height = 25
      Caption = '&Batal'
      TabOrder = 15
      OnClick = btnBatalClick
    end
    object btnHapus: TButton
      Left = 584
      Top = 248
      Width = 75
      Height = 25
      Caption = '&Hapus'
      TabOrder = 16
      OnClick = btnHapusClick
    end
  end
  object GroupBox1: TGroupBox
    Left = 192
    Top = 296
    Width = 489
    Height = 219
    Anchors = [akLeft, akTop, akRight, akBottom]
    Caption = 'Data View'
    TabOrder = 1
    DesignSize = (
      489
      219)
    object Label31: TLabel
      Left = 8
      Top = 186
      Width = 59
      Height = 13
      Anchors = [akLeft, akBottom]
      Caption = 'Total Data : '
    end
    object lblTotalData: TLabel
      Left = 80
      Top = 186
      Width = 6
      Height = 13
      Anchors = [akLeft, akBottom]
      Caption = '0'
    end
    object DBGrid1: TDBGrid
      Left = 8
      Top = 16
      Width = 473
      Height = 163
      Anchors = [akLeft, akTop, akRight, akBottom]
      DataSource = DSData
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
          Width = 128
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'tempat_lahir'
          Title.Caption = 'Tempat Lahir'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'tgl_lahir'
          Title.Caption = 'Tanggal Lahir'
          Width = 90
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'desc_jenis_kelamin'
          Title.Caption = 'Jenis Kelamin'
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'desc_golongan_darah'
          Title.Caption = 'Gol. Darah'
          Width = 58
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'telp'
          Title.Caption = 'Telepon'
          Width = 88
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'hp'
          Title.Caption = 'HP'
          Width = 88
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'email'
          Title.Caption = 'Email'
          Width = 128
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'alamat'
          Title.Caption = 'Alamat'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'kota'
          Title.Caption = 'Kota'
          Width = 120
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'desc_provinsi'
          Title.Caption = 'Provinsi'
          Width = 128
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'kodepos'
          Title.Caption = 'Kodepos'
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'catatan_khusus'
          Title.Caption = 'Catatan Khusus'
          Width = 100
          Visible = True
        end>
    end
    object btnPrint: TButton
      Left = 400
      Top = 184
      Width = 75
      Height = 25
      Caption = '&Print'
      TabOrder = 1
      OnClick = btnPrintClick
    end
  end
  object GroupBox3: TGroupBox
    Left = 8
    Top = 296
    Width = 177
    Height = 219
    Anchors = [akLeft, akTop, akBottom]
    Caption = 'Data Filter'
    TabOrder = 2
    object Label27: TLabel
      Left = 8
      Top = 16
      Width = 37
      Height = 13
      Caption = 'Nama : '
    end
    object Label28: TLabel
      Left = 8
      Top = 56
      Width = 73
      Height = 13
      Caption = 'Jenis Kelamin : '
    end
    object Label29: TLabel
      Left = 8
      Top = 96
      Width = 87
      Height = 13
      Caption = 'Golongan Darah : '
    end
    object Label30: TLabel
      Left = 8
      Top = 136
      Width = 31
      Height = 13
      Caption = 'Kota : '
    end
    object edtFilterNama: TEdit
      Left = 8
      Top = 32
      Width = 161
      Height = 21
      TabOrder = 0
    end
    object btnCari: TButton
      Left = 96
      Top = 184
      Width = 75
      Height = 25
      Caption = '&Filter'
      TabOrder = 1
      OnClick = btnCariClick
    end
    object cmbFilterJenisKelamin: TComboBox
      Left = 8
      Top = 72
      Width = 161
      Height = 19
      Style = csOwnerDrawFixed
      ItemHeight = 13
      TabOrder = 2
      OnDrawItem = cmbFilterJenisKelaminDrawItem
      Items.Strings = (
        '0=Semua')
    end
    object cmbFilterGolonganDarah: TComboBox
      Left = 8
      Top = 112
      Width = 81
      Height = 19
      Style = csOwnerDrawFixed
      ItemHeight = 13
      TabOrder = 3
      OnDrawItem = cmbFilterGolonganDarahDrawItem
      Items.Strings = (
        '0=Semua')
    end
    object edtFilterKota: TEdit
      Left = 8
      Top = 152
      Width = 161
      Height = 21
      TabOrder = 4
    end
    object btnUnfilter: TButton
      Left = 16
      Top = 184
      Width = 75
      Height = 25
      Caption = '&Unfilter'
      TabOrder = 5
      OnClick = btnUnfilterClick
    end
  end
  object ATblGolDarah: TADOTable
    Active = True
    Connection = DM.ADOConn
    CursorType = ctStatic
    TableName = 'tblgolongandarah'
    Left = 408
    Top = 408
  end
  object DSData: TDataSource
    DataSet = ATblData
    OnDataChange = DSDataDataChange
    Left = 280
    Top = 384
  end
  object DSGolonganDarah: TDataSource
    DataSet = ATblGolDarah
    Left = 280
    Top = 416
  end
  object ATblJenisKelamin: TADOTable
    Active = True
    Connection = DM.ADOConn
    CursorType = ctStatic
    TableName = 'tbljeniskelamin'
    Left = 456
    Top = 408
  end
  object DSJenisKelamin: TDataSource
    DataSet = ATblJenisKelamin
    Left = 336
    Top = 424
  end
  object DSProvinsi: TDataSource
    DataSet = AQryProvinsi
    Left = 440
    Top = 432
  end
  object ATblData: TADOTable
    Active = True
    Connection = DM.ADOConn
    CursorType = ctStatic
    TableName = 'tbldata'
    Left = 360
    Top = 384
    object ATblDataid: TAutoIncField
      FieldName = 'id'
      ReadOnly = True
    end
    object ATblDatanama: TWideStringField
      FieldName = 'nama'
      Size = 64
    end
    object ATblDatatempat_lahir: TWideStringField
      FieldName = 'tempat_lahir'
      Size = 32
    end
    object ATblDatatgl_lahir: TDateTimeField
      FieldName = 'tgl_lahir'
    end
    object ATblDatajenis_kelamin: TSmallintField
      FieldName = 'jenis_kelamin'
    end
    object ATblDatadesc_jenis_kelamin: TStringField
      FieldKind = fkLookup
      FieldName = 'desc_jenis_kelamin'
      LookupDataSet = ATblJenisKelamin
      LookupKeyFields = 'id'
      LookupResultField = 'desc'
      KeyFields = 'jenis_kelamin'
      Size = 15
      Lookup = True
    end
    object ATblDataid_golongan_darah: TSmallintField
      FieldName = 'id_golongan_darah'
    end
    object ATblDatadesc_golongan_darah: TStringField
      FieldKind = fkLookup
      FieldName = 'desc_golongan_darah'
      LookupDataSet = ATblGolDarah
      LookupKeyFields = 'id'
      LookupResultField = 'desc'
      KeyFields = 'id_golongan_darah'
      Size = 2
      Lookup = True
    end
    object ATblDatatelp: TWideStringField
      FieldName = 'telp'
      Size = 15
    end
    object ATblDatahp: TWideStringField
      FieldName = 'hp'
      Size = 15
    end
    object ATblDataemail: TWideStringField
      FieldName = 'email'
      Size = 128
    end
    object ATblDataalamat: TMemoField
      FieldName = 'alamat'
      BlobType = ftMemo
    end
    object ATblDatakota: TWideStringField
      FieldName = 'kota'
      Size = 50
    end
    object ATblDataid_provinsi: TSmallintField
      FieldName = 'id_provinsi'
    end
    object ATblDatadesc_provinsi: TStringField
      FieldKind = fkLookup
      FieldName = 'desc_provinsi'
      LookupDataSet = AQryProvinsi
      LookupKeyFields = 'id'
      LookupResultField = 'desc'
      KeyFields = 'id_provinsi'
      Size = 50
      Lookup = True
    end
    object ATblDatakodepos: TWideStringField
      FieldName = 'kodepos'
      Size = 6
    end
    object ATblDatacatatan_khusus: TMemoField
      FieldName = 'catatan_khusus'
      BlobType = ftMemo
    end
  end
  object AQryProvinsi: TADOQuery
    Active = True
    Connection = DM.ADOConn
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from tblprovinsi order by `id` asc')
    Left = 384
    Top = 416
  end
  object RvData: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = ATblData
    Left = 384
    Top = 440
  end
end
