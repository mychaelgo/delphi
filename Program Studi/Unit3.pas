unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls;

type
  TForm3 = class(TForm)
    Button4: TButton;
    Button3: TButton;
    Button2: TButton;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

uses Unit2;

{$R *.DFM}

procedure TForm3.Button1Click(Sender: TObject);
begin
form2.quickrep1.preview;
end;

procedure TForm3.Button2Click(Sender: TObject);
begin
form2.quickrep1.print;
end;

procedure TForm3.Button3Click(Sender: TObject);
begin
form2.quickrep1.printersetup;
end;

procedure TForm3.Button4Click(Sender: TObject);
begin
application.terminate;
end;

end.
