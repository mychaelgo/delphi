unit UTambahAnggota;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, ExtCtrls, ComCtrls;

type
  TFormTambahAnggota = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    NIS: TEdit;
    NamaSiswa: TEdit;
    Panel1: TPanel;
    BtTambah: TButton;
    BtBatal: TButton;
    TabSheet2: TTabSheet;
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    ComboBox1: TComboBox;
    Label3: TLabel;
    procedure BtBatalClick(Sender: TObject);
    procedure BtTambahClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);


  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTambahAnggota: TFormTambahAnggota;

implementation

uses ULihatAnggota,XPman;

{$R *.dfm}

procedure TFormTambahAnggota.BtBatalClick(Sender: TObject);
{prosedure yang aktif saat tombol batal ditekan}
var konfirmasi : integer;   //variabel untuk menampilkan pesan dialog
begin
  //mengisi variabel dengan pesan dialog
  konfirmasi := application.MessageBox('Yakin Mau Keluar ?','Konfirmasi',MB_YESNO or MB_ICONQUESTION);
  if konfirmasi = idyes then        //jika saat pesan dialog ditekan yes maka
  begin
    Close;     //keluar
    //Membersihkan Form
    NIS.Text :='';
    Namasiswa.Text:='';
    ComboBox1.text := '';
  end;
end;

procedure TFormTambahAnggota.BtTambahClick(Sender: TObject);
{prosedure jika ditekan tombol Tambah}
begin
  //jika NIS inputan sudah terdaftar dalam database
  if (NIS.Text = FormLihatDataAnggota.TabelAnggota['NIS']) then
  begin
    //tampil pesan Gagal
    application.MessageBox('NIS sudah terdaftar sebagai Anggota','Gagal',MB_OK or Mb_iconerror);
  end
  else if (NIS.Text = '') or (NIS.Text[1] = ' ') then  //jika NIS tidak diisi
  begin
    application.MessageBox('NIS Belum Diisi','Gagal',MB_OK or MB_iconError);
    NIS.SetFocus;   //menempatkan kursor pada NIS
  end
  else if (NamaSiswa.Text ='') or (NamaSiswa.Text[1]=' ')then   //jika Namasiswa tidak diisi
  begin
    //tampil pesan gagal
    Application.MessageBox('Nama Belum Diisi','Gagal',MB_OK or MB_iconerror);
    namasiswa.SetFocus;   //menempatkan kursor pada Nama Siswa
  end
  else if(ComboBox1.Text = '') then     //jika pilihkelas tidak diisi
  begin
    Application.MessageBox('Kelas Belum Diisi','Gagal',MB_OK or MB_ICOnerror);
    ComboBox1.SetFocus;  //menempatkan kursor pada PilihKelas
  end
  else      //jika semua syarat diatas terpenuhi maka
   begin
    begin
      FormLihatDataAnggota.TabelAnggota.Append;      //pesan 1 tempat kosong paa database
      //Mengisi NIS pada database dengan NIS yang ditulis user/admin
      FormLihatDataAnggota.TabelAnggota['NIS'] := NIS.Text;
      FormLihatDataAnggota.TabelAnggota['Nama'] := NamaSiswa.Text;
      FormLihatDataAnggota.TabelAnggota['Kelas'] := cOMBObOX1.TEXT;
      FormLihatDataAnggota.TabelAnggota.Post;       //menyimpan inputan user ke database
      //membersihakan Form
      NIS.Text := '';
      NamaSiswa.Text :='';
      Application.MessageBox('Data Sudah Terinput','Information',MB_OK or MB_ICONINFORMATION);
    end;
    close;    //keluar form tambah anggota
   end;
end;





procedure TFormTambahAnggota.FormCreate(Sender: TObject);
begin
  Combobox1.Items.LoadFromFile('Kelas');
end;

end.
