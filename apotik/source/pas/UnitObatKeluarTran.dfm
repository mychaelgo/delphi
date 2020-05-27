object frmObatKeluarTran: TfrmObatKeluarTran
  Left = 230
  Top = 156
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Transaksi Obat Keluar'
  ClientHeight = 384
  ClientWidth = 504
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 8
    Top = 8
    Width = 489
    Height = 233
    Caption = 'Data Obat'
    TabOrder = 0
    object DBGrid1: TDBGrid
      Left = 8
      Top = 16
      Width = 473
      Height = 209
      DataSource = DS
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnKeyPress = DBGrid1KeyPress
      Columns = <
        item
          Expanded = False
          FieldName = 'Nama Obat'
          ReadOnly = True
          Width = 170
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'jml'
          Title.Caption = 'Jumlah'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'harga_satuan'
          ReadOnly = True
          Title.Caption = 'Harga Satuan'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Total Harga'
          ReadOnly = True
          Width = 98
          Visible = True
        end>
    end
  end
  object GroupBox2: TGroupBox
    Left = 8
    Top = 248
    Width = 241
    Height = 129
    Caption = 'Operasi'
    TabOrder = 1
    object Label2: TLabel
      Left = 8
      Top = 40
      Width = 54
      Height = 13
      Caption = 'Nama Obat'
    end
    object Label3: TLabel
      Left = 8
      Top = 64
      Width = 33
      Height = 13
      Caption = 'Jumlah'
    end
    object Label10: TLabel
      Left = 8
      Top = 16
      Width = 44
      Height = 13
      Caption = 'Cari Obat'
    end
    object edtJumlah: TEdit
      Left = 88
      Top = 64
      Width = 145
      Height = 21
      TabOrder = 0
      OnKeyPress = edtJumlahKeyPress
    end
    object cmbObat: TDBLookupComboBox
      Left = 88
      Top = 40
      Width = 145
      Height = 21
      KeyField = 'kode'
      ListField = 'nama'
      ListSource = frmObat.DS
      TabOrder = 1
    end
    object Edit1: TEdit
      Left = 88
      Top = 16
      Width = 145
      Height = 21
      TabOrder = 2
      OnChange = Edit1Change
    end
    object BitBtnTambah: TBitBtn
      Left = 160
      Top = 88
      Width = 75
      Height = 25
      Caption = 'Tambah'
      TabOrder = 3
      OnClick = btnTambahClick
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        0000000000000000001700000027000000320000004000000040000000400000
        00400000001A0000001A00000000000000000000000000000000000000000000
        0000000000000000000000000015349E6FFF349E6FFF349E6FFF349E6FFF349E
        6FFF0000000F0763480407634806076348020000000000000000000000000000
        0000000000000000000000000000349E6FFF3CD7A7FF3CD7A7FF3CD7A7FF349E
        6FFF000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000032A071FF13CB94FF13CA93FF13CA94FF32A1
        71FF000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000002EA474FF17CC95FF16CC96FF16CC96FF2EA4
        74FF000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000002AA877FF1ACE98FF1ACE98FF1ACD98FF2AA8
        78FF000000000000000000000000000000002EB4851D0000000025AC7BFF25AC
        7BFF25AD7BFF25AC7BFF26AC7BFF25AD7CFF1FD09BFF1FD09AFF1ED09BFF25AD
        7BFF26AD7BFF26AC7BFF25AC7BFF25AC7BFF25AC7BFF0000000021B17FFF2ED3
        A1FF22D19DFF22D29DFF22D19DFF23D19DFF22D29DFF23D19DFF23D29DFF22D1
        9DFF23D19DFF23D29DFF22D29DFF36D4A4FF21B17FFF000000001BB683FF38D5
        A5FF27D49FFF26D49FFF26D3A0FF27D39FFF27D49FFF27D3A0FF27D39FFF27D3
        A0FF27D39FFF27D39FFF27D3A0FF3DD5A6FF1BB683FF0000000017BA87FFF5F9
        F7FF90F9D9FF90F9D9FF90F9D9FFF5F9F7FF2FD8A5FF2BD5A2FF2ED7A4FFF5F9
        F7FF90F9D9FF90F9D9FF90F9D9FFF5F9F7FF17BA87FF0000000013BE8AFF13BE
        8AFF13BF8AFF13BE8BFF13BE8AFF13BE8AFF36DAA9FF2FD7A4FF3DDEADFF13BE
        8AFF13BE8AFF13BE8AFF13BE8BFF13BE8AFF13BE8AFF00000000000000000000
        000000000000000000000000000010C28DFF3FDFAEFF32D9A7FF47E2B2FF10C1
        8DFF000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000EC48FFF49E3B3FF35D9A8FF4EE6B6FF0EC4
        8FFF000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000EC48FFF4FE6B6FF38DBAAFF55E9BAFF0EC4
        8FFF000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000EC48FFFF5F9F7FF90F9D9FFF5F9F7FF0EC4
        8FFF000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000EC48FFF0EC48FFF0EC48FFF0EC48FFF0EC4
        8FFF000000000000000000000000000000000000000000000000}
    end
  end
  object btnSimpan: TBitBtn
    Left = 268
    Top = 352
    Width = 75
    Height = 25
    Caption = 'Simpan'
    TabOrder = 2
    OnClick = btnSimpanClick
    Glyph.Data = {
      36050000424D3605000000000000360400002800000010000000100000000100
      0800000000000001000000000000000000000001000000000000942929009431
      31009C3131009C393900A53939009C4242009C4A4A00A54A4A00B54A4A00AD52
      4A00B5524A00A5525200AD525200B5525200B55A5200AD525A00AD5A5A00B55A
      5A00BD5A5A00C65A5A00CE5A5A00CE636300CE6B6B00D66B6B00B5737300BD7B
      73009C7B7B009C848400AD848400B5848400C6848400AD8C8C00B58C8C00C694
      8C00AD949400C6949400A59C9C00B59C9C00D69C9C00BDA5A500D6A5A500D6AD
      A500CEADAD00D6ADAD00DEADAD00CEB5B500D6B5B500CEBDBD00DEBDBD00E7BD
      BD00E7C6C600C6CEC600CECEC600C6CECE00CECECE00D6CECE00E7CECE00E7D6
      CE00D6D6D600DED6D600EFD6D600DEDED600D6DEDE00DEDEDE00E7DEDE00E7E7
      E700EFEFEF00F7EFEF00F7F7EF00F7F7F700FFF7F700FFFFF700FF00FF00FFFF
      FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF004949100C0722
      33343433332505050B4949191516111B27384647452D0002131049191515111A
      05184046492E0102121049191515111C03032F42493200011210491915151120
      0601243A493200011210491915151221231D1F27322C04041310491915151515
      1515151313151515160F49190D111E282B292B2828292B26150C491909384544
      4545454545454530130F49190A3C46434343434343434530130F49190A3C423A
      3A3A3A3A3A3A4230130F49190A3C423B3F3F3F3F3F3B4230130F49190A3C4440
      4040404040404230130F49190A3C423A3A3A3A3A3A3A4230130F49190A394643
      4343434343434630130F4949092D3A363636363636363A2A0749}
  end
  object btnBatal: TBitBtn
    Left = 345
    Top = 352
    Width = 75
    Height = 25
    Caption = 'Batal'
    TabOrder = 3
    OnClick = btnBatalClick
    Glyph.Data = {
      36050000424D3605000000000000360400002800000010000000100000000100
      0800000000000001000000000000000000000001000000000000000000000B23
      98000E269A0012289D000125B7000B20B1000533BC003040B4006A7AB6006C7B
      B6000215C100011BC1000016CA000219C900031FDB000020C2000020CC000722
      CE000024CF00002FC800002BCC00142ACD000031C2000030C5000433CE00133E
      C3001A3CCE000224D400042AD300012DD200002ED4000621DD000526DE000228
      D800032ADF000D34D3000B38D1000031D9000031DF000034DE001B3CD900223B
      DB000724E1000A27E1000B2BE0000E2AE1000134E1000234E4000F32E0000E43
      DD003358CB003C5EC800254ED8003357D4003354DB00325DDD002D46E600324B
      E6003152E0004F64C6005F71C500496BD3004164DE006A7BCC00465BE000436B
      E4004E6FE600516BE800526AEF005B78EE006C7BE5006B7FF2006C7FF2007382
      BA007786BD006782DF007C91D9007E91DD006E88E0006182EB007685E600708F
      E500748FE500758BE800748EEF007F8EEE006E81F3007688F2007B8DF5007E8F
      F4009DA6D3009EA7D400808FE8008694E8008293F4008E9DF2008B9BF500939F
      F0009DA8EB0098ABEC0093A1F10091A1F50097A5F70099A8F7009CA9F5009DAD
      F700A9B3EC00B3BBE000A2AEF100ADB7F600A5B2F800B3BFF300BBC2ED00BCC5
      F700BDC6F900D7D9E300D1D4E800CBD1F800CED5FA00D1D8FA00DFE1F200DBE0
      FB00E7E7E700E3E4E900E0E2EF00E8E8E800EDEDEE00E4E6F000E7E9F200E5E8
      F400EBEDF600E4E8FC00EBEDFA00F3F3F300F7F7F700F4F5FB00F8F8F800FAFA
      FC00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFFFFFF4A
      1818131333FFFFFFFFFFFFFFFF4C271818181818181307FFFFFFFFFF19311827
      1818182518272706FFFFFF4C31272704011B27180F010F2E19FFFF272E2E5A74
      87030E4F895B03041DFF4D312E2E738789893F8989890711271919272E2E2A73
      898989898907272C2C06241D22222F2F7F8989893B1F222C1B13241B212A2A2A
      7089898907010E210E13190E292A2A74898989898903050C0E044B3E5F447487
      896A4589898907010E19FF387E6E7F896B454765896A02293863FF375775606D
      565858584544445534FFFFFF2E596D757269605E60677243FFFFFFFFFF374579
      89898789846D40FFFFFFFFFFFFFFFF444F5656474160FFFFFFFF}
  end
  object btnTutup: TBitBtn
    Left = 422
    Top = 352
    Width = 75
    Height = 25
    Caption = 'Tutup'
    TabOrder = 4
    OnClick = btnTutupClick
    Glyph.Data = {
      36050000424D3605000000000000360400002800000010000000100000000100
      080000000000000100000000000000000000000100000000000000730800088C
      100018AD29005AE78C0029ADD60052CEEF00FF00FF005ADEFF006BE7FF0084EF
      FF0094F7FF009CFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000C0C0C0C0C0C
      0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0404040404
      04040404040404040C0C0C040B08080808080807070707040C0C0C040B0A0A09
      09080808070707040C0C0C040B0A0A0A09090808080707040C0C0C040B0A0A0A
      0A090908080807040C0C0C040B0A0A0A0A0A0909080808040C0C0C040B0A0A0A
      0A0A0A09090808040C0C0C040B0A0A0A0A090909090908040C0C0C040B0B0A09
      09040404040404040C010C0C040B0909040C0C0C0C0C0C0C0C010C0C05040404
      050C0C0C0C0C020C01000C0C0C0C0C0C0C0C0C0C0C0C0102010C0C0C0C0C0C0C
      0C0C0C0C0C0C0103020C0C0C0C0C0C0C0C0C0C0C0C0C00000002}
  end
  object GroupBox4: TGroupBox
    Left = 256
    Top = 248
    Width = 241
    Height = 97
    Caption = 'Biaya'
    TabOrder = 5
    object Label5: TLabel
      Left = 8
      Top = 16
      Width = 56
      Height = 13
      Caption = 'Total Harga'
    end
    object Label1: TLabel
      Left = 8
      Top = 40
      Width = 62
      Height = 13
      Caption = 'Jumlah Uang'
    end
    object Label4: TLabel
      Left = 8
      Top = 68
      Width = 49
      Height = 13
      Caption = 'Kembalian'
    end
    object edtKembalian: TEdit
      Left = 88
      Top = 68
      Width = 145
      Height = 21
      ReadOnly = True
      TabOrder = 0
      Text = '0'
    end
    object edtJumlahUang: TEdit
      Left = 88
      Top = 40
      Width = 145
      Height = 21
      TabOrder = 1
      Text = '0'
      OnChange = edtJumlahUangChange
    end
    object edtTotalHarga: TEdit
      Left = 88
      Top = 16
      Width = 145
      Height = 21
      ReadOnly = True
      TabOrder = 2
      Text = '0'
      OnChange = edtTotalHargaChange
    end
  end
  object DS: TDataSource
    DataSet = ZTblTempKeluar
    OnDataChange = DSDataChange
    Left = 160
    Top = 104
  end
  object ZTblTempKeluar: TZTable
    Connection = DMConn.ZConn
    OnCalcFields = ZTblTempKeluarCalcFields
    TableName = 'tbltempdetailkeluar'
    Left = 48
    Top = 160
    object ZTblTempKeluarkode_obat: TStringField
      FieldName = 'kode_obat'
      Required = True
      Size = 4
    end
    object ZTblTempKeluarNamaObat: TStringField
      FieldKind = fkLookup
      FieldName = 'Nama Obat'
      LookupDataSet = DMConn.ZTblObat
      LookupKeyFields = 'kode'
      LookupResultField = 'nama'
      KeyFields = 'kode_obat'
      Size = 40
      Lookup = True
    end
    object ZTblTempKeluarjml: TIntegerField
      FieldName = 'jml'
    end
    object ZTblTempKeluarharga_satuan: TIntegerField
      FieldKind = fkLookup
      FieldName = 'harga_satuan'
      LookupDataSet = DMConn.ZTblObat
      LookupKeyFields = 'kode'
      LookupResultField = 'harga_default'
      KeyFields = 'kode_obat'
      Lookup = True
    end
    object ZTblTempKeluarTotalHarga: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'Total Harga'
      Calculated = True
    end
    object ZTblTempKeluarid_user: TIntegerField
      FieldName = 'id_user'
    end
  end
end
