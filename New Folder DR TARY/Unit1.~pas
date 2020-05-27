unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus;

type
  TForm1 = class(TForm)
    MainMenu1: TMainMenu;
    masuk1: TMenuItem;
    password1: TMenuItem;
    logout1: TMenuItem;
    keluar1: TMenuItem;
    input1: TMenuItem;
    datasiswa1: TMenuItem;
    edit1: TMenuItem;
    datasiswa2: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure password1Click(Sender: TObject);
    procedure logout1Click(Sender: TObject);
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
form1.input1.Enabled:=false;
form1.logout1.Enabled:=false;
form1.keluar1.Enabled:=false;
form1.edit1.Enabled:=false;
end;

procedure TForm1.password1Click(Sender: TObject);
begin
form2.Show;
end;

procedure TForm1.logout1Click(Sender: TObject);
begin
form3.Show;
end;

end.
