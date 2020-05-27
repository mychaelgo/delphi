unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm2 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
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
form1.con.BeginTrans;
with form1.query do begin
sql.Clear;
sql.Text:='insert into country(Name,Capital,Continent,Area,Population)'+
          'Values(:parName,:parCapital,:parContinent,:parArea,:parPopulation)';
prepared;//mempersiapkan
parameters.ParamByName('parName').Value:=Edit1.text;
parameters.ParamByName('parCapital').Value:=Edit2.text;
parameters.ParamByName('parContinent').Value:=Edit3.text;
parameters.ParamByName('parArea').Value:=Edit4.text;
parameters.ParamByName('parPopulation').Value:=Edit5.text;
execsql;//untuk mengeksekusi perintah SQL
form1.show;
end;
form1.con.CommitTrans;
button1.Enabled:=false;
end;

procedure TForm2.Button2Click(Sender: TObject);
begin
Edit1.clear;
Edit2.clear;
Edit3.clear;
Edit4.clear;
Edit5.clear;
edit1.SetFocus;
button1.Enabled:=true;
end;

procedure TForm2.Button3Click(Sender: TObject);
begin
close
end;

end.
