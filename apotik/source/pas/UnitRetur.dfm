object frmRetur: TfrmRetur
  Left = 344
  Top = 149
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Data Retur'
  ClientHeight = 244
  ClientWidth = 510
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Icon.Data = {
    0000010001001010000001000800680500001600000028000000100000002000
    000001000800000000004001000000000000000000000001000000000000AD4A
    0000BD5A0000D6730000DE730000E7840000CE6B0800FF9C0800B5521000BD63
    3100CE7B3900BD6B4200CE844200BD7B5200C6846300FF00FF0000000000FFFF
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
    FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000F0F
    0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F
    0F0F0F0D080707080D0F0F0F0F0F0F0F0F0F08070707070707080F0F0F0F0F0F
    0F0807080D0F0F0D0807080F0F0F0F0F0D07080F0F0F0F0F0F08070D0F0F0F0F
    08070F0F0F0F0F0F0F0D07080F0F0F0F07070F0F0F0F0F0F0F0F07070F0F0F0F
    07070F0F0F0F0F0B0F0F07070F0F0F0F08070D0F0F0F0F0C0B0F07080F0F0F0F
    0D07080F0F0F0F090608070D0F0F0F0F0F08070F0F0F0F050403080F0F0F0F0F
    0F0F0F0F0F0F0F010204060A0F0F0F0F0F0F0F0F0F0F0F000105090C0A0F0F0F
    0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0FFFFF
    FFFFFFFFFFFFF81FFFFFF00FFFFFE187FFFFC7E3FFFFCFE3FFFFCFF3FFFFCFB3
    FFFFC793FFFFC783FFFFE787FFFFFF83FFFFFF81FFFFFFFFFFFFFFFFFFFF}
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 8
    Top = 8
    Width = 497
    Height = 201
    DataSource = DS
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'kode_obat'
        Title.Caption = 'Kode Obat'
        Width = 65
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Nama Obat'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Nama PBF'
        Width = 160
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'jumlah'
        Title.Caption = 'Jumlah'
        Width = 48
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'tgl_retur'
        Title.Caption = 'Tanggal Retur'
        Width = 82
        Visible = True
      end>
  end
  object btnInput: TBitBtn
    Left = 198
    Top = 212
    Width = 75
    Height = 25
    Caption = 'Input'
    TabOrder = 1
    OnClick = btnInputClick
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
  object btnEdit: TBitBtn
    Left = 276
    Top = 212
    Width = 75
    Height = 25
    Caption = 'Edit'
    TabOrder = 2
    OnClick = btnEditClick
    Glyph.Data = {
      36050000424D3605000000000000360400002800000010000000100000000100
      08000000000000010000000000000000000000010000000000002D2D2D001855
      6F004544420058534E005160610054777B007C707800B56D3E00C1713500C076
      38008A5B5200947E7500AD7B7300BD847B00EFA65A00EDA75F00F0A85C00C694
      7B0000009A000316AC0041749600477AA9000018C6001029D600106BFF00FF00
      FF0035A8F5004A9EED006D8AFD00B5848400BD9494009891A200C6A59C00F1BC
      8600C6ADA500C6ADAD00CEB5AD00D6B5AD00C6B5B500D6BDB500DEBDB500F8C2
      8C00F9C48D00EFCE9400EFCE9C00F7D69C00DEC6B500D6C6BD00EFD6AD00F7D6
      A500FBD3A900E7C6B500EFCEB500EFCEBD00F7DEB500F7DEBD00C6C6C600E7CE
      CE00E7D6CE00F7E7C600FFEFD600FFEFE700FFF7E700FFF7EF00FFF7F700FFFF
      F700FFFFFF000000000000000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000042421D1D1D1D
      1D1D1D1D1D1D1D1D1D424242203C3B373630312C2B2B2B2D1D424242203C3838
      383838383838382C1D424242223D00032F37302C2C2C2B2C1D424242223E0302
      042F36302C2C2C2B1D4242422441380515010A263838382C1D42424225423F05
      140B080A2F3030301D4242422742403F062110090A2F30301D42424227423838
      0C322A0E090A262F1E42424228424242400C322A10080A2F234242422E424242
      42400C32290F070A26424242334238383838380C321F1A131242424233424242
      424242410C1B17171312424235424242424242423A161C181742424233403F3F
      3F3F3F3F39111616424242423334343434333334270D42424242}
  end
  object btnHapus: TBitBtn
    Left = 352
    Top = 212
    Width = 75
    Height = 25
    Caption = 'Hapus'
    TabOrder = 3
    OnClick = btnHapusClick
    Glyph.Data = {
      36040000424D3604000000000000360000002800000010000000100000000100
      2000000000000004000000000000000000000000000000000000000000180000
      001C0000001B0D369964113EB4FF0D369B6300000016000000100000000F0000
      00170D359865113EB4FF0D3699640000001B0000001A00000016000000000000
      00001042BB52113FB5FF0359E8FF1140B6FF1042BB5200000000000000001042
      BB521140B6FF0359E8FF113FB6FF1042BB520000000000000000000000001042
      BB521041B8FF0359E8FF0047CFFF0359E8FF1141B8FF1042BB521042BB521040
      B8FF0359E8FF0047CFFF0359E8FF0359E8FF1042BB52000000001042BB521043
      BBFF0359E8FF0047CFFF044FD4FF0047CFFF0359E8FF1043BAFF1042BBFF0359
      E8FF0047CFFF044ED5FF0047CFFF044ED4FF1042BBFF1042BB521045BEFF0359
      E8FF0047CFFF0652D7FF0652D7FF0651D7FF0047CFFF0359E8FF0359E8FF0047
      CFFF0651D7FF0652D7FF0651D7FF0047CFFF0359E8FF0F45BEFF1042BB520E47
      C1FF0855DAFF0855D9FF0855D9FF0855D9FF0855D9FF0855DAFF0855DAFF0855
      D9FF0855D9FF0855DAFF0955D9FF0855D9FF0F47C1FF1042BB52000000001042
      BB520E4AC5FF0B58DCFF0B59DCFF0B59DCFF0A58DCFF0A59DCFF0A58DCFF0A58
      DCFF0A58DCFF0A58DCFF0A59DCFF0E4AC4FF1042BB5200000000000000000000
      00001042BB520E4CC9FF0D5CDFFF0D5CDFFF0C5CDFFF0C5CDFFF0C5CDFFF0D5C
      DFFF0C5CDFFF0D5CDFFF0D4CCAFF1042BB520000000000000000000000000000
      00000A58DC520C4ECDFF0F5FE1FF0E5FE2FF0F60E2FF0F5FE2FF0F60E2FF0F60
      E2FF0F60E2FF0F60E2FF0D4ECDFF0A58DC520000000000000000000000000A58
      DC520C51D0FF1163E4FF1163E5FF1163E5FF1163E5FF1163E5FF1163E5FF1163
      E4FF1163E4FF1163E4FF1163E5FF0D51D0FF0A58DC52000000000A58DC520C53
      D4FF1367E7FF1367E7FF1366E7FF1366E8FF1367E7FF1366E7FF1367E8FF1366
      E7FF1367E8FF1366E7FF1367E7FF1366E7FF0B53D4FF0A58DC520B55D7FF3987
      F0FF1469EAFF146AEAFF1469EAFF1469EAFF146AEAFF93C2FBFF93C2FBFF1469
      EAFF1469E9FF1469EAFF146AEAFF1469EAFF448FF2FF0B55D7FF0A58DC520B57
      DAFF529BF5FF156CECFF166DECFF166CECFF63A8F7FF0B57DAFF0B57D9FF63A8
      F7FF166CECFF166CECFF156CECFF529BF5FF0B57DAFF0A58DC52000000000A58
      DC520A59DDFF529BF5FF176FEEFF63A8F7FF0A58DCFF0A58DC520A58DC520A59
      DCFF63A8F7FF176EEDFF529BF5FF0A59DCFF0A58DC5200000000000000000000
      00000A58DC520A5ADEFF93C2FBFF0A5ADEFF0A58DC5200000000000000000A58
      DC520A5ADEFF93C2FBFF0A5ADEFF0A58DC520000000000000000000000000000
      0000000000000A58DC520A5ADEFF0A58DC520000000000000000000000000000
      00000A58DC520A5ADEFF0A58DC52000000000000000000000000}
  end
  object Btn1Tutup: TBitBtn
    Left = 429
    Top = 212
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
  object DS: TDataSource
    DataSet = DMConn.ZTblRetur
    OnDataChange = DSDataChange
    Left = 304
    Top = 128
  end
end