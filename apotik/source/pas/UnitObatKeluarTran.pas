unit UnitObatKeluarTran;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UnitDMConn, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  Grids, DBGrids, StdCtrls, UnitObat, DBCtrls, UnitDM, ExtCtrls,
  Buttons, sBitBtn, ShellApi, ZAbstractTable;

type
  TfrmObatKeluarTran = class(TForm)
    DS: TDataSource;
    GroupBox1: TGroupBox;
    DBGrid1: TDBGrid;
    GroupBox2: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    edtJumlah: TEdit;
    cmbObat: TDBLookupComboBox;
    Edit1: TEdit;
    Label10: TLabel;
    BitBtnTambah: TBitBtn;
    btnSimpan: TBitBtn;
    btnBatal: TBitBtn;
    btnTutup: TBitBtn;
    GroupBox4: TGroupBox;
    Label5: TLabel;
    edtKembalian: TEdit;
    edtJumlahUang: TEdit;
    edtTotalHarga: TEdit;
    Label1: TLabel;
    Label4: TLabel;
    ZTblTempKeluar: TZTable;
    ZTblTempKeluarkode_obat: TStringField;
    ZTblTempKeluarjml: TIntegerField;
    ZTblTempKeluarharga_satuan: TIntegerField;
    ZTblTempKeluarid_user: TIntegerField;
    ZTblTempKeluarNamaObat: TStringField;
    ZTblTempKeluarTotalHarga: TIntegerField;
    function IsAdded(KodeObat:String):boolean;
    procedure CetakNota(TranID:Integer);
    procedure HitungTotal();
    procedure HitungKembalian();
    procedure DeleteTemp();
    procedure DBGrid1KeyPress(Sender: TObject; var Key : char);
    procedure btnTutupClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnTambahClick(Sender: TObject);
    procedure btnBatalClick(Sender: TObject);
    procedure btnSimpanClick(Sender: TObject);
    procedure edtJumlahKeyPress(Sender: TObject; var Key : char);
    procedure Edit1Change(Sender: TObject);
    procedure ZTblTempKeluarCalcFields(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DSDataChange(Sender: TObject; Field: TField);
    procedure edtTotalHargaChange(Sender: TObject);
    procedure edtJumlahUangChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmObatKeluarTran: TfrmObatKeluarTran;

implementation

{$R *.dfm}

procedure TfrmObatKeluarTran.btnTutupClick(Sender: TObject);
begin 
  close();
end;

procedure TfrmObatKeluarTran.FormShow(Sender: TObject);
begin
  Caption := 'Transaksi Obat Keluar';
end;

procedure TfrmObatKeluarTran.DeleteTemp();
begin
  with ztbltempkeluar do
  begin
    first;
    while(recordcount > 0) do
      delete;
  end;
end;

procedure TfrmObatKeluarTran.FormCreate(Sender: TObject);
begin
  with ztbltempkeluar do
  begin
    Active := true;
    Filter := 'id_user=''' + inttostr(dm.CurrUser.ID) + '''';
    Filtered := true;
  end;
end;

procedure TfrmObatKeluarTran.HitungKembalian();
begin
  if(edttotalharga.Text <> '0') and (edtjumlahuang.Text <> '')
    and (strtoint(edtjumlahuang.Text) > strtoint(edttotalharga.Text)) then
    edtkembalian.Text := inttostr(strtoint(edtjumlahuang.Text) - strtoint(edttotalharga.Text))
  else
    edtkembalian.Text := '0';
end;

procedure TfrmObatKeluarTran.HitungTotal();
begin
  with dmconn.ZQry do
  begin
    sql.Text := 'select sum(tblobat.harga_default*tbltempdetailkeluar.jml) ' +
                'from tbltempdetailkeluar, tblobat ' +
                'where id_user=:parUserID and tblobat.kode=tbltempdetailkeluar.kode_obat';
    parambyname('parUserID').Value := dm.CurrUser.ID;
    execsql;
    active:= true;
    If(fields[0].value <> null) then
      edttotalharga.Text := fields[0].Value
    else
      edttotalharga.Text := '0';
  end;
end;

procedure TfrmObatKeluarTran.DBGrid1KeyPress(Sender: TObject; var Key: char);
begin
  if(ord(Key) = 13) then
    ztbltempkeluar.Post;
end;

function TfrmObatKeluarTran.IsAdded(KodeObat:String):Boolean;
begin
  ztbltempkeluar.First;
  while(not ztbltempkeluar.Eof) and (ztbltempkeluar.Fields[0].Value <> KodeObat) do
  begin
    ztbltempkeluar.next
  end;
  result := (not ztbltempkeluar.eof);
end;

procedure TfrmObatKeluarTran.btnTambahClick(Sender: TObject);
begin
  if(cmbobat.KeyValue <> null) and (edtJumlah.Text <> '') and (not IsAdded(cmbobat.KeyValue)) then
  begin
    with ztbltempkeluar do
    begin
      append;
      fieldbyname('kode_obat').Value := cmbobat.KeyValue;
      fieldbyname('jml').Value := edtjumlah.Text;
      fieldbyname('id_user').Value := dm.CurrUser.ID;
      post;
      cmbobat.KeyValue := null;
      edtjumlah.Text := '';
      edit1.Text := '';
    end; 
  end;
end;

procedure TfrmObatKeluarTran.btnBatalClick(Sender: TObject);
begin
  DeleteTemp();
end;

procedure TfrmObatKeluarTran.CetakNota(TranID:Integer);
var FileNote : TextFile;
No : Integer;
begin
  AssignFile(FileNote, 'note.txt');
  ReWrite(FileNote);

  WriteLn(FileNote, 'Bukti Transaksi Pembelian Obat');
  WriteLn(FileNote, '');
  WriteLn(FileNote, '---------------------------------------------------------------------');
  WriteLn(FileNote, 'No Transaksi  : ' + inttostr(TranID));
  WriteLn(FileNote, 'Tanggal       : ' + FormatDateTime('dd/MM/yyyy', now()));
  WriteLn(FileNote, '---------------------------------------------------------------------');
  WriteLn(FileNote, 'Nomor | Nama Obat      | Jumlah | Harga Satuan |  SubTotal          |');
  WriteLn(FileNote, '---------------------------------------------------------------------');
  ztbltempkeluar.First;
  no := 1;
  while (not ztbltempkeluar.Eof) do
  begin
    Write(FileNote, DM.FormatString(inttostr(no) + '.', 6, 1));
    Write(FileNote, '  ');
    Write(FileNote, DM.FormatString(ztbltempkeluar['Nama Obat'], 15, 1));
    Write(FileNote, '  ');
    Write(FileNote, DM.formatString(ztbltempkeluar['jml'], 6, 2));
    Write(FileNote, '   ');
    Write(FileNote, 'Rp. ');
    Write(FileNote, DM.FormatString(ztbltempkeluar['harga_satuan'], 8, 2));
    Write(FileNote, '   ');
    Write(FileNote, 'Rp. ');
    Write(FileNote, DM.FormatString(ztbltempkeluar['Total Harga'], 15, 2));
    WriteLn(FileNote, '');
    no := no + 1;
    ztbltempkeluar.Next;
  end;

  WriteLn(FileNote, '---------------------------------------------------------------------');
  WriteLn(FileNote, '                                                 Rp. ' + DM.FormatString(edtTotalHarga.Text, 15, 2));
  WriteLn(FileNote, '---------------------------------------------------------------------');
  CloseFile(FileNote);
  ShellExecute(Handle, 'open', 'notepad', '/p note.txt', nil, SW_SHOWMINIMIZED);
end;

procedure TfrmObatKeluarTran.btnSimpanClick(Sender: TObject);
  var TranID : Integer;
begin
  if(ztbltempkeluar.RecordCount > 0) then
  begin
      {Tambahkan data keluar}
      dmconn.ZQry.SQL.text := 'INSERT Into TblObatKeluar (tgl) values(curdate())';
      dmconn.ZQry.ExecSQL;

      {Ambil ID Terbesar, yang baru saja ditambahkan}
      dmconn.ZQry.SQL.Text := 'SELECT max(no_keluar) from TblObatKeluar';
      dmconn.ZQry.ExecSQL;
      dmconn.ZQry.Active:= true;
      TranID := dmconn.ZQry.Fields[0].Value;

      {Masukkan data dari table temporary detail ke table detail}
      dmconn.ZQry.SQL.Text := 'insert into tblobatkeluardetail (no_keluar, kode_obat, harga_satuan, jml) ' +
                              'select :parTranID, tbltempdetailkeluar.kode_obat, tblobat.harga_default, tbltempdetailkeluar.jml ' +
                              'from tbltempdetailkeluar, tblobat ' +
                              'where tbltempdetailkeluar.id_user=:parUserID and tblobat.kode=tbltempdetailkeluar.kode_obat';
      dmconn.ZQry.ParamByName('parTranID').Value := TranID;
      dmconn.ZQry.ParamByName('parUserID').Value := dm.CurrUser.ID;
      dmconn.ZQry.ExecSQL;

      MessageDlg('Data telah disimpan.', mtinformation, [mbok], 0);

       if(MessageDlg('Cetak nota?', mtconfirmation, [mbyes, mbno], 0) = mryes) then
        CetakNota(TranID);
      {Hapus data temporary}
      DeleteTemp();
  end
  else
    MessageDlg('Tiada data yang akan disimpan.', mtwarning, [mbok], 0);
end;

procedure TfrmObatKeluarTran.edtJumlahKeyPress(Sender: TObject; var Key : char);
begin
  dm.JustNumber(Key);
end;

procedure TfrmObatKeluarTran.Edit1Change(Sender: TObject);
begin
  if(edit1.Text = '') then
  begin
    cmbobat.KeyValue := null;
  end
  else
  begin
  with DMConn.ZQry do
  begin
    SQL.text := 'SELECT kode FROM TblObat WHERE Nama Like :parNama limit 0,1';
    ParamByName('parNama').Value := edit1.Text + '%';
    ExecSQL;
    Active := true;
    if(dmconn.ZQry.Eof) then
    begin
      cmbobat.KeyValue := null;
    end
    else
    begin
      cmbobat.KeyValue := Fields[0].value;
    end;
  end;
  end;
end;

procedure TfrmObatKeluarTran.ZTblTempKeluarCalcFields(DataSet: TDataSet);
begin
  ztbltempkeluar['Total Harga'] := ztbltempkeluar['jml'] * ztbltempkeluar['harga_satuan'];
end;

procedure TfrmObatKeluarTran.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  DeleteTemp();
end;

procedure TfrmObatKeluarTran.DSDataChange(Sender: TObject; Field: TField);
begin
  HitungTotal();
end;

procedure TfrmObatKeluarTran.edtTotalHargaChange(Sender: TObject);
begin
  HitungKembalian();
end;

procedure TfrmObatKeluarTran.edtJumlahUangChange(Sender: TObject);
begin
  HitungKembalian();
end;

end.
