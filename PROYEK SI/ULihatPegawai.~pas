unit ULihatPegawai;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Grids, DBGrids, StdCtrls, DB, ADODB, DBCtrls;

type
  TFormLihatDataPegawai = class(TForm)
    TabelPegawai: TADOTable;
    ADOConnection1: TADOConnection;
    DataSource1: TDataSource;
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    Panel2: TPanel;
    DBNavigator1: TDBNavigator;
    Panel3: TPanel;
    BtKeluar: TButton;
    Memo1: TMemo;
    Panel4: TPanel;
    RGCariDari: TRadioGroup;
    Panel5: TPanel;
    BtCari: TButton;
    EdCari: TEdit;
    procedure Button1Click(Sender: TObject);
    procedure BtKeluarClick(Sender: TObject);
    procedure RGCariDariClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BtCariClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormLihatDataPegawai: TFormLihatDataPegawai;
  caridari : string;  //variabel global digunakan untuk mencari data dari yang
                      //dibutuhkan user
implementation

uses UTambahPegawai,XPman;

{$R *.dfm}

procedure TFormLihatDataPegawai.Button1Click(Sender: TObject);
//jika ditekan tombol Tambah
begin
  FormTambahPegawai.ShowMOdal;  //muncul FormTambahPegawai
end;

procedure TFormLihatDataPegawai.BtKeluarClick(Sender: TObject);
var konfirmasi : integer;     {Variabel penampil pesan dialog}
begin
  konfirmasi := application.MessageBox('Yakin Mau Keluar ?','Konfirmasi',MB_YESNO or MB_ICONQUESTION);
  if konfirmasi = idyes then     //jika ditekan yes maka
  Close;                         //keluar
end;

procedure TFormLihatDataPegawai.RGCariDariClick(Sender: TObject);
begin
  if RGCariDari.ItemIndex =0 then
  begin
    caridari := 'Id_Pegawai';   //mencari data berdasarkan Id_Pegawai dalam database
    EdCari.Enabled := True;     //EdCari aktif
    EdCari.Color:= clWindow;    //EdCari dirubah warnanya seperti warna aktif
    BtCari.Enabled := True;     //Tombol Cari aktif
  end
  else if RGCariDari.ItemIndex =1 then
  begin
    caridari := 'Username';    //mencari data berdasarkan Username dalam database
    EdCari.Enabled := True;    //EdCari aktif
    EdCari.Color:= clWindow;   //EdCari dirubah warnanya seperti warna aktif
    Btcari.Enabled :=true;     //Tombol Cari aktif
  end;
end;

procedure TFormLihatDataPegawai.FormCreate(Sender: TObject);
begin
  EdCari.Enabled := False;
  EdCari.Color:= clMenubar;
  BtCari.Enabled :=false;
end;

procedure TFormLihatDataPegawai.BtCariClick(Sender: TObject);
begin
  If edCari.Text = '' then
    Application.MessageBox('Isi dulu yang mau dicari', 'Gagal', MB_ok or Mb_IconError)

  //locate digunakan untuk Mencari data Yang dimasukkan user pada EdCari
  //Pada database yang nama fieldnya berasal dari variabel caridari
  else if TabelPegawai.Locate(caridari,EdCari.Text, [loCaseInsensitive, loPartialKey]) = True then
        Application.MessageBox ('Menemukan data dalam tabel Pegawai','Data Ditemukan',MB_OK or MB_iconinformation)
  else
        Application.MessageBox ('Tidak menemukan data dalam tabel Pegawai','Data Tidak Ditemukan',Mb_ok or MB_iconInformation);

end;

end.
