unit Unit2; //form interfaceawal (menu utama)

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ImgList, Menus, jpeg, ExtCtrls, WavePlay, StdCtrls;

type
  TFormInterfaceAwal = class(TForm)
    Image1: TImage;
    MainMenu1: TMainMenu;
    PilihanData1: TMenuItem;
    TambahData: TMenuItem;
    TambahDataPegawai: TMenuItem;
    TambahDataAnggota: TMenuItem;
    N1: TMenuItem;
    LihatDataBuku: TMenuItem;
    LihatDataPegawai: TMenuItem;
    LihatDataAnggota: TMenuItem;
    Transaksi1: TMenuItem;
    PeminjamanBuku: TMenuItem;
    PengembalianBuku: TMenuItem;
    N2: TMenuItem;
    LihatDaftarPeminjamBuku: TMenuItem;
    Info1: TMenuItem;
    InfoSoftawre1: TMenuItem;
    InfoPembuat1: TMenuItem;
    DatfarSitus1: TMenuItem;
    PilihSitus1: TMenuItem;
    Keluar1: TMenuItem;
    LogOut1: TMenuItem;
    ImageList1: TImageList;
    WavePlayer1: TWavePlayer;
    Label1: TLabel;
    ambahKelas1: TMenuItem;
    procedure LogOut1Click(Sender: TObject);
    procedure LihatDataBukuClick(Sender: TObject);
    procedure TambahDataClick(Sender: TObject);
    procedure TambahDataAnggotaClick(Sender: TObject);
    procedure LihatDataAnggotaClick(Sender: TObject);
    procedure LihatDataPegawaiClick(Sender: TObject);
    procedure TambahDataPegawaiClick(Sender: TObject);
    procedure InfoSoftawre1Click(Sender: TObject);
    procedure InfoPembuat1Click(Sender: TObject);
    procedure LihatDaftarPeminjamBukuClick(Sender: TObject);
    procedure PeminjamanBukuClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure PilihSitus1Click(Sender: TObject);
    procedure PengembalianBukuClick(Sender: TObject);
    procedure ambahKelas1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormInterfaceAwal: TFormInterfaceAwal;

implementation

Uses XPman, ULihatDataBuku, UTambahBuku, UTambahAnggota, ULihatAnggota,
  ULihatPegawai, UTambahPegawai, Unit3, UAboutMaker, Unit4,
  UDaftarPeminjamBuku, UDaftarSitus, UPengembalian, UPemilihanLogIn, Unit1;



{$R *.dfm}


procedure TFormInterfaceAwal.LogOut1Click(Sender: TObject);
var konfirmasi : integer;     //variabel yang diisi dengan penampil pesan dialog
begin
  konfirmasi := application.MessageBox('Yakin Mau Keluar ?','Konfirmasi',MB_YESNO or MB_ICONquestion);
  if konfirmasi = idyes then    //jika ditekan yes saat pesan dialog muncul maka
  begin
    hide;                       //FormInterfaceAwal disembunyikan
    FormPemilihanLogIn.Show;    //Kembalik ke FormPemilihanLogIn
  end;
end;

procedure TFormInterfaceAwal.LihatDataBukuClick(Sender: TObject);
begin
  FormLihatDataBuku.ShowModal;      //menampilkan FormLihatDataBuku
end;

procedure TFormInterfaceAwal.TambahDataClick(Sender: TObject);
{saat ditekan TambahData pada mainmenu1}
begin
  FormTambahBuku.ShowModal;         //menampilkan FormTambahBuku
end;

procedure TFormInterfaceAwal.TambahDataAnggotaClick(Sender: TObject);
{saat ditekan TambahDataAnggota pada mainmenu1}
begin
  FormTambahAnggota.ShowModal;       //menampilkan FormTambahAnggota
end;

procedure TFormInterfaceAwal.LihatDataAnggotaClick(Sender: TObject);
{saat ditekan LihatDataAnggota pada mainmenu1}
begin
  FormLihatDataAnggota.ShowMOdal;    //menampilkan FormLihatDataAnggota
end;

procedure TFormInterfaceAwal.LihatDataPegawaiClick(Sender: TObject);
{saat ditekan LihatDataPegawai pada mainmenu1}
begin
  FormLihatDataPegawai.ShowMOdal;    //menampilkan FormLihatDataPegawai
end;

procedure TFormInterfaceAwal.TambahDataPegawaiClick(Sender: TObject);
{saat ditekan TambahDataPegawai pada mainmenu1}
begin
  FormTambahPegawai.ShowMOdal;       //menampilkan FormTambahPegawai
end;

procedure TFormInterfaceAwal.InfoSoftawre1Click(Sender: TObject);
{saat ditekan InfoSoftware pada mainmenu1}
begin
  FormTentangSoftware.ShowModal;      //menampilkan FormTentangSoftware
end;

procedure TFormInterfaceAwal.InfoPembuat1Click(Sender: TObject);
{saat ditekan InfoPembuat pada mainmenu1}
begin
  FormPembuat.ShowModal;              //menampilkan FormPembuat
end;

procedure TFormInterfaceAwal.LihatDaftarPeminjamBukuClick(Sender: TObject);
{saat ditekan LihatDaftarPeminjamBuku pada mainmenu1}
begin
  FormDaftarPeminjamBuku.ShowMOdal;    //menampilkan FormDaftarPeminjamBuku
end;

procedure TFormInterfaceAwal.PeminjamanBukuClick(Sender: TObject);
{saat ditekan PeminjamanBuku pada mainmenu1}
begin
  FormPeminjamBuku.ShowModal;          //menampilkan FormPeminjamBuku
end;

procedure TFormInterfaceAwal.FormShow(Sender: TObject);
{prosedure yang aktif saat pertama kali form muncul}
begin
  WavePlayer1.Active := true;          //Memainkan Music pembuka
end;

procedure TFormInterfaceAwal.PilihSitus1Click(Sender: TObject);
{saat ditekan PilihSitus pada mainmenu1}
begin
  FormSitus.Showmodal;                 //menampilkan FormSitus
end;

procedure TFormInterfaceAwal.PengembalianBukuClick(Sender: TObject);
{saat ditekan PengemabalianBuku pada mainmenu1}
begin
  FormPengembalianBuku.ShowModal;      //menampilkan FormPengembalianBuku
end;

procedure TFormInterfaceAwal.ambahKelas1Click(Sender: TObject);
begin
   FormTambahKelas.ShowModal;
end;

end.
