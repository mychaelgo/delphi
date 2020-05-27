unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm2 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Label1: TLabel;
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

procedure TForm2.Button1Click(Sender: TObject);
begin
SetFileAttributes(Pchar(form1.Edit1.Text+'\'+extractfilename(form1.Label4.Caption)),FILE_ATTRIBUTE_NORMAL);
deletefile(form1.Edit1.Text+'\'+extractfilename(form1.label1.Caption));
copyfile(pchar(form1.Label4.Caption),Pchar(form1.Edit1.Text+'\'+ExtractFilename(form1.Label4.Caption)),False);
Showmessage('File berhasil di replace');
close;
end;

procedure TForm2.Button2Click(Sender: TObject);
begin
close;
end;

end.
