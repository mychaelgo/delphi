unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, DB, DBTables, StdCtrls, Buttons;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    DataSource1: TDataSource;
    Table1: TTable;
    DBGrid1: TDBGrid;
    Button1: TBitBtn;
    Button2: TBitBtn;
    BitBtn1: TBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
begin
  edit1.Text:='';
  Edit2.Text:='';
  ComboBox1.Text:='';
  ComboBox2.Text:='';
  ComboBox1.Items.Append('1');
  ComboBox1.Items.Append('2');
  ComboBox1.Items.Append('3');
  ComboBox2.Items.Append('TRPL');
  ComboBox2.Items.Append('TKJ');
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  Table1.Append;
  Table1['Nisn']:=edit1.Text;
  Table1['Nama']:=Edit2.Text;
  Table1['Kelas']:=ComboBox1.Text;
  Table1['Jurusan']:=ComboBox2.Text;
  Table1.Refresh;
  edit1.Text:='';
  Edit2.Text:='';
  ComboBox1.Text:='';
  ComboBox2.Text:='';
  edit1.SetFocus;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  Table1.Delete;
end;

procedure TForm1.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
    if Table1.Findkey([Edit1.Text])=false then
      ShowMessage('Nisn Tidak Ada')
    else
      begin
        edit1.Text:=Table1['Nisn'];
        edit2.Text:=Table1['Nama'];
        ComboBox1.Text:=Table1['Kelas'];
        ComboBox2.Text:=Table1['Jurusan'];
      end
end;

procedure TForm1.BitBtn1Click(Sender: TObject);
begin
  Table1.Edit;
  table1['Nisn']:=edit1.Text;
  Table1['Nama']:=edit2.Text;
  Table1['Kelas']:=ComboBox1.Text;
  Table1['Jurusan']:=ComboBox2.Text;
end;

end.
