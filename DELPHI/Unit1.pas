unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus;

type
  TForm1 = class(TForm)
    MainMenu1: TMainMenu;
    MASUK1: TMenuItem;
    PASSWORD1: TMenuItem;
    LOGOUT1: TMenuItem;
    KELUARAPLIKASI1: TMenuItem;
    INPUT1: TMenuItem;
    DATASISWA1: TMenuItem;
    LAPORAN1: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure KELUARAPLIKASI1Click(Sender: TObject);
    procedure LOGOUT1Click(Sender: TObject);
    procedure PASSWORD1Click(Sender: TObject);
    procedure DATASISWA1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses Unit2, Unit3;

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
begin
FORM1.LOGOUT1.Enabled:=FALSE;
FORM1.INPUT1.Enabled:=FALSE;
FORM1.LAPORAN1.Enabled:=FALSE;
end;

procedure TForm1.KELUARAPLIKASI1Click(Sender: TObject);
begin
APPLICATION.Terminate;
end;

procedure TForm1.LOGOUT1Click(Sender: TObject);
begin
FORM1.KELUARAPLIKASI1.Enabled:=TRUE;
FORM1.PASSWORD1.Enabled:=TRUE;

FORM1.INPUT1.Enabled:=FALSE;
FORM1.LOGOUT1.Enabled:=FALSE;
FORM1.LAPORAN1.Enabled:=FALSE;
end;

procedure TForm1.PASSWORD1Click(Sender: TObject);
begin
FORM2.SHOW;
end;

procedure TForm1.DATASISWA1Click(Sender: TObject);
begin
FORM3.SHOW;
end;

end.
