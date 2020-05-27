object frmCon: TfrmCon
  Left = 612
  Top = 420
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Connect to Database'
  ClientHeight = 135
  ClientWidth = 263
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
  object Label2: TLabel
    Left = 88
    Top = 56
    Width = 3
    Height = 13
    Caption = ':'
  end
  object lblPassword: TLabel
    Left = 8
    Top = 56
    Width = 46
    Height = 13
    Caption = 'Password'
  end
  object lblUsername: TLabel
    Left = 8
    Top = 32
    Width = 22
    Height = 13
    Caption = 'User'
  end
  object Label1: TLabel
    Left = 88
    Top = 32
    Width = 3
    Height = 13
    Caption = ':'
  end
  object Label3: TLabel
    Left = 88
    Top = 8
    Width = 3
    Height = 13
    Caption = ':'
  end
  object Label4: TLabel
    Left = 8
    Top = 8
    Width = 48
    Height = 13
    Caption = 'Hostname'
  end
  object Label5: TLabel
    Left = 8
    Top = 80
    Width = 46
    Height = 13
    Caption = 'Database'
  end
  object cmdTutup: TsBitBtn
    Left = 184
    Top = 104
    Width = 75
    Height = 25
    Caption = 'Cancel'
    TabOrder = 5
    OnClick = cmdTutupClick
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
    SkinData.SkinSection = 'BUTTON'
  end
  object btnConnect: TsBitBtn
    Left = 104
    Top = 104
    Width = 75
    Height = 25
    Caption = 'Connect'
    TabOrder = 4
    OnClick = btnConnectClick
    Glyph.Data = {
      36050000424D3605000000000000360400002800000010000000100000000100
      080000000000000100000000000000000000000100000000000000520000005A
      000000630000006B000000630800006B0800086B080000730800007B08000084
      0800009408000094100008941800109C180010942100109C210010A521001894
      3100189C310018AD310018B531004242420021AD420029AD420021B542004A42
      4A0052424A004A4A4A004A524A0029C64A00525252005A63520029C652005A5A
      5A005A635A0063635A006B635A0031C65A00525263005A5263005A5A6300635A
      63005A636300636363006B6363006B6B6300635A6B0063636B006B6B6B006B73
      6B0039D66B00636B7300736B73006B737300737373007B73730084737300737B
      730042DE730073737B007B737B0084737B007B7B7B008C847B0042E77B008484
      84008C848C00848C8C008C8C8C008C948C00949494009CA594009C9C9C00A5A5
      A500ADADAD00ADADB500B5B5B500BDBDBD00C6C6C600CECECE00D6D6D600E7DE
      D600DEDEDE00FF00FF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
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
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00545454545454
      5454545454545454545454545454545454545454545454545454545454414836
      2B364A4C4D49414154545454541B52412B3E494D504E4A485454545454155041
      2B36494C504E4A4854545454541B52412B3E494C504E490154545454541B4936
      2136494C4D49011701545454541550412B36494C5001123A1601545454155042
      2F37494C010F161D130F5454541552422B3E494C0101011301015454541A4936
      2B36494C4F4C010C01545454541A51422C36494A4F4E010B01545454541A5142
      2331484A4F010B0754545454541A49362E3100010808040154545454541C4B44
      474949494A49443E5454545454543F3C343B3636363E41545454}
    SkinData.SkinSection = 'BUTTON'
  end
  object edtPassword: TEdit
    Left = 96
    Top = 56
    Width = 161
    Height = 21
    TabOrder = 2
  end
  object edtUser: TEdit
    Left = 96
    Top = 32
    Width = 161
    Height = 21
    TabOrder = 1
  end
  object edtHostname: TEdit
    Left = 96
    Top = 8
    Width = 161
    Height = 21
    TabOrder = 0
  end
  object edtDatabase: TEdit
    Left = 96
    Top = 80
    Width = 161
    Height = 21
    TabOrder = 3
  end
end