unit UAboutMaker;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, jpeg, ExtCtrls;

type
  TFormPembuat = class(TForm)
    Label1: TLabel;
    PilihAnggota: TComboBox;
    Label2: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    LbNama: TLabel;
    LbNim: TLabel;
    LbKelas: TLabel;
    LbJurusan: TLabel;
    Image1: TImage;
    GroupBox1: TGroupBox;
    gmbranwar: TImage;
    gmbrBayu: TImage;
    gmbrDeniel: TImage;
    GmbrRias: TImage;
    BtKeluar: TButton;
    Gmbrgilang: TImage;
    procedure PilihAnggotaChange(Sender: TObject);
    procedure BtKeluarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPembuat: TFormPembuat;

implementation
uses XPman;

{$R *.dfm}

procedure TFormPembuat.PilihAnggotaChange(Sender: TObject);
{Form Yang digunakan untuk memilih menampilkan anggota
 sesuai pilihan user}
begin
  if PilihAnggota.Text = 'Anwar' Then         //jika dipilih Anwar
  begin                                       //maka
    LbNama.Caption := 'ANWAR HASDIAN LUBIS';  //LabelNama Menampilkan Anwar Hasdian Lubis
    LbKelas.caption := 'PIS-08-03';           //LabelKelas diisi PIS-08-03
    LbNim.caption := '30108109';              //LabelNim diisi 30108109
    LbJurusan.caption := 'Information System'; //LabelJurusan diisi Information System
    gmbrgilang.hide;
    gmbranwar.show;      //Menampilkan gambar anwar, gambar yang lainnya disembunyikan
    gmbrrias.Hide;
    gmbrdeniel.Hide;
    gmbrbayu.Hide;
  end
  else if PilihAnggota.Text = 'Bayu' Then
  begin
  {Penjelasan coding dibawah ini sama dengan penjelasan diatas}
    LbNama.caption := 'BAYU AGUS ALFIAN';
    LbKelas.caption := 'PIS-08-03';
    LbNim.caption := '30108354';
    LbJurusan.caption := 'Information System';
    gmbrbayu.Show;
    gmbranwar.hide;
    gmbrdeniel.Hide;
    gmbrrias.Hide;
    gmbrgilang.Hide;
  end
  else if PilihAnggota.Text = 'Deniel' Then
  begin
  {Penjelasan coding dibawah ini sama dengan penjelasan diatas}
    LbNama.caption := 'DENIEL ARIESTA ARIEZONA';
    LbKelas.caption := 'PIS-08-03';
    LbNim.caption := '30108373';
    LbJurusan.caption := 'Information System';
    gmbranwar.hide;
    gmbrbayu.Hide;
    gmbrgilang.Hide;
    gmbrdeniel.show;
    gmbrrias.Hide;
  end
  else if pilihAnggota.Text = 'Gilang' Then
  begin
  {Penjelasan coding dibawah ini sama dengan penjelasan diatas}
    LbNama.caption := 'GILANG PALITO';
    LbKelas.caption := 'PIS-08-03';
    LbNim.caption := '30108216';
    LbJurusan.caption := 'Information System';
    gmbranwar.Hide;
    gmbrdeniel.Hide;
    gmbrrias.Hide;
    gmbrbayu.Hide;
    gmbrgilang.Show;
  end
  else if PilihAnggota.Text = 'Rias' Then
  begin
  {Penjelasan coding dibawah ini sama dengan penjelasan diatas}
    LbNama.caption := 'RIAS JEIHAN';
    LbKelas.caption := 'PIS-08-03';
    LbNim.caption := '30108092';
    LbJurusan.caption := 'Information System';
    gmbrrias.Show;
    gmbranwar.Hide;
    gmbrgilang.Hide;
    gmbrdeniel.Hide;
    gmbrbayu.Hide;
  end;
end;

procedure TFormPembuat.BtKeluarClick(Sender: TObject);
{prosedur yang digunakan saat tombol keluar ditekan}
var konfirmasi : integer; //variabel untuk memunculkan pesan dialog
begin
  {Variabel diisi dengan menampilkan pesan yang berjudul konfirmasi tutup
   dengan isi pesan, yakin mau keluar? }
  konfirmasi :=Application.MessageBox('Yakin Mau Keluar ?','Konfirmasi Tutup',
  MB_YESNO or MB_ICONQUESTION);
  if Konfirmasi=IdYes then //jika ditekan yes
  Close;                   //maka Keluar
end;

end.
