object frmLogin: TfrmLogin
  Left = 326
  Top = 219
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Login'
  ClientHeight = 86
  ClientWidth = 264
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Icon.Data = {
    0000010001001010000001000800680500001600000028000000100000002000
    0000010008000000000040010000000000000000000000000000000000000000
    00008484840042ADBD001094CE0042CEEF00FF00FF005ADEFF009CE7FF00ADF7
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
    FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
    FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
    0000000003030303030000000000000000000202040606060403030000000000
    0002040707070006060604030000000002040707070700070706060403000000
    0208070707070007070706060300000002080807070000000707070603000000
    0208080807010001070707060300000002040808080807070707070403000000
    0002020202020202020202020000000000000207030000000207030000000000
    0000020703000000020703000000000000000204040303030404030000000000
    0000000204070707040300000000000000000000020202020300000000000000
    000000000000000000000000000000000000000000000000000000000000FC1F
    FFFFF007FFFFE003FFFFC001FFFFC001FFFFC001FFFFC001FFFFC001FFFFE003
    FFFFF1C7FFFFF1C7FFFFF007FFFFF80FFFFFFC1FFFFFFFFFFFFFFFFFFFFF}
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object lblUsername: TLabel
    Left = 8
    Top = 8
    Width = 48
    Height = 13
    Caption = 'Username'
  end
  object lblPassword: TLabel
    Left = 8
    Top = 32
    Width = 46
    Height = 13
    Caption = 'Password'
  end
  object Label1: TLabel
    Left = 88
    Top = 8
    Width = 3
    Height = 13
    Caption = ':'
  end
  object Label2: TLabel
    Left = 88
    Top = 32
    Width = 3
    Height = 13
    Caption = ':'
  end
  object edtUsername: TEdit
    Left = 96
    Top = 8
    Width = 161
    Height = 21
    TabOrder = 0
    Text = 'administrator'
  end
  object edtPassword: TEdit
    Left = 96
    Top = 32
    Width = 161
    Height = 21
    PasswordChar = '*'
    TabOrder = 1
    Text = '123'
  end
  object cmdLogin: TsBitBtn
    Left = 104
    Top = 56
    Width = 75
    Height = 25
    Caption = 'Login'
    TabOrder = 2
    OnClick = cmdLoginClick
    Glyph.Data = {
      36050000424D3605000000000000360400002800000010000000100000000100
      0800000000000001000000000000000000000001000000000000084263000852
      84001084CE00ADCEE700299CEF0029A5EF00FF00FF004ABDFF0052F7FF006BF7
      FF008CF7FF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
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
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000B0B0B0B0B0B
      0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0101010B0B0B0B0B0B0B0B
      0B0B0B0B01070701010B0B0B0B0B0B0B0B0B0B0107040A07010B0B0B0B0B0B0B
      0B0B0107040A020A010B0B0B0B0B0B0B010107040A020A010B0B0B0B01010101
      0707040A020A010B0B0B0B010707070704040A020A010B0B0B0B010709090909
      070A020A010B0B0B0B0B0109090A0A0909070A010B0B0B0B0B0B010A0A0A0A0A
      0A0804010B0B0B0B0B0B010A0A040A0A0A0808010B0B0B0B0B0B010A0307020A
      0A0A08010B0B0B0B0B0B010A0A030A0A0A0908010B0B0B0B0B0B0B0109090909
      0909010B0B0B0B0B0B0B0B0B0101010101010B0B0B0B0B0B0B0B}
    SkinData.SkinSection = 'BUTTON'
  end
  object cmdTutup: TsBitBtn
    Left = 184
    Top = 56
    Width = 75
    Height = 25
    Caption = 'Batal'
    TabOrder = 3
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
end
