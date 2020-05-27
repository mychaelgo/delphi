unit UTambahBuku;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, ComCtrls, Grids, DBGrids;

type
  TFormTambahBuku = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    NoBuku: TEdit;
    JudulBuku: TEdit;
    Pengarang: TEdit;
    TabSheet2: TTabSheet;
    PilihKategori: TRadioGroup;
    Panel1: TPanel;
    BtTambah: TButton;
    BtBatal: TButton;
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    procedure BtTambahClick(Sender: TObject);
    procedure BtBatalClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTambahBuku: TFormTambahBuku;

implementation

uses ULihatDataBuku,XPman;
//XPman digunakan agar tampilan form mengikuti tampilan XP

{$R *.dfm}

procedure TFormTambahBuku.BtTambahClick(Sender: TObject);
{prosedur tombol tambah, untuk menyimpan inputan kedalam database}
begin
  if (NoBuku.Text = '') or (NoBuku.Text[1] = ' ')then       //jika NoBuku Kosong(tidak diisi)
  begin
    //menampilkan pesan dialog
    Application.MessageBox('No Buku Belum diisi','Gagal',MB_OK or MB_ICONERROR);
    NoBuku.SetFocus;        //menempatkan kursor padaa NoBuku
  end
  else if (JudulBuku.Text ='') or (JudulBuku.Text[1]=' ') then   //jika JudulBuku tidak diisi
  begin
    //Maka akan tampil pesan dialog
    Application.MessageBox('Judul Buku belum diisi','Gagal',MB_OK or MB_ICONERROR);
    JudulBuku.SetFocus;
  end
  else if (Pengarang.Text = '') or (Pengarang.Text[1] =' ') then    //jika Pengarang dikosongi
  begin
    //maka akan tampil pesan
    Application.MessageBox('Nama Pengarang Belum Diisi','Gagal',MB_OK or MB_ICONERROR);
    Pengarang.SetFocus;
  end
  else if (pilihKategori.ItemIndex  = -1) then     //jika PilihKategori tidak ada yang terisi
  begin
    //maka akan tampil pesan
    Application.messagebox('Isi Dulu Jabatan Anda','Gagal',MB_OK or Mb_iconerror);
    Pilihkategori.SetFocus;
  end
      {jika NoBuku sama dengan NoBuku pada database (NoBuku sudah terdaftar)}
  else if (NoBuku.Text = FormLihatDataBuku.TabelBuku['NoBuku']) then
  begin
    //Maka akan tampil pesan dialog
    Application.MessageBox('No Buku Sudah Terdaftar','Gagal',MB_OK or MB_IconError);
  end
  else
    begin
      begin
      FormLihatDataBuku.TabelBuku.Append;         //memesan 1 tempat kosong pada database
      //mengisi NoBuku pada database dengan NoBuku yang ditulis user/admin
      FormLihatDataBuku.TabelBuku['NoBuku'] := NoBuku.Text;
      FormLihatDataBuku.TabelBuku['JudulBuku'] := JudulBuku.Text;
      FormLihatDataBuku.TabelBuku['Pengarang'] := Pengarang.Text;
      FormLihatDataBuku.TabelBuku['Kategori'] := Pilihkategori.Itemindex;
      FormLihatDataBuku.TabelBuku['Status'] := 'Ada';
      FormLihatDataBuku.TabelBuku.Post;   //menyimpan inputan ke database
      //membersihakan Form
      NoBuku.Text := '';
      JudulBuku.Text :='';
      Pengarang.Text := '';
      {menampilkan pesan bahwa inputan sudah masuk dalam database}
      Application.MessageBox('Data Sudah Terinput','Information',MB_OK or MB_ICONINFORMATION);
      end;
      close;   //keluar dari form lihatdatabuku
    end;
end;

procedure TFormTambahBuku.BtBatalClick(Sender: TObject);
{prosedur saat tombol batal diklik}
var konfirmasi : integer;     //variabel penampil pesan
begin
  //variabel konfirmasi diisi dengan tampilan pesan dialog
  konfirmasi := application.MessageBox('Yakin Mau Keluar ?','Konfirmasi',MB_YESNO or MB_ICONQUESTION);
  if konfirmasi = idyes then      //jika saat pesan dialog ditekan yes maka
  begin
    close; // keluar
    //Membersihkan form
    NoBuku.Text :='';
    JudulBuku.Text := '';
    Pengarang.Text:='';
    Pilihkategori.ItemIndex :=-1;
  end
end;



end.
