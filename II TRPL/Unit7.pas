unit Unit7;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, Db, DBTables, Grids, DBGrids, ExtDlgs;

type
  TForm7 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Image1: TImage;
    GroupBox1: TGroupBox;
    Edit8: TEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    f: TTable;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    BitBtn6: TBitBtn;
    OpenPictureDialog1: TOpenPictureDialog;
    Edit5: TEdit;
    procedure FormActivate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure Edit8KeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form7: TForm7;

implementation

{$R *.DFM}

procedure TForm7.FormActivate(Sender: TObject);
begin
image1.Width :=105;
image1.Height :=105;
image1.Stretch := true;
end;

procedure TForm7.BitBtn1Click(Sender: TObject);
begin
with f do
begin
append;
fieldbyname('id_jurusan').asstring:=edit1.text;
fieldbyname('nama_pro').asstring:=edit2.text;
fieldbyname('profil').asstring:=edit3.text;
fieldbyname('ket').asstring:=edit4.text;
fieldbyname('foto_pro').asstring:=edit5.text;
post;
refresh;
end;
end;
procedure TForm7.BitBtn2Click(Sender: TObject);
begin
with f do
begin
edit;
fieldbyname('id_jurusan').asstring:=edit1.text;
fieldbyname('nama_pro').asstring:=edit2.text;
fieldbyname('profil').asstring:=edit3.text;
fieldbyname('ket').asstring:=edit4.text;
fieldbyname('foto_pro').asstring:=edit5.text;
refresh;
end;
end;
procedure TForm7.BitBtn3Click(Sender: TObject);
begin
f.delete;
end;

procedure TForm7.BitBtn4Click(Sender: TObject);
begin
edit1.text:='';
edit2.text:='';
edit3.text:='';
edit4.text:='';
edit8.text:='';
end;

procedure TForm7.BitBtn5Click(Sender: TObject);
begin
close;
end;

procedure TForm7.Edit8KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
if (f.FindKey([edit8.text])) then
begin
edit1.Text := f['kode'];
edit2.Text := f['nip'];
edit3.Text := f['jam_ke'];
edit4.text:=f['ket'] ;
edit5.text:=f['foto_pro'];
image1.Picture.LoadFromFile(edit5.text);
end;
end;

procedure TForm7.BitBtn6Click(Sender: TObject);
begin
openpicturedialog1.execute;
edit5.text := OpenPictureDialog1.filename;
image1.picture.loadfromfile(openpicturedialog1.filename);
image1.refresh;
end;

end.
