unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm2 = class(TForm)
    Edit1: TEdit;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
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

procedure TForm2.Button1Click(Sender: TObject);
begin
if edit1.text = '123' then
begin
showmessage ('password benar');
form1.input1.Enabled:=true;
form1.logout1.Enabled:=true;
form1.keluar1.Enabled:=false;
form1.edit1.Enabled:=true;
form1.password1.Enabled:=false;
form2.Hide;
end
else
begin
showmessage ('password salah');
edit1.SetFocus;
end
end;

end.
