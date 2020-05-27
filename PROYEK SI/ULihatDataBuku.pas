unit ULihatDataBuku;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, ExtCtrls, StdCtrls, DB, ADODB, DBCtrls;

type
  TFormLihatDataBuku = class(TForm)
    ADOConnection1: TADOConnection;
    TabelBuku: TADOTable;
    DataSource1: TDataSource;
    Panel1: TPanel;
    DBNavigator1: TDBNavigator;
    Panel2: TPanel;
    BtKeluar: TButton;
    Panel3: TPanel;
    DBGrid1: TDBGrid;
    Memo1: TMemo;
    Panel4: TPanel;
    EdCari: TEdit;
    Label1: TLabel;
    PilihCariDari: TRadioGroup;
    Panel5: TPanel;
    BtCari: TButton;
    procedure BtKeluarClick(Sender: TObject);
    procedure BtCariClick(Sender: TObject);
    procedure PilihCariDariClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormLihatDataBuku: TFormLihatDataBuku;
  caridari : String;  //variabel global digunakan untuk mencari data dari yang
                      //dibutuhkan user

implementation

uses UTambahBuku,XPman;
{XPman digunakan untuk merubah tampilan form mengikuti tema XP yang sedang aktif}
{$R *.dfm}

procedure TFormLihatDataBuku.BtKeluarClick(Sender: TObject);
{prosedur yang aktif saat Tombol keluar ditekan}
var konfirmasi : integer; {Variabel penampil pesan dialog}
begin
  {variabel diisi dengan pesan yang mau ditampilkan}
  konfirmasi :=Application.MessageBox('Yakin Mau Keluar ?','Konfirmasi Tutup',
  MB_YESNO or MB_ICONQUESTION);
  if Konfirmasi=IdYes then  //jika ditekan yes
  Close;                    //maka keluar dari form lihat data buku
end;

procedure TFormLihatDataBuku.BtCariClick(Sender: TObject);
//prosedur yang aktif saat ditekan tombol cari
begin
  If edcari.Text = '' then     //jika EdCari tidak diisi
    Application.MessageBox('Isi dulu yang mau dicari', 'Gagal', MB_ok or Mb_IconError)

  //locate digunakan untuk Mencari data Yang dimasukkan user pada EdCari
  //Pada database yang nama fieldnya berasal dari variabel caridari
  else if TabelBuku.Locate(caridari,Edcari.Text , [loCaseInsensitive, loPartialKey]) = True then
        Application.MessageBox ('Menemukan data dalam tabel Pegawai','Data Ditemukan',MB_OK or MB_iconinformation)
  else
        Application.MessageBox ('Tidak menemukan data dalam tabel Pegawai','Data Tidak Ditemukan',Mb_ok or MB_iconInformation);

end;

procedure TFormLihatDataBuku.PilihCariDariClick(Sender: TObject);
begin
  if PilihCariDari.ItemIndex =0 then
  begin
    caridari := 'NoBuku';       //mencari data berdasarkan NoBuku dalam database
    EdCari.Enabled := True;     //EdCari aktif
    EdCari.Color:= clWindow;    //EdCari dirubah warnanya seperti warna aktif
    BtCari.Enabled := True;     //Tombol Cari aktif
  end
  else if PilihCariDari.ItemIndex =1 then
  begin
    caridari := 'JudulBuku';    //mencari data berdasarkan JusulBuku dalam database
    EdCari.Enabled := True;
    EdCari.Color:= clWindow;
    BtCari.Enabled :=true;
  end;
end;

procedure TFormLihatDataBuku.FormCreate(Sender: TObject);
begin
  EdCari.Enabled := False;    //EdCari tidak aktif
  EdCari.Color:= clMenubar;   //EdCari dirubah warnanya
  BtCari.Enabled :=false;    //tombol cari tidak aktif
end;

end.
