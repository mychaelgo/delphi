unit ULihatAnggota;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, DB, ADODB, ExtCtrls, DBCtrls;

type
  TFormLihatDataAnggota = class(TForm)
    ADOConnection1: TADOConnection;
    TabelAnggota: TADOTable;
    DataSource1: TDataSource;
    Panel1: TPanel;
    naa: TDBGrid;
    Panel2: TPanel;
    Panel3: TPanel;
    BtKeluar: TButton;
    DBNavigator1: TDBNavigator;
    Panel4: TPanel;
    PilihCariDari: TRadioGroup;
    Label1: TLabel;
    EdCari: TEdit;
    BtCari: TButton;
    procedure BtKeluarClick(Sender: TObject);
    procedure BtCariClick(Sender: TObject);
    procedure PilihCariDariClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormLihatDataAnggota: TFormLihatDataAnggota;
  caridari : String;
  //variabel global untuk diisi pencarian dari data yang diminta user
implementation

uses UTambahAnggota,XPman;
//XPMan agar tampilan form mengikuti tampilan XP yang aktif
{$R *.dfm}

procedure TFormLihatDataAnggota.BtKeluarClick(Sender: TObject);
var konfirmasi : integer; //variabel untuk diisi pesan dialog
begin
  //menampilkan pesan saat ditekan Tombol keluar
  konfirmasi := application.MessageBox('Yakin Mau Keluar ?','Konfirmasi',MB_YESNO or MB_ICONQUESTION);
  if konfirmasi = idyes then       //jika ditekan yes
  Close;                           //maka keluar
end;

procedure TFormLihatDataAnggota.BtCariClick(Sender: TObject);
//prosedur yang aktif saat ditekan tombol cari
begin
  If edcari.Text = '' then    //jika EdCari tidak diisi
    //menampilkan pesan dialog gagal
    Application.MessageBox('Isi dulu yang mau dicari', 'Gagal', MB_ok or Mb_IconError)
        //locate digunakan untuk Mencari data Yang dimasukkan user pada EdCari
       //Pada database yang nama fieldnya berasal dari variabel caridari
  else if TabelAnggota.Locate(caridari,Edcari.Text , [loCaseInsensitive, loPartialKey]) = True then
        Application.MessageBox ('Menemukan data dalam tabel Pegawai','Data Ditemukan',MB_OK or MB_iconinformation)
  else
        Application.MessageBox ('Tidak menemukan data dalam tabel Pegawai','Data Tidak Ditemukan',Mb_ok or MB_iconInformation);
end;



procedure TFormLihatDataAnggota.PilihCariDariClick(Sender: TObject);
//prosedur saat ditekan salah satu pilhan cari pada form
begin
{Pada RadioGroup itemindex dimulai dari 0 sama dengan array pada java}
if PilihCariDari.ItemIndex =0 then    //jika dipilih pilihan pertama
  begin
    caridari := 'NIS';        //mencari data berdasarkan NIS dalam database
    EdCari.Enabled := True;   //EdCari aktif
    EdCari.Color:= clWindow;  //EdCari dirubah warnanya seperti warna aktif
    BtCari.Enabled := True;   //Tombol Cari aktif
  end
  else if PilihCariDari.ItemIndex =1 then     //jika dipilih pilihan pertama
  begin
    caridari := 'Nama';       //mencari data berdasarkan Nama dalam database
    Edcari.Enabled := True;   //EdCari aktif
    Edcari.Color:= clWindow;  //EdCari dirubah warnanya seperti warna aktif
    BtCari.Enabled :=true;    //Tombol Cari aktif
  end
end;

procedure TFormLihatDataAnggota.FormCreate(Sender: TObject);
//Prosedure yang aktif saat pertama kali Form tampil
begin
  EdCari.Enabled := False;     //EdCari tidak aktif
  EdCari.Color:= clMenubar;    //EdCari dirubah warnanya
  BtCari.Enabled :=false;      //tombol cari tidak aktif
end;

end.
