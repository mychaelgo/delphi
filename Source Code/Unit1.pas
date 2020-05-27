unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, DB, ADODB, ExtCtrls, DBCtrls;

type
  TForm1 = class(TForm)
    query: TADOQuery;
    con: TADOConnection;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    Button1: TButton;
    Label1: TLabel;
    Button2: TButton;
    DBNavigator1: TDBNavigator;
    Edit1: TEdit;
    Button3: TButton;
    Query1: TADOQuery;
    procedure FormCreate(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
  { Public declarations }
  Procedure delete;
  procedure show;
  end;

var
  Form1: TForm1;

implementation

uses Unit2;

{$R *.dfm}
procedure TForm1.delete;
Begin
if messagedlg('yakin akan menghaspus record ini?',mtconfirmation,
              [mbYes,mbCancel],0)=mrYes then
begin
con.BeginTrans;
with query1 do begin
sql.Clear;
sql.Text:='delete from country where name=:parName';
parameters.ParamByName('parName').Value:=query.fieldbyname('name').AsString;
execsql;
end;
query.Requery();
con.CommitTrans;
end;
end;

Procedure TForm1.show;
Begin
with query do begin
sql.clear;//menghapus query yang masih ada jika ada
sql.Text:='select * from country order by Name asc';
open;//membuka query
end;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
con.connected:=true;
Show;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
if edit1.Text='' then
show else
with query do begin
sql.Clear;
sql.Text:='select* from country where name like'+quotedstr('%'+Edit1.Text+'%');
open;
end;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
form2.showmodal;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
delete;
end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
con.Connected:=false;
end;

end.
