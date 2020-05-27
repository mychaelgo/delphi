unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Menus, StdCtrls, jpeg, ExtCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    MainMenu1: TMainMenu;
    MENU1: TMenuItem;
    DATAGURU1: TMenuItem;
    MATAPELAJARAN1: TMenuItem;
    JADWALPERLAJARAN1: TMenuItem;
    NILAI1: TMenuItem;
    PROGRAMSTUDI1: TMenuItem;
    KELAS1: TMenuItem;
    JURUSAN1: TMenuItem;
    SISWA1: TMenuItem;
    KELUAR1: TMenuItem;
    Image1: TImage;
    procedure DATAGURU1Click(Sender: TObject);
    procedure KELUAR1Click(Sender: TObject);
    procedure MATAPELAJARAN1Click(Sender: TObject);
    procedure NILAI1Click(Sender: TObject);
    procedure JADWALPERLAJARAN1Click(Sender: TObject);
    procedure PROGRAMSTUDI1Click(Sender: TObject);
    procedure KELAS1Click(Sender: TObject);
    procedure JURUSAN1Click(Sender: TObject);
    procedure SISWA1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses Unit2, Unit3, Unit4, Unit5, Unit7, Unit6, Unit9, Unit8;

{$R *.DFM}

procedure TForm1.DATAGURU1Click(Sender: TObject);
begin
form2.show;
end;

procedure TForm1.KELUAR1Click(Sender: TObject);
begin
application.terminate;
end;

procedure TForm1.MATAPELAJARAN1Click(Sender: TObject);
begin
form3.show;
end;

procedure TForm1.NILAI1Click(Sender: TObject);
begin
form4.show;
end;

procedure TForm1.JADWALPERLAJARAN1Click(Sender: TObject);
begin
form5.show;
end;

procedure TForm1.PROGRAMSTUDI1Click(Sender: TObject);
begin
form7.show;
end;

procedure TForm1.KELAS1Click(Sender: TObject);
begin
form6.show;
end;

procedure TForm1.JURUSAN1Click(Sender: TObject);
begin
form9.show;
end;

procedure TForm1.SISWA1Click(Sender: TObject);
begin
form8.show;
end;

end.
