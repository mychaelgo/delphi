unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, Db, DBTables, Grids, DBGrids;

type
  TForm3 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    GroupBox1: TGroupBox;
    Edit4: TEdit;
    b: TTable;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure Edit4KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.DFM}

procedure TForm3.BitBtn1Click(Sender: TObject);
begin
with b do
begin
append;
fieldbyname('kode_matpel').asstring :=edit1.text;
fieldbyname('nip').asstring :=edit2.text;
fieldbyname('nama_guru').asstring :=edit3.text;
post;
end
end;

procedure TForm3.BitBtn5Click(Sender: TObject);
begin
close;
end;

procedure TForm3.BitBtn4Click(Sender: TObject);
begin
edit1.text := '';
edit2.text := '';
edit3.text := '';
edit4.text := '';

end;

procedure TForm3.BitBtn2Click(Sender: TObject);
begin
b.edit;
b['kode_matpel']:=edit1.text;
b['nip']:=edit2.text;
b['nama_guru']:=edit3.text;
end;

procedure TForm3.BitBtn3Click(Sender: TObject);
begin
b.delete;
end;

procedure TForm3.Edit4KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
if (b.FindKey([edit4.text])) then
begin
edit1.Text := b['kode_matpel'];
edit2.Text := b['nip'];
edit3.Text := b['nama_guru'];
end
end;
end.
