unit Unit6;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, Db, DBTables, Grids, DBGrids;

type
  TForm6 = class(TForm)
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
    Edit4: TEdit;
    e: TTable;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure Edit4KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form6: TForm6;

implementation

{$R *.DFM}

procedure TForm6.BitBtn5Click(Sender: TObject);
begin
close;
end;

procedure TForm6.BitBtn1Click(Sender: TObject);
begin
with e do
begin
fieldbyname('kode').asstring := edit1.text;
fieldbyname('ket').asstring := edit1.text;
e.refresh;
end
end;

procedure TForm6.BitBtn2Click(Sender: TObject);
begin
e.edit;
edit1.text := e['kode'];
edit2.text := e['ket'];
end;

procedure TForm6.BitBtn3Click(Sender: TObject);
begin
e.delete;
end;

procedure TForm6.BitBtn4Click(Sender: TObject);
begin
edit1.text :='';
edit2.text :='';
edit4.text :='';
end;

procedure TForm6.Edit4KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
if (e.FindKey([edit4.text])) then
begin
edit1.Text := e['kode'];
edit2.Text := e['keterangan'];

end;
end;

end.
