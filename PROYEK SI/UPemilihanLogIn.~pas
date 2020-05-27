unit UPemilihanLogIn;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TFormPemilihanLogIn = class(TForm)
    Image1: TImage;
    LbAdmin: TLabel;
    LbSiswa: TLabel;
    LbKeluar: TLabel;
    procedure FormCreate(Sender :TObject);
    Procedure BesarkanFont(Tulisan : TLabel);
    Procedure KecilkanFont(Tulisan : TLabel);
    procedure LbAdminClick(Sender: TObject);
    procedure LbAdminMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure LbSiswaMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure LbSiswaMouseLeave(Sender: TObject);
    procedure LbAdminMouseLeave(Sender: TObject);
    procedure LbSiswaClick(Sender: TObject);
    procedure LbKeluarClick(Sender: TObject);
    procedure LbKeluarMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure LbKeluarMouseLeave(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPemilihanLogIn: TFormPemilihanLogIn;

implementation

uses ULogin, Unit2,XPman, ULihatDataBuku, ULihatPegawai, ULihatAnggota;
//XPMan digunakan agar tampilan form mengikuti tampilan XP yang sedang aktif

{$R *.dfm}

procedure TFormPemilihanLogIn.FormCreate(Sender : TObject);
begin
  Show; //menampilkan formPemilihanLogIn
  FrmLogIn.Hide; //menyembunyikan FormLogIn
end;

Procedure TFormPemilihanLogIn.BesarkanFont(Tulisan : TLabel);
begin
  //ubah ukuran font menjadi berukuran 12
  Tulisan.Font.size :=11;
  //ubah format font menjadi bold dan underline
  Tulisan.Font.Style:=[FsBold];
  //mengubah warna font menjadi merah
  Tulisan.Font.Color := clYellow;
end;

Procedure TFormPemilihanLogIn.KecilkanFont(Tulisan : TLabel);
begin
  //Mengubah ukuran font ke ukuran semula
  Tulisan.Font.Size:=10;
  //mengubah format menjadi normal
  Tulisan.Font.Style:=[];
  //ubah warna menjadi putih
  Tulisan.Font.Color:=ClWhite;
end;

procedure TFormPemilihanLogIn.LbAdminClick(Sender: TObject);
begin
  FrmLogin.Show;    //menampilkan formLogin
  hide;             //menyembunyikan formpemilihanlogin
end;

procedure TFormPemilihanLogIn.LbAdminMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  BesarkanFont(LbAdmin); //memanggil procedure besarkanFont dengan LbAdmin
                         // sebagai parameter
end;

procedure TFormPemilihanLogIn.LbSiswaMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  BesarkanFont(LbSiswa); //memanggil prosedur BesarkanFont
end;

procedure TFormPemilihanLogIn.LbSiswaMouseLeave(Sender: TObject);
begin
  KecilkanFont(LbSiswa); // memanggil procedure kecilkan font
end;

procedure TFormPemilihanLogIn.LbAdminMouseLeave(Sender: TObject);
begin
  KecilkanFont(LbAdmin);    //memanggil prosedur kecilkanfont
end;

procedure TFormPemilihanLogIn.LbSiswaClick(Sender: TObject);
{Prosedure yang aktif saat LbSiswa ditekan
  memberikan batasan aktivitas yang dapat dilakukan}
begin
  Hide;                         //menyembunyika FormPemilihanlogin
  FormInterfaceAwal.Show;       //menampilkan FormInterfaceAwal
  //label1 pada FormInterfaceAwal diisi SISWA
  FormInterfaceAwal.Label1.Caption:='SISWA';
  //pilihan menu tambahdata pada formInterfaceawal tidak dapat berfungsi
  FormInterfaceAwal.TambahData.Enabled := False;
  //Pilihan tambahdatapegawai tidak dapa berfungsi
  FormInterfaceAwal.TambahDataPegawai.Enabled := false;
  //Pilihan tambahdataanggota tidak dapa berfungsi
  FormInterfaceAwal.TambahDataAnggota.Enabled := false;
  //Tombol Navigator pada FormLihatDataPegawai Tidak Berfungsi
  FormLihatDataPegawai.DBNavigator1.Enabled := false;
  //Tombol Navigator pada FormLihatDataAnngota Tidak Berfungsi
  FormLihatDataAnggota.DBNavigator1.Enabled := false;
  //Pilihan transaksi tidak dapat berfungsi
  FormInterfaceAwal.Transaksi1.Enabled:=false;
  //DBNavigator pada LihatDataBuku tidak dapat berfungsi
  FormLihatDataBuku.DbNavigator1.Enabled:=false;
end;

procedure TFormPemilihanLogIn.LbKeluarClick(Sender: TObject);
{prosedure yang aktif saat tombol keluar ditekan}
var konfirmasi : integer;     //variabel yang diisi dengan pesan dialog
begin
  konfirmasi :=Application.MessageBox('Yakin Mau Keluar ?','Konfirmasi Tutup',
  MB_YESNO or MB_ICONQUESTION);
  if Konfirmasi=IdYes then      //jika pesan dialog ditekan yes maka
  Application.Terminate;       //aplikasi berhenti  (keluar dari aplikasi)
end;

procedure TFormPemilihanLogIn.LbKeluarMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  BesarkanFont(Lbkeluar);     //memanggil prosedure BesarkanFont
end;

procedure TFormPemilihanLogIn.LbKeluarMouseLeave(Sender: TObject);
begin
  KecilkanFont(LbKeluar);     //memanggil prosedure KecilkanFont
end;

end.
