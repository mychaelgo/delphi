object DM: TDM
  OldCreateOrder = False
  Left = 317
  Top = 172
  Height = 150
  Width = 215
  object ADOConn: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;User ID=Admin;Data Source=data_' +
      'golongan_darah.mdb;Mode=Share Deny None;Extended Properties="";J' +
      'et OLEDB:System database="";Jet OLEDB:Registry Path="";Jet OLEDB' +
      ':Database Password="";Jet OLEDB:Engine Type=5;Jet OLEDB:Database' +
      ' Locking Mode=1;Jet OLEDB:Global Partial Bulk Ops=2;Jet OLEDB:Gl' +
      'obal Bulk Transactions=1;Jet OLEDB:New Database Password="";Jet ' +
      'OLEDB:Create System Database=False;Jet OLEDB:Encrypt Database=Fa' +
      'lse;Jet OLEDB:Don'#39't Copy Locale on Compact=False;Jet OLEDB:Compa' +
      'ct Without Replica Repair=False;Jet OLEDB:SFP=False'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 8
    Top = 8
  end
  object XPManifest1: TXPManifest
    Left = 48
    Top = 48
  end
  object RvProject: TRvProject
    Engine = RvSystem1
    ProjectFile = 'goldarah.rav'
    Left = 128
    Top = 16
  end
  object RvSystem1: TRvSystem
    TitleSetup = 'Output Options'
    TitleStatus = 'Report Status'
    TitlePreview = 'Report Preview'
    SystemFiler.StatusFormat = 'Generating page %p'
    SystemPreview.FormState = wsMaximized
    SystemPreview.ZoomFactor = 100.000000000000000000
    SystemPrinter.ScaleX = 100.000000000000000000
    SystemPrinter.ScaleY = 100.000000000000000000
    SystemPrinter.StatusFormat = 'Printing page %p'
    SystemPrinter.Title = 'ReportPrinter Report'
    SystemPrinter.UnitsFactor = 1.000000000000000000
    Left = 144
    Top = 64
  end
end
