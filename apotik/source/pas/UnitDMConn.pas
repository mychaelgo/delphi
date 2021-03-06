unit UnitDMConn;

interface

uses
  SysUtils, Classes, Messages, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, Forms,
  ZConnection,Dialogs, ZAbstractTable, sSkinManager, UnitDM, RpDefine,
  RpRave, RpBase, RpSystem;

type
  TDMConn = class(TDataModule)
    ZConn: TZConnection;
    ZQry: TZQuery;
    ZTbl: TZTable;
    RvSIPDO: TRvProject;
    ZTblObat: TZTable;
    ZTblObatkode: TStringField;
    ZTblObatnama: TStringField;
    ZTblObatsatuan: TStringField;
    ZTblObatstock: TIntegerField;
    ZTblObatharga_default: TIntegerField;
    ZTblObatketerangan: TStringField;
    ZTblPbf: TZTable;
    ZTblObatMasuk: TZTable;
    ZTblObatMasukid: TLargeintField;
    ZTblObatMasukkode_obat: TStringField;
    ZTblObatMasukjumlah: TIntegerField;
    ZTblObatMasukexpired_date: TDateField;
    ZTblObatMasukkode_pbf: TStringField;
    ZTblObatMasukharga_satuan: TIntegerField;
    ZTblObatMasuktgl_masuk: TDateField;
    ZTblObatMasukNamaPBF: TStringField;
    ZTblObatMasukTotalHarga: TIntegerField;
    ZTblObatMasukNamaObat: TStringField;
    ZTblRetur: TZTable;
    ZTblReturid: TLargeintField;
    ZTblReturkode_obat: TStringField;
    ZTblReturkode_pbf: TStringField;
    ZTblReturjumlah: TIntegerField;
    ZTblReturtgl_retur: TDateField;
    ZTblReturNamaObat: TStringField;
    ZTblReturNamaPBF: TStringField;
    RvSystem: TRvSystem;
    procedure DataModuleCreate(Sender: TObject);
    function Connect(Host:String; Usr:String; Pass:String; DB:String):boolean;
    procedure ZTblObatMasukCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMConn: TDMConn;

implementation

{$R *.dfm}
uses UnitCon;

procedure TDMConn.DataModuleCreate(Sender: TObject);
  var HostName, User, Password, Database : String;
begin
  HostName := DM.appINI.ReadString('Database', 'HostName', 'localhost');
  User := DM.appINI.ReadString('Database', 'Username', 'root');
  Password := DM.appINI.ReadString('Database', 'Password', '');
  Database := DM.appINI.ReadString('Database', 'Database', 'sik');
  If(Connect(HostName, User, Password, Database) = false) and (TfrmCon.Execute = false) then
  begin
      Application.Terminate;
  end
  else
  begin
    ztblpbf.Active := true;
    ztblobat.Active:= true;
    ztblretur.Active:=true;
    ztblobatmasuk.Active := true;
  end;
end;

function TDMConn.Connect(Host:String; Usr:String; Pass:String; DB:String):boolean;
begin
  with ZConn do
  begin
    Protocol := 'mysql';
    HostName := Host;
    User:= Usr;
    Password := Pass;
    Database := DB;
    try
      Connect;
      result := true;
    except
      MessageDlg('Gagal terhubung ke database!', mtwarning, [mbok], 0);
      result := false;
    end;
  end;
end;

procedure TDMConn.ZTblObatMasukCalcFields(DataSet: TDataSet);
begin
  ztblobatmasuk['Total Harga'] := ztblobatmasuk['jumlah'] * ztblobatmasuk['harga_satuan'];
end;

end.
