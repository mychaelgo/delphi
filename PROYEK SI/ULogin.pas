unit ULogin;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, ADODB, ExtCtrls;

type
  TFrmLogin = class(TForm)
    nama: TEdit;
    password: TEdit;
    BtMasuk: TButton;
    ADOQuery1: TADOQuery;
    ADOConnection1: TADOConnection;
    Image1: TImage;
    BtBatal: TButton;
    procedure BtMasukClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BtBatalClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmLogin: TFrmLogin;

implementation
uses
// XPMan agar tampilan form seperti button mengikuti theme pada windows
// Tambahkan unit UHasilLogin ke ULogin dengan menekan Alt + F11, atau dengan mengetiknya saja

  XPMan, Unit2, UPemilihanLogIn;

{$R *.dfm}

procedure TFrmLogin.FormCreate(Sender: TObject);
var
  tempatDB : WideString;    //variabel untuk diisi alamat/directori
                            //database(nama database)
begin
  // mengatur koneksi pada ADOConnection
  // Menghubungkan dengan database dimanapun directory database berada
  tempatDB := ExtractFilePath(Application.ExeName) + 'perpustakaan.mdb';
  with ADOConnection1 do begin
    Connected := False;
    LoginPrompt := False;         //login database tidak diaktifkan
    Mode := cmShareDenyNone;
    //Menghubungkan dengan database(access) menggunakan ADO
    ConnectionString := 'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=' +
    tempatDB + ';Persist Security Info=False';
  end;
  ADOConnection1.Connected := True;   //coonect dengan database
end;

procedure TFrmLogin.BtMasukClick (Sender: TObject);
begin
  with ADOQuery1 do begin
    Close;
    SQL.Clear; // bersihkan perintah sql jika ada
    SQL.Add('select * from pegawai where username='+
    QuotedStr(nama.Text)); 
    Open;
  end; // end with

  // jika tidak ditemukan data yang dicari maka tampilkan pesan

  if ADOQuery1.RecordCount = 0 then
    begin
      Application.MessageBox('Maaf, username tersebut tidak ada', 'Information',
      mb_OK or MB_ICONINFORMATION);
      nama.SetFocus;   //menempatkan kursor pada nama
    end
  else begin
    //jika password input dengan nama tidak sama dengan yang ada dalam database
    if ADOQuery1.FieldByName('password').AsString <> password.Text
      then
      begin
        //menampilkan pesan Gagal
        Application.MessageBox ('Password Salah','Gagal',Mb_OK or MB_ICONERROR);
        password.SetFocus;
      end
  else begin
    Hide;       //formLogin disembunyikan
    FormInterfaceAwal.Show;       //Forminterface awal (menu utama) ditampilkan
    //menampilkan nama user dengan mengisi label1 pada forminterfaceawal
    //dengan nama inputan user
    FormInterfaceAwal.Label1.Caption := nama.Text + ' !!';
    nama.text:='';
    password.Text :='';
    end
  end;

end;


procedure TFrmLogin.BtBatalClick(Sender: TObject);
begin
  //Nama dikosongi
  nama.Text:='';
  //password dikosongi (kembali kosong seperti saat awal)
  password.Text :='';
  //FormLogin disembunyikan
  Hide;
  //menampilkan FormPemilihan LogIn
  FormPemilihanLogIn.Show;
end;

end.
