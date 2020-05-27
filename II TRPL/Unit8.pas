unit Unit8;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, Db, DBTables, Grids, DBGrids;

type
  TForm8 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    ComboBox1: TComboBox;
    Edit4: TEdit;
    ComboBox2: TComboBox;
    Edit5: TEdit;
    Image1: TImage;
    GroupBox1: TGroupBox;
    Edit8: TEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    g: TTable;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    BitBtn6: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure Edit8KeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form8: TForm8;

implementation

{$R *.DFM}

procedure TForm8.BitBtn1Click(Sender: TObject);
begin
with g do
begin
append;
fieldbyname('no_induk').asstring:=edit1.text;
fieldbyname('id_jurusan').asstring:=edit2.text;
fieldbyname('nama_siswa').asstring:=edit3.text;
fieldbyname('kelamin').asstring:=combobox1.text;
fieldbyname('ttl').asstring:=edit4.text;
fieldbyname('agama').asstring:=combobox2.text;
fieldbyname('alamat').asstring:=edit5.text;
post;
refresh;
end;
end;

procedure TForm8.BitBtn2Click(Sender: TObject);
begin
with g do
begin
edit;
fieldbyname('no_induk').asstring:=edit1.text;
fieldbyname('id_jurusan').asstring:=edit2.text;
fieldbyname('nama_siswa').asstring:=edit3.text;
fieldbyname('kelamin').asstring:=combobox1.text;
fieldbyname('ttl').asstring:=edit5.text;
fieldbyname('agama').asstring:=combobox2.text;
fieldbyname('alamat').asstring:=edit5.text;
refresh;
end;
end;

procedure TForm8.BitBtn3Click(Sender: TObject);
begin
g.delete;
end;

procedure TForm8.BitBtn4Click(Sender: TObject);
begin
edit1.text:='';
edit2.text:='';
edit3.text:='';
edit4.text:='';
edit5.text:='';
combobox1.text:='';
combobox2.text:='';
end;

procedure TForm8.Edit8KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
if (g.FindKey([edit8.text])) then
begin
edit1.Text := g['no_induk'];
edit2.Text := g['id_jurusan'];
edit3.Text := g['nama_siswa'];
combobox1.text:=g['kelamin'] ;
edit4.text:=g['ttl'] ;
combobox2.text:=g['agama'] ;
edit5.text:=g['alamat_siswa'] ;
end;
end;

procedure TForm8.BitBtn5Click(Sender: TObject);
begin
close;
end;

end.
