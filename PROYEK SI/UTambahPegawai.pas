unit UTambahPegawai;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, ExtCtrls, Grids, DBGrids;

type
  TFormTambahPegawai = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    NamaPegawai: TEdit;
    Confirm: TEdit;
    password: TEdit;
    Idpegawai: TEdit;
    TabSheet2: TTabSheet;
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    PilihJabatan: TRadioGroup;
    Label5: TLabel;
    Panel2: TPanel;
    Button2: TButton;
    Button1: TButton;
    BtTambah: TButton;
    BtBatal: TButton;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);

    
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTambahPegawai: TFormTambahPegawai;

implementation

uses ULihatPegawai,XPman;

{$R *.dfm}

procedure TFormTambahPegawai.Button2Click(Sender: TObject);
{Prosedure yang aktif saat ditekan tombol keluar}
var konfirmasi : integer;       //variabel untuk diisi pesan dialog
begin
  {mengisi variabel dengan pesan dialog}
  konfirmasi := application.MessageBox('Yakin Mau Keluar ?','Konfirmasi',MB_YESNO or MB_ICONQUESTION);
  if konfirmasi = idyes then    //jika ditekan tombol yes pada pesan dialog
  begin
    close;                  //keluar
    //Membersihkan Form
    IdPegawai.Text:='';
    NamaPegawai.Text := '';
    PilihJabatan.ItemIndex := -1;
    Password.Text := '';
    Confirm.Text:='';
  end;
end;

procedure TFormTambahPegawai.Button1Click(Sender: TObject);
{Prosedure untuk menyimpan Inputan user ke database saat tombol ditekan}
begin
  if (idpegawai.Text[1] = ' ') or (idpegawai.Text = '') then   //jika idpegawai tidak diisi (kosong) atau diisi spasi maka
  begin
    {maka akan tampil pesan dialog}
    Application.MessageBox('Id Pegawai Belum diisi','Gagal',MB_OK or MB_ICONError);
    idPegawai.SetFocus;    //menempatkan kursoor pada idpegawai
  end
  else if (NamaPegawai.Text ='') or (NamaPegawai.Text[1] = ' ')then     //jika NamaPegawai kosong
  begin
    {maka akan tampil pesan dialog}
    Application.MessageBox('Nama Belum Diisi','Gagal',MB_OK or MB_ICONERROR);
    NamaPegawai.SetFocus;     //menempatkan kursor pada namapegawai
  end
  else if (Password.Text = '') or (Password.Text[1] =' ')then        //jika Password kosong
  begin
    {maka akan tampil pesan dialog}
    Application.MessageBox('Password Belum Diisi','Gagal',MB_OK or MB_ICONERROR);
    Password.SetFocus;        //menempatkan kursor pada password
  end
  else if PilihJabatan.ItemIndex =-1 then    //jika pilihjabatan tidak ada yang terisi
  begin
    {maka tampil pesan dialog}
    Application.MessageBox('Isi Dulu Pilihan Jabatan','Gagal',MB_OK or MB_ICONERROR);
    PilihJabatan.SetFocus;    //menempatkan kursor pada pilihjabatan
  end
  else if password.Text <> confirm.Text then   //jika Password tidak sama dengan Confirm
  begin
    {maka tampil pesan dialog}
    Application.MessageBox('Password Tidak Cocok Dengan Confirm Password','Gagal',MB_OK or MB_ICONERROR);
    Confirm.Text :='';     //mengosongi kotak Confirm
    Confirm.SetFocus;      //Menempatkan kursor di confirm
  end
  {jika id pegawai sudah ada dalam database}
  else if (idPegawai.Text = FormlihatDataPegawai.TabelPegawai['id_pegawai']) then
  begin
    //maka akan tampil pesan dialog
    application.MessageBox('ID Sudah Terdaftar Sebagai Pegawai','Error',MB_OK Or MB_ICONERROR);
  end
  else  //jika semua syarat diatas terpenuhi maka inputan masuk database
  begin
    begin
    FormLihatDataPegawai.TabelPegawai.Append;     //memesan 1 tempat pada database
    {mengisi id_pegawai pada database dengan inputan user pada idpegawai}
    FormLihatDataPegawai.TabelPegawai['id_pegawai'] := idPegawai.Text;
    {mengisi username pada database dengan inputan user pada NamaPegawai}
    FormLihatDataPegawai.TabelPegawai['username'] := NamaPegawai.Text;
    {mengisi jabatan pada database dengan inputan user pada pilihjabatan}
    FormLihatDataPegawai.TabelPegawai['Jabatan'] := PilihJabatan.ItemIndex ;
    {mengisi Password pada database dengan inputan user pada password}
    FormLihatDataPegawai.TabelPegawai['Password'] := Password.Text;
    FormLihatDataPegawai.TabelPegawai.Post;      //menyimpan inputan pada database
    //membersihakan Form
    idPegawai.Text := '';
    NamaPegawai.Text :='';
    confirm.Text := '';
    PilihJabatan.ItemIndex :=-1;
    Password.Text := '';
    Application.MessageBox('Data Sudah Terinput','Information',MB_OK or MB_ICONINFORMATION);
    end;
    close;        //keluar dari form
  end;
end;

end.
