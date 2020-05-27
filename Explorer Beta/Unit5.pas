unit Unit5;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm5 = class(TForm)
    Edit1: TEdit;
    Button1: TButton;
    Button2: TButton;
    Label1: TLabel;
    procedure Edit1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;

implementation

uses Unit1;

{$R *.dfm}

procedure TForm5.Edit1Click(Sender: TObject);
begin
edit1.Clear;
end;

procedure TForm5.Button2Click(Sender: TObject);
begin
close;
end;

procedure TForm5.Button1Click(Sender: TObject);
begin
mkdir(form1.Edit1.Text+'/'+form5.Edit1.Text);
form1.DirectoryListBox1.Clear;
form1.DirectoryListBox1.Update;
close;
end;

end.
