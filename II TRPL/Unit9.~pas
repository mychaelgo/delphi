unit Unit9;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, Db, DBTables, Grids, DBGrids;

type
  TForm9 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    GroupBox1: TGroupBox;
    Edit7: TEdit;
    h: TTable;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure Edit7KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form9: TForm9;

implementation

{$R *.DFM}

procedure TForm9.BitBtn5Click(Sender: TObject);
begin
close;
end;

procedure TForm9.BitBtn1Click(Sender: TObject);
begin
with h do
begin
append;
fieldbyname('id_jurusan').asstring := edit1.text;
fieldbyname('nama_jurusan').asstring := edit2.text;
post;
end
end;

procedure TForm9.BitBtn2Click(Sender: TObject);
begin
h.edit;
edit1.text :=h['id_jurusan'];
edit1.text :=h['nama_jurusan'];
h.refresh;
end;

procedure TForm9.BitBtn3Click(Sender: TObject);
begin
h.delete;
end;

procedure TForm9.BitBtn4Click(Sender: TObject);
begin
edit1.text:='';
edit2.text:='';
edit7.text:='';
end;

procedure TForm9.Edit7KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
if (h.FindKey([edit7.text])) then
begin
edit1.Text := h['id_jurusan'];
edit2.Text := h['nama_jurusan'];
end;
end;

end.
