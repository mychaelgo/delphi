unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
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
EDIT1.Text:='';
EDIT2.Text:='';
EDIT3.Text:='';
EDIT4.Text:='';
end;

procedure TForm1.Button1Click(Sender: TObject);
VAR
NILAI1,NILAI2,NILAI3,HASIL:SINGLE;
KODE:INTEGER;
NHASIL:STRING[5];
begin
VAL(EDIT3.Text,NILAI1,KODE);
VAL(EDIT2.Text,NILAI2,KODE);
VAL(EDIT1.Text,NILAI3,KODE);

HASIL:=(NILAI3+NILAI2)*NILAI1;
STR(HASIL:1:0,NHASIL);
EDIT4.Text:=NHASIL;

end;

procedure TForm1.Button2Click(Sender: TObject);
begin
APPLICATION.Terminate
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
EDIT1.Text:='';
EDIT2.Text:='';
EDIT3.Text:='';
EDIT4.Text:='';
end;

end.
