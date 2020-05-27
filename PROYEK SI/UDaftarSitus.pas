unit UDaftarSitus;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ASLink, StdCtrls, ExtCtrls, ComCtrls;

type
  TFormSitus = class(TForm)
    GroupBox1: TGroupBox;
    DaftarSitus: TComboBox;
    Label1: TLabel;
    Panel1: TPanel;
    Label2: TLabel;
    EdSitus: TEdit;
    Panel2: TPanel;
    BtGo: TButton;
    Panel3: TPanel;
    BtTulis: TButton;
    Animate1: TAnimate;
    BtBatal: TButton;
    BtKeluar: TButton;
    Label3: TLabel;
    EdGoogle: TEdit;
    PilihCaraTulis: TRadioGroup;
    procedure DaftarSitusClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BtTulisClick(Sender: TObject);
    procedure BtGoClick(Sender: TObject);
    procedure BtBatalClick(Sender: TObject);
    procedure BtKeluarClick(Sender: TObject);
    procedure PilihCaraTulisClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormSitus: TFormSitus;

implementation
uses XPman, shellapi,comobj;
//shellapi dan comobj digunakan untuk menghubungkan dengan
//browser yang sedang aktif pada komputer dan terhubung dengan internet

{$R *.dfm}

procedure aktif(sobjectpath :string);
{prosedure yang menggunakan Shellapi dan comobj
 untuk mengaktifkan browser default, parameter sobjectpath digunakan
 untuk menerima kiriman parameter dari prosedur lain}
begin
  shellexecute(0,nil,pchar(sobjectpath),nil,nil,SW_NORMAL);
end;

procedure TFormSitus.DaftarSitusClick(Sender: TObject);
begin
  case daftarsitus.ItemIndex of
  0 : aktif('www.yahoo.com');      //memanggil prosedure aktif dan www.yahoo.com sebagai parameter
  1 : aktif('www.google.com');
  2 : aktif('www.ilmukomputer.com');
  3 : aktif('www.wikipedia.com');
  4 : aktif('www.youtube.com');
  5 : aktif('www.babaflash.com');
  6 : aktif('www.belajardelphi.com');
  7 : aktif('www.otodidak.info');
  8 : aktif('www.delphiarea.com');
  9 : aktif('www.biorust.com');
  10: aktif('www.ebsoft.web.id');
  11: aktif('www.delphibasic.com');
  12: aktif('www.motivasiku.co.cc');
  13: aktif('www.wandah.com');
  end;  //end case
end;

procedure TFormSitus.FormCreate(Sender: TObject);
//prosedur yang aktif saat pertama kali form muncul
begin
  EdGoogle.Enabled := false;           //menonaktifkan EdGoogle
  EdGoogle.Color := clMenuBar;         //Merubah warna EdGoogele untuk memberi kesan nonaktif
  PilihCaraTulis.Enabled := False;     //PilihCaraTulis nonaktif
  BtBatal.Enabled := false;            //Tombol Batal nonaktif
  EdSitus.Enabled := false;            //EdSitus NonAktif
  EdSitus.Color := clMenuBar;          //merubah warna EdSitus, memberikesan nonaktif
  BtGo.Enabled := false;               //Tombol Go nonaktif
  animate1.Active := true;             //menjalankan animasi
end;

procedure TFormSitus.BtTulisClick(Sender: TObject);
{prosedur saat tombol tulis ditekan}
begin
  //PilihCaraTulis tidak ada yang terisi
  PilihCaraTulis.ItemIndex := -1;
  //PilihCaraTulis aktif
  PilihCaraTulis.Enabled := true;
  //EdSitus nonaktif
  EdSitus.Enabled := false;
  //Mengubah warna Edsitus
  EdSitus.Color:=ClMenuBar;
  //EdGoogle aktif
  EdGoogle.Enabled := false;
  //Merubah warna EdGoogle, memberi kesan aktif
  EdGoogle.Color := ClMenuBar;
  //tombol Go aktif
  BtGo.Enabled := true;
  //Tombol Batal aktif
  BtBatal.Enabled  :=true;
end;

procedure TFormSitus.BtGoClick(Sender: TObject);
//prosedure saat tombol Go ditekan
var alamat : String;    //variabel untuk diisi alamat situs tujuan
begin
//jika pilihcaratulis Terilih pilhan pertama maka
if pilihcaratulis.ItemIndex =0 then
begin
    //jika EdSitus tidak diisi
   if (EdSitus.Text = '') or (EdSitus.Text[1] = ' ') then
   begin
     //muncul pesan dialog gagal
     application.MessageBox('Isi Dulu Alamat Web Yang Akan Dituju','Gagal',MB_OK or MB_ICONERROR);
   end
   else
   begin
     aktif(edSitus.Text );  //memanggil prosedure aktif dan mengirim yang tertulis
                            //pada Edsitus untuk dikirim sebagai parameter
     EdSitus.Text := '';    //EdSitus dibersihkan
   end;
end
//jika PilihCaraTulis dipilih pilihan ke dua
else if PilihCaraTulis.ItemIndex =1 then
  begin
    //jika EdGoogle kosong maka
    if (EdGoogle.Text = '') or (EdGoogle.Text[1] =' ') then
    begin
      //muncul pesan dialog gagal
      application.messagebox('Isi Dulu Yang Akan Dicari','Error',MB_OK or MB_ICONERROR);
    end
    else    //jika edsitus telah terisi
    begin
      //mengisi variabel alamat dengan alamat pencarian dari google
      //yang ditambah dengan yang ditulis pengguna pada EdGoogle
      alamat :='www.google.co.id/search?q='+EdGoogle.Text;
      aktif(alamat);    //memanggil prosedur aktif dan menggunakan
                        //alamat sebagai parameter kiriman
      EdGoogle.Text := '';  //membersihkan tulisan pada EdGoogle
    end;
  end;
end;

procedure TFormSitus.BtBatalClick(Sender: TObject);
{prosedure jika tombol batal ditekan}
begin
  //PilihCaraTulis Kosong
  PilihCaraTulis.ItemIndex := -1;
  //EdGoogle TIdak aktif
  EdGoogle.Enabled := false;
  //Warna EdGoogle Dirubah menjadi seperti warna tidak aktif
  EdGoogle.Color := clMenuBar;
  //EdGoogle Tidak aktif
  PilihCaraTulis.Enabled := False;
  //EdSitus tidak aktif
  EdSitus.Enabled := false;
  //Warna EdSitus menjadi warna seeperti warna tidak aktif
  EdSitus.Color:=ClMenuBar;
  //Tombol Go tidak aktif
  BtGo.Enabled := false;
  //EdSitus kosong(tidak ada tulisan)
  EdSitus.Text := '';
end;

procedure TFormSitus.BtKeluarClick(Sender: TObject);
{Prosedur saat ditekan tombol Keluar}
var konfirmasi : integer;
begin
  konfirmasi := application.MessageBox('Yakin Mau Keluar ?','Konfirmasi',MB_YESNO or MB_ICONQUESTION);
  if konfirmasi = idyes then //jika tekan yes maka
  close;                     //Keluar
end;

procedure TFormSitus.PilihCaraTulisClick(Sender: TObject);
{Prosedur yang aktif untuk pemilihan cara Tulis situs}
begin
  //jika pilihCaraTulis Dipilih yang pertama
  if PilihCaraTulis.ItemIndex = 0 then
    begin
      EdSitus.Enabled := true;     //EdSitus Aktif
      Edsitus.color :=clWindow;
      EdGoogle.Enabled := false;
      EdGoogle.Color:=ClMenuBar;
      EdGoogle.Text := '';
    end
   else if PilihCaraTulis.ItemIndex =1 then
    begin
      Edsitus.Enabled := false;
      EdSitus.Color := clMenubar;
      EdGoogle.Enabled := true;
      EdGoogle.Color:=ClWindow;
      EdGoogle.Text := '';
    end;
end;

end.
