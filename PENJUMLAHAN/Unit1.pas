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
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Button1: TButton;
    Button2: TButton;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
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
EDIT1.TEXT:='';
EDIT2.Text:='';
EDIT3.Text:='';

end;

procedure TForm1.Button1Click(Sender: TObject);
var
nilai1,nilai2,hasil:single;
kode:integer;
nhasil:string[30];

begin
val(edit1.text,nilai1,kode);
val(edit2.text,nilai2,kode);

hasil:=nilai1+nilai2;
str(hasil:1:0,nhasil);
edit3.text:=nhasil;


end;

procedure TForm1.Button2Click(Sender: TObject);
begin
APPLICATION.Terminate
end;

end.
