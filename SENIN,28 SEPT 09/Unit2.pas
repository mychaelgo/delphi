unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm2 = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
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
  Form2: TForm2;

implementation

uses Unit1;

{$R *.dfm}

procedure TForm2.FormCreate(Sender: TObject);
begin
EDIT1.Text:='';
FORM2.Show
end;

procedure TForm2.Button1Click(Sender: TObject);
begin
IF EDIT1.TEXT='DANANG' THEN
BEGIN
FORM1.INPUT1.ENABLED:=TRUE;
FORM1.LAPORAN1.ENABLED:=TRUE;
FORM1.LOGOUT1.ENABLED:=TRUE;
FORM1.MASUK1.Enabled:=TRUE;

FORM1.PASSWORD1.Enabled:=FALSE;
FORM1.KELUARAPLIKASI1.Enabled:=FALSE;

FORM2.Hide;
FORM1.Show

END ELSE BEGIN

SHOWMESSAGE('PASSWORD SALAH');
EDIT1.TEXT:='';

END;
END;
procedure TForm2.Button2Click(Sender: TObject);
begin
FORM2.Hide;
FORM1.Show;

FORM1.MASUK1.Enabled:=TRUE;
FORM1.LOGOUT1.Enabled:=FALSE;

end;

end.
