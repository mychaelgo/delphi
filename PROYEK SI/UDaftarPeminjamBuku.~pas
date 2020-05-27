unit UDaftarPeminjamBuku;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, ExtCtrls, Grids, DBGrids, StdCtrls, DBCtrls;

type
  TFormDaftarPeminjamBuku = class(TForm)
    ADOConnection1: TADOConnection;
    TabelPeminjam: TADOTable;
    DataSource1: TDataSource;
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    Panel2: TPanel;
    Panel3: TPanel;
    BtTambah: TButton;
    BtKeluar: TButton;
    DBNavigator1: TDBNavigator;
    Panel4: TPanel;
    RGPilihanCari: TRadioGroup;
    Label1: TLabel;
    EdCari: TEdit;
    Panel5: TPanel;
    BtCari: TButton;
    procedure BtKeluarClick(Sender: TObject);
    procedure BtTambahClick(Sender: TObject);
    procedure RGPilihanCariClick(Sender: TObject);
    procedure BtCariClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormDaftarPeminjamBuku: TFormDaftarPeminjamBuku;
  CariDari :String; //variabel global untuk diisi pencarian dari data yang diminta user
implementation

uses Unit4;

{$R *.dfm}

procedure TFormDaftarPeminjamBuku.BtKeluarClick(Sender: TObject);
{prosedur untuk tombol keluar}
var konfirmasi : integer;
begin
  //memunculkan pesan dialog
  konfirmasi := application.MessageBox('Yakin Mau Keluar ?','Konfirmasi',MB_YESNO or MB_ICONQUESTION);
  if konfirmasi = idyes then    //jika ditekan yes
  close;                        //maka keluar
end;

procedure TFormDaftarPeminjamBuku.BtTambahClick(Sender: TObject);
{Prosedure jika ditekan tombol Tambah pada form ini}
begin
  FormPeminjamBuku.ShowMOdal;   //menampilkan FormPeminjanBuku
end;

procedure TFormDaftarPeminjamBuku.RGPilihanCariClick(Sender: TObject);
//prosedur saat ditekan salah satu pilhan cari pada form
begin
  {Pada RadioGroup itemindex dimulai dari 0 sama dengan array pada java}
  if RGPilihanCari.ItemIndex =0 then    //jika ditekan pilhan pertama maka
  begin
    caridari := 'No_buku';     //variabel caridari diisi No_Buku
    EdCari.Enabled := True;    //Mengaktifkan kotak editcari
    EdCari.Color:= clWindow;   //Warna Edit berwarana clWindow memberi kesan aktif
    BtCari.Enabled := True;    //TombolCari aktif
  end
  else if RGPilihanCari.ItemIndex =1 then  //jika dipilih pilhan kedua
  begin
    caridari := 'NIS';          //variabel diisi NIS
    EdCari.Enabled := True;     //Mengaktifkan kotak editcari
    EdCari.Color:= clWindow;    //Warna Edit berwarana clWindow memberi kesan aktif
    BtCari.Enabled :=true;      //TombolCari aktif
  end;
end;

procedure TFormDaftarPeminjamBuku.BtCariClick(Sender: TObject);
begin
  If edcari.Text = '' then    //jika EdCari tidak Diisi
    //muncul pesan dialog gagal
    Application.MessageBox('Isi dulu yang mau dicari', 'Gagal', MB_ok or Mb_IconError)
       //Mencari data Yang dimasukkan user pada EdCari
       //Pada database yang nama fieldnya berasal dari variabel caridari
  else if TabelPeminjam.Locate(caridari,Edcari.Text , [loCaseInsensitive, loPartialKey]) = True then
        //menampilkan pesan data telah ditemukan
        Application.MessageBox ('Menemukan data dalam tabel Pegawai','Data Ditemukan',MB_OK or MB_iconinformation)
  else
        //menampilkan pesan dialog bahwa data tidak ditemukan
        Application.MessageBox ('Tidak menemukan data dalam tabel Pegawai','Data Tidak Ditemukan',Mb_ok or MB_iconInformation);
end;

end.
