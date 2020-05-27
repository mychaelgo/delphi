unit Unit4;   //FormPeminjamBuku

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, ExtCtrls;

type
  TFormPeminjamBuku = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    EdNoBuku: TEdit;
    EdNisPeminjam: TEdit;
    TanggalPinjam: TDateTimePicker;
    Label3: TLabel;
    Panel1: TPanel;
    BtPinjam: TButton;
    BtBatal: TButton;
    Panel2: TPanel;
    Gerak: TLabel;
    Timer1: TTimer;
    procedure BtBatalClick(Sender: TObject);
    procedure BtPinjamClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPeminjamBuku: TFormPeminjamBuku;

implementation

uses UDaftarPeminjamBuku, ULihatDataBuku, ULihatAnggota, UTambahBuku,
  UTambahAnggota;

{$R *.dfm}

procedure TFormPeminjamBuku.BtBatalClick(Sender: TObject);
var
  Konfirmasi :Integer;    {Variabel penampil pesan dialog}
begin
  Konfirmasi := application.MessageBox('Yakin Mau Keluar ?','Confirmasi',Mb_YESNO or MB_ICONQUESTION);
  if konfirmasi=idyes then
    Close;          //keluar
    EdNObUku.Text :='';     //EdNoBuku dikososngi
    EdNisPeminjam.Text := '';        //EdNisPeminjam dikososngi
end;

procedure TFormPeminjamBuku.BtPinjamClick(Sender: TObject);
//Prosedure aktif saat ditekan tombol Pinjam
Var konfirmasi : integer;           {Variabel penampil pesan dialog}
begin
   if (EdNoBuku.Text = '') then      //jika EdNoBuku tidak diisi maka
    begin
      //tampil pesan gagal
      Application.MessageBox('No Buku Belum Diisi','Gagal',MB_OK or MB_ICONError);
      EdNoBuku.SetFocus;      //menempatkan kursor pada EdNoBuku
    end
   else if (EdNisPeminjam.Text ='') then       //jika EdNoBuku tidak diisi maka
    begin
      Application.MessageBox('NIS Peminjam Belum Diisi','Gagal',MB_OK or MB_ICONError);
      edNisPeminjam.SetFocus;
    end
    //jika yang ditulis user di EdNoBuku sama dengan
    //NoBuku yang ada dalam database maka
   else if (EdNoBuku.Text = FormDaftarPeminjamBuku.TabelPeminjam['No_buku']) then
    begin
      //tampil pesan bahwa buku sudah dipinjam
      Application.MessageBox('Buku Sudah Terpinjam','Error',MB_OK or MB_IconError);
      EdNoBuku.SetFocus;
    end
    //jika NoBuku yang ditulis user tidak ada dalam database
   else if (EdNoBuku.Text <> FormLihatDataBuku.TabelBuku['NoBuku']) then
     begin
      //maka tampil pesan pertanyaan
      konfirmasi := Application.MessageBox('Buku Belum Terdaftar, Mau Daftarkan Buku?','Confirmation',
      MB_YESNO or MB_IconQuestion);
      if konfirmasi = idyes then    //jika ditekan yes
        FormTambahBuku.ShowModal;   //maka tampil FormTambahBuku
     end
     //NIS belumterdaftar(tidak ada dalam database maka)
   else if (EdNisPeminjam.Text <> FormLihatDataAnggota.TabelAnggota['NIS']) then
    begin
      //tampil pesan pertanyan
      konfirmasi:= Application.MessageBox('NIS Belum Terdaftar sebagai Anggota, Mau Daftar?',
      'konfirmasi',MB_YESNO or MB_ICONquestion);
      if konfirmasi = idyes then    //jika ditekan yes maka
        FormTambahAnggota.ShowModal;  //tampil formtambahAnggota
    end
   else   //jika semua syarat diatas terpenuhi
   begin
    begin
      FormDaftarPeminjamBuku.TabelPeminjam.Append;    //memesan 1 tempat kosong di database
      //mengisi No_Buku pada database dengan inputan user dalam EdNoBuku
      FormDaftarPeminjamBuku.TabelPeminjam['No_buku'] := EdNoBuku.Text;
      //mengisi NIS pada database dengan inputan user dalam EdNisPeminjam
      FormDaftarPeminjamBuku.TabelPeminjam['NIS'] := EdNisPeminjam.Text;
      //mengisi Tanggal Pinjam pada database dengan inputan user dalam TanggalPinjam
      FormDaftarPeminjamBuku.TabelPeminjam['Tanggal Pinjam'] := TanggalPinjam.Date;
      //menyimpan inputan user dalam database
      FormDaftarPeminjamBuku.TabelPeminjam.Post;
      //jika yang dituli user pada EdNoBuku sama dengan
      //yang ada pada NoBuku di formlihatdatabuku maka
      if (EdNoBuku.text = FormLihatDataBuku.TabelBuku['NoBuku']) then
      begin
        //mengaktifkan edit, agar bisa mengedit/merubah data
        FormLihatDataBuku.TabelBuku.Edit;
        //mengisi status di Tabel buku dengan dipinjam
        FormLihatDataBuku.TabelBuku['Status'] := 'Dipinjam';
        //menyimpan hasil editan dalam database
        FormLihatDataBuku.TabelBuku.Post;
      end;

      //membersihakan Form
      EdNoBuku.Text := '';
      EdNisPeminjam.Text :='';
      //tampil pesan dialog bahwa telah terinput
      Application.MessageBox('Data Sudah Terinput','Information',MB_OK or MB_ICONINFORMATION);
    end;
    close;   //keluar
   end;
end;


procedure TFormPeminjamBuku.FormCreate(Sender: TObject);
begin
  //mengeset tanggal pinjam dengan tanggal sekarang (hari ini)
  TanggalPinjam.Date := now;
end;

procedure TFormPeminjamBuku.Timer1Timer(Sender: TObject);
begin
  //kurangi posisi batas kiri dari label
  Gerak.Left := Gerak.Left-1;
  //jikaBatas kiri dari label sama dengan panel
  //kembali lagi ke paling kanan panel
  if (gerak.Left + gerak.Width )<=0 then
    gerak.Left := panel2.width;
end;

end.
