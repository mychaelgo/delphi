unit Unit4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, StdCtrls, ComCtrls, ExtCtrls, ExtDlgs;

type
  TForm4 = class(TForm)
    RichEdit1: TRichEdit;
    MainMenu1: TMainMenu;
    File1: TMenuItem;
    Timer1: TTimer;
    SaveAs1: TMenuItem;
    Quit1: TMenuItem;
    Open1: TMenuItem;
    OpenDialog1: TOpenDialog;
    SaveDialog1: TSaveDialog;
    procedure SaveAs1Click(Sender: TObject);
    procedure Open1Click(Sender: TObject);
    procedure Quit1Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

{$R *.dfm}

procedure TForm4.FormShow(Sender: TObject);
begin
richedit1.Clear;
end;

procedure TForm4.Open1Click(Sender: TObject);
begin
if Opendialog1.Execute then
begin
richedit1.Lines.LoadFromFile(OpenDialog1.FileName);
end else
begin
abort;
end;
end;

procedure TForm4.Quit1Click(Sender: TObject);
begin
Close;
end;

procedure TForm4.SaveAs1Click(Sender: TObject);
begin
if SaveDialog1.Execute then
begin
richedit1.Lines.SaveToFile(SaveDialog1.FileName);
end else
begin
abort;
end;
end;


procedure TForm4.Timer1Timer(Sender: TObject);
begin
richedit1.Width:=form4.Width;
richedit1.Height:=form4.Height;
end;

end.
