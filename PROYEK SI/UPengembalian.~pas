unit UPengembalian;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TFormPengembalianBuku = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    EdNoBuku: TEdit;
    Label2: TLabel;
    EdNis: TEdit;
    Panel2: TPanel;
    BtKembalikan: TButton;
    BtBatal: TButton;
    procedure BtBatalClick(Sender: TObject);
    procedure BtKembalikanClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPengembalianBuku: TFormPengembalianBuku;

implementation

uses UDaftarPeminjamBuku,XPman, ULihatDataBuku;
//XPMan agar Tampilan Form mengikuti Tampilan Windows yang sedang aktif
{$R *.dfm}

procedure TFormPengembalianBuku.BtBatalClick(Sender: TObject);
{Prosedure yang aktif saat tombol Batal ditekan}
var konfirmasi : integer;   //variabel yang diisi dengan pesan dialog
begin
  {variabel konfirmasi diisi dengan tampilan pesan dialog}
  konfirmasi := application.MessageBox('Yakin Mau Keluar ?','Konfirmasi',MB_YESNO or MB_ICONQUESTION);
  if konfirmasi = idyes then     //jika ditekan yes maka
  begin
    Close;                      //keluar
    EdNoBuku.Text :=  '';       //Tulisan Yang ada pada NoBuku terhapus/hilang
    EdNis.Text := '';           //Tulisan Yang ada pada NIS terhapus/hilang
  end;
end;

procedure TFormPengembalianBuku.BtKembalikanClick(Sender: TObject);
{Prosedur yang aktif saat Tombol kembalikan ditekan}
var konfirmasi : integer;     //Variabel yang diisi dengan pesan dialog
begin
  if (EdNoBuku.Text = '') then    //jika NoBuku tidak diisi maka
  begin
    {muncul pesan gagal melakukan aksi}
    Application.MessageBox('Isi No Buku','Gagal',MB_OK or MB_ICONERROR);
    EdNoBuku.SetFocus;    //Menaruh kursor di NoBuku
  end
  else if (EdNis.text = '') then  //jika NIS tidak diisi maka
  begin
    //Menampilkan Pesan gagal dan tidak melanjutkan ke form selanjutnya
    Application.MessageBox('Isi NIS Peminjam Dulu','Gagal',MB_OK or MB_ICONERROR);
    EDNis.SetFocus;  //menaruh kursor ke NIS
  end
  else              //jika semua syarat diatas telah dipenuhi maka
  begin
    //muncul pesan dialog yang membutuhkan persetujuan user
    konfirmasi := application.MessageBox('Yakin Kembalikan Buku ?','Konfirmasi',MB_YESNO or MB_ICONQuestion);
    if konfirmasi = idyes then      //  Jika Pesan dialog ditekan yes maka
    begin
      {jika NoBuku yang dimasukkan user sama dengan yang ada di database maka}
      if EdNoBuku.Text = FormDaftarPeminjamBuku.TabelPeminjam['No_Buku'] then
      begin
        FormDaftarPeminjamBuku.TabelPeminjam.Delete;    //Hapus data yang ditulis user
        //jika yang ditulis user pada edNoBuku sama dengan
        //NoBuku yang ada pada FormLihatDataBuku maka
        if (EdNoBuku.text = FormLihatDataBuku.TabelBuku['NoBuku']) then
        begin
          FormLihatDataBuku.TabelBuku.Edit;         //mengaktifkan edit, agar bisa mengedit/merubah data
          FormLihatDataBuku.TabelBuku['Status'] := 'Ada';  //Menghapus isi yang ada di Status
          FormLihatDataBuku.TabelBuku.Post;         //menyimpan hasil editan kedalam database
        end;
      end;
      //menampilkan pesan bahwa Buku telah berhasil dikembalikan
      application.MessageBox('Buku Berhasil Dikembalikan','Informasi',MB_OK or MB_ICONINFORMATION);
      close;    //keluar dari form
    end;
  end;
end;

end.
