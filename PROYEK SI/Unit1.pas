unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TFormTambahKelas = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    TambahKelas: TEdit;
    Panel2: TPanel;
    Button1: TButton;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTambahKelas: TFormTambahKelas;

implementation

uses UTambahAnggota;

{$R *.dfm}

procedure TFormTambahKelas.Button1Click(Sender: TObject);
begin
  //FormTambahAnggota.ComboBox1.Items.Add(tambahKelas.text);
  FormTambahAnggota.ComboBox1.Items.SaveToFile('Kelas');  //menyimpan ke dalam file
  tambahkelas.Text := '';
  application.MessageBox('Kelas Sudah Terinput','Tambah Kelas',mB_OK or MB_Iconinformation);
  close;
end;

procedure TFormTambahKelas.Button2Click(Sender: TObject);
begin
  close;
end;

end.
