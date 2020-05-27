unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, DBTables, Grids, DBGrids;

type
  TForm3 = class(TForm)
    Table1: TTable;
    DataSource1: TDataSource;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Button1: TButton;
    DBGrid1: TDBGrid;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    procedure FormCreate(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

uses Unit2, Unit1;

{$R *.dfm}

procedure TForm3.FormCreate(Sender: TObject);
begin
EDIT1.Text:='';
EDIT2.Text:='';
EDIT3.Text:='';
EDIT4.Text:='';
EDIT5.Text:='';

end;

procedure TForm3.Button6Click(Sender: TObject);
begin
FORM2.HIDE;
FORM3.Hide;
FORM1.SHOW;

FORM1.LOGOUT1.ENABLED:=TRUE;

FORM1.KELUARAPLIKASI1.ENABLED:=FALSE;
FORM1.INPUT1.ENABLED:=FALSE;
FORM1.LAPORAN1.ENABLED:=FALSE;
FORM1.PASSWORD1.ENABLED:=FALSE;

END;
procedure TForm3.Button4Click(Sender: TObject);
begin
IF TABLE1.FindKey([EDIT1.TEXT]) =FALSE THEN
SHOWMESSAGE('DATA TIDAK ADA')
ELSE
BEGIN
EDIT1.Text:=TABLE1['KODE'];
EDIT2.Text:=TABLE1['NILAI1'];
EDIT3.Text:=TABLE1['NILAI2'];
EDIT4.Text:=TABLE1['NILAI3'];
EDIT5.Text:=TABLE1['HASIL'];

end;
END;
procedure TForm3.Button3Click(Sender: TObject);
begin
TABLE1.Delete;
end;

procedure TForm3.Button2Click(Sender: TObject);
begin
TABLE1.Append;
TABLE1['KODE']:=EDIT1.Text;
TABLE1['NILAI1']:=EDIT2.Text;
TABLE1['NILAI2']:=EDIT3.Text;
TABLE1['NILAI3']:=EDIT4.Text;
TABLE1['HASIL']:=EDIT5.Text;
TABLE1.Refresh;

EDIT1.Text:='';
EDIT2.Text:='';
EDIT3.Text:='';
EDIT4.Text:='';
EDIT5.Text:='';
EDIT1.SetFocus;
end;

procedure TForm3.Button1Click(Sender: TObject);
VAR
NILAI1,NILAI2,NILAI3,HASIL:SINGLE;
KODE:INTEGER;
NHASIL:STRING[20];

begin

VAL(EDIT2.Text,NILAI1,KODE);
VAL(EDIT3.Text,NILAI2,KODE);
VAL(EDIT4.Text,NILAI3,KODE);
HASIL:=NILAI1+NILAI2+NILAI3;
STR(HASIL:1:0,NHASIL);
EDIT5.Text:=NHASIL;
end;

procedure TForm3.Button5Click(Sender: TObject);
begin
TABLE1.Edit;
TABLE1['KODE']:=EDIT1.Text;
TABLE1['NILAI1']:=EDIT2.Text;
TABLE1['NILAI2']:=EDIT3.Text;
TABLE1['NILAI3']:=EDIT4.Text;
TABLE1['HASIL']:=EDIT5.Text;
end;

procedure TForm3.Button7Click(Sender: TObject);
begin
EDIT1.Text:='';
EDIT2.Text:='';
EDIT3.Text:='';
EDIT4.Text:='';
EDIT5.Text:='';
end;

end.
