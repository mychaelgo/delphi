unit Unit5;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, Db, DBTables, Grids, DBGrids;

type
  TForm5 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    GroupBox1: TGroupBox;
    Edit7: TEdit;
    d: TTable;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    procedure Edit7KeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;

implementation

{$R *.DFM}

procedure TForm5.Edit7KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
if (d.FindKey([edit7.text])) then
begin
edit1.Text := d['kode'];
edit2.Text := d['nip'];
edit3.Text := d['jam_ke'];
edit4.Text := d['hari'];
end;
end;

procedure TForm5.BitBtn4Click(Sender: TObject);
begin
edit1.text:='';
edit2.text:='';
edit3.text:='';
edit4.text:='';
edit7.text:='';
end;

procedure TForm5.BitBtn1Click(Sender: TObject);
begin
with d do
begin
append;
fieldbyname('kode').asstring:=edit1.text;
fieldbyname('nip').asstring:=edit2.text;
fieldbyname('jam_ke').asstring:=edit3.text;
fieldbyname('hari').asstring:=edit4.text;
post;
refresh;
end;
end;

procedure TForm5.BitBtn3Click(Sender: TObject);
begin
d.delete;
end;

procedure TForm5.BitBtn2Click(Sender: TObject);
begin
with d do
begin
edit;
fieldbyname('kode').asstring:=edit1.text;
fieldbyname('nip').asstring:=edit2.text;
fieldbyname('jam_ke').asstring:=edit3.text;
fieldbyname('hari').asstring:=edit4.text;

refresh;
end;
end;

procedure TForm5.BitBtn5Click(Sender: TObject);
begin
close;
end;

end.
