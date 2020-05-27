unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids, DBGrids, StdCtrls;

type
  TForm3 = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    DBGrid1: TDBGrid;
    Label5: TLabel;
    DataSource1: TDataSource;
    Table1: TTable;
    Button4: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);



  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}

procedure TForm3.Button1Click(Sender: TObject);
var
nilai1,nilai2,nilai3,hasil:single;
kode:integer;
Nhasil:string[30];

begin

val(edit2.Text,nilai1,kode);
val(edit3.Text,nilai2,kode);
val(edit4.Text,nilai3,kode);

hasil:=(nilai1 + nilai2)* nilai3;
str(hasil:1:0,Nhasil);
edit5.Text:= Nhasil

end;

procedure TForm3.Button2Click(Sender: TObject);
begin
table1.Append;
table1['no_urut']:=edit1.Text;
table1['nilai1']:=edit2.Text;
table1['nilai2']:=edit3.Text;
table1['nilai3']:=edit4.Text;
table1['hasil']:=edit5.Text;
table1.Refresh;
end;

procedure TForm3.Button3Click(Sender: TObject);
begin
table1.Delete;
end;

procedure TForm3.Button4Click(Sender: TObject);
begin
if table1.FindKey([edit1.Text])=false then
showmessage ('no_urut')
else
begin
edit1.Text:=table1['no_urut'];
edit2.Text:=table1['nilai1'];
edit3.Text:=table1['nilai2'];
edit4.Text:=table1['nilai3'];
edit5.Text:=table1['hasil'];
end
end;

end.
