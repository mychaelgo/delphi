object DMConn: TDMConn
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 479
  Top = 203
  Height = 256
  Width = 235
  object ZConn: TZConnection
    Protocol = 'mysql'
    HostName = 'localhost'
    Database = 'apotik'
    User = 'root'
    Left = 16
    Top = 8
  end
  object ZQry: TZQuery
    Connection = ZConn
    Params = <>
    Left = 72
    Top = 8
  end
  object ZTbl: TZTable
    Connection = ZConn
    Left = 112
    Top = 8
  end
  object RvSIPDO: TRvProject
    Engine = RvSystem
    ProjectFile = 'Sipdo.rav'
    Left = 16
    Top = 64
  end
  object ZTblObat: TZTable
    Connection = ZConn
    TableName = 'tblobat'
    Left = 24
    Top = 122
    object ZTblObatkode: TStringField
      FieldName = 'kode'
      Required = True
      Size = 5
    end
    object ZTblObatnama: TStringField
      FieldName = 'nama'
      Required = True
      Size = 32
    end
    object ZTblObatsatuan: TStringField
      FieldName = 'satuan'
      Required = True
      Size = 16
    end
    object ZTblObatstock: TIntegerField
      FieldName = 'stock'
      Required = True
    end
    object ZTblObatharga_default: TIntegerField
      FieldName = 'harga_default'
    end
    object ZTblObatketerangan: TStringField
      FieldName = 'keterangan'
      Size = 255
    end
  end
  object ZTblPbf: TZTable
    Connection = ZConn
    TableName = 'tblpbf'
    Left = 57
    Top = 125
  end
  object ZTblObatMasuk: TZTable
    Connection = ZConn
    OnCalcFields = ZTblObatMasukCalcFields
    TableName = 'tblobatmasuk'
    Left = 24
    Top = 168
    object ZTblObatMasukid: TLargeintField
      FieldName = 'id'
      Required = True
    end
    object ZTblObatMasukkode_obat: TStringField
      FieldName = 'kode_obat'
      Required = True
      Size = 5
    end
    object ZTblObatMasukNamaObat: TStringField
      FieldKind = fkLookup
      FieldName = 'Nama Obat'
      LookupDataSet = ZTblObat
      LookupKeyFields = 'kode'
      LookupResultField = 'nama'
      KeyFields = 'kode_obat'
      Size = 32
      Lookup = True
    end
    object ZTblObatMasukjumlah: TIntegerField
      FieldName = 'jumlah'
      Required = True
    end
    object ZTblObatMasukexpired_date: TDateField
      FieldName = 'expired_date'
    end
    object ZTblObatMasukkode_pbf: TStringField
      FieldName = 'kode_pbf'
      Size = 7
    end
    object ZTblObatMasukNamaPBF: TStringField
      FieldKind = fkLookup
      FieldName = 'Nama PBF'
      LookupDataSet = ZTblPbf
      LookupKeyFields = 'kode'
      LookupResultField = 'nama'
      KeyFields = 'kode_pbf'
      Size = 32
      Lookup = True
    end
    object ZTblObatMasukharga_satuan: TIntegerField
      FieldName = 'harga_satuan'
    end
    object ZTblObatMasukTotalHarga: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'Total Harga'
      Calculated = True
    end
    object ZTblObatMasuktgl_masuk: TDateField
      FieldName = 'tgl_masuk'
    end
  end
  object ZTblRetur: TZTable
    Connection = ZConn
    TableName = 'tblretur'
    Left = 56
    Top = 168
    object ZTblReturid: TLargeintField
      FieldName = 'id'
      Required = True
    end
    object ZTblReturkode_obat: TStringField
      FieldName = 'kode_obat'
      Size = 5
    end
    object ZTblReturNamaObat: TStringField
      FieldKind = fkLookup
      FieldName = 'Nama Obat'
      LookupDataSet = ZTblObat
      LookupKeyFields = 'kode'
      LookupResultField = 'nama'
      KeyFields = 'kode_obat'
      Size = 32
      Lookup = True
    end
    object ZTblReturkode_pbf: TStringField
      FieldName = 'kode_pbf'
      Size = 7
    end
    object ZTblReturNamaPBF: TStringField
      FieldKind = fkLookup
      FieldName = 'Nama PBF'
      LookupDataSet = ZTblPbf
      LookupKeyFields = 'kode'
      LookupResultField = 'nama'
      KeyFields = 'kode_pbf'
      Size = 50
      Lookup = True
    end
    object ZTblReturjumlah: TIntegerField
      FieldName = 'jumlah'
    end
    object ZTblReturtgl_retur: TDateField
      FieldName = 'tgl_retur'
      Required = True
    end
  end
  object RvSystem: TRvSystem
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
    Left = 48
    Top = 64
  end
end
