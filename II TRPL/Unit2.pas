unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, StdCtrls, Buttons, ExtCtrls, ExtDlgs, DBTables, Grids, DBGrids;

type
  TForm2 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Edit3: TEdit;
    Edit4: TEdit;
    ComboBox1: TComboBox;
    Edit5: TEdit;
    ComboBox2: TComboBox;
    Edit6: TEdit;
    Edit7: TEdit;
    GroupBox1: TGroupBox;
    Edit8: TEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    OpenPictureDialog1: TOpenPictureDialog;
    a: TTable;
    Image1: TImage;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    Edit9: TEdit;
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure Edit8KeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.DFM}

procedure TForm2.BitBtn6Click(Sender: TObject);
begin
openpicturedialog1.execute;
edit9.text := OpenPictureDialog1.filename;
image1.picture.loadfromfile(openpicturedialog1.filename);
image1.refresh;
end;

procedure TForm2.BitBtn5Click(Sender: TObject);
begin
close;
end;

procedure TForm2.FormActivate(Sender: TObject);
begin
image1.Width :=105;
image1.Height :=105;
image1.Stretch := true;
end;

procedure TForm2.BitBtn1Click(Sender: TObject);
begin
with a do
begin
append;
fieldbyname('nip').asstring :=edit1.Text;
fieldbyname('kode_matpel').asstring :=edit2.Text;
fieldbyname('nama_guru').asstring :=edit3.Text;
fieldbyname('alamat_guru').asstring :=edit4.Text;
fieldbyname('jenis_kelamin').asstring :=combobox1.Text;
fieldbyname('jabatan').asstring :=combobox2.Text;
fieldbyname('status').asstring :=edit5.Text;
fieldbyname('ttl_guru').asstring :=edit6.Text;
fieldbyname('agama').asstring :=edit7.Text;
fieldbyname('foto_guru').asstring :=edit9.text;
post;
a.refresh;
end
end;

procedure TForm2.Edit8KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13then
if (a.FindKey([edit8.text])) then
begin
edit1.Text := a['nip'];
edit2.Text := a['kode_matpel'];
edit3.Text := a['nama_guru'];
edit4.Text := a['alamat_guru'];
combobox1.Text := a['jenis_kelamin'];
edit5.Text := a['jabatan'];
combobox2.Text := a['status'];
edit6.Text := a['ttl_guru'];
edit7.Text := a['agama'];
edit9.text := a['foto_guru'];
image1.Picture.LoadFromFile(edit9.text);
end
end;

procedure TForm2.BitBtn2Click(Sender: TObject);
begin
a.edit;
a['nip']:=edit1.Text;
a['kode_matpel']:=edit2.Text;
a['nama_guru']:=edit3.Text;
a['alamat_guru']:=edit4.Text;
a['jenis_kelamin']:=combobox1.Text;
a['jabatan']:=edit5.Text;
a['status']:=combobox2.Text;
a['ttl_guru']:=edit6.Text;
a['agama']:=edit7.Text;
a['foto_guru']:=edit9.Text;
a.refresh;
end;



end.
