unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, shellApi, registry, ExtCtrls, Menus;

type
  TForm1 = class(TForm)
    ListBox1: TListBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Edit1: TEdit;
    Timer1: TTimer;
    Button1: TButton;
    Button2: TButton;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    procedure Label7MouseLeave(Sender: TObject);
    procedure Label7MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Label6MouseLeave(Sender: TObject);
    procedure Label6MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Label7Click(Sender: TObject);
    procedure Label6Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure ListBox1Click(Sender: TObject);
    procedure ListBox1DblClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  reg:TRegistry;
implementation

uses Unit2;

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
reg:=tregistry.Create;
reg.RootKey:= HKEY_CURRENT_USER;
reg.OpenKey('\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer',True);
reg.DeleteValue('NoDrives');
reg.CloseKey;
showmessage('Log Off dulu lalu log on lagi untuk update registry');
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
form2.show;
end;

procedure TForm1.FormCreate(Sender: TObject);
var
id:dword;
i,a:integer;
begin
id:=getlogicaldrives;
for i:=0 to 25 do
begin
if(id and(1 shl i))<> 0 then
Listbox1.Items.Add(char(ord('A')+i)+':\');

reg:=tregistry.Create;
reg.RootKey:= HKEY_CURRENT_USER;
reg.OpenKey('\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer',True);
if reg.ValueExists('NoDrives')=true then
begin
  button1.Enabled:=true;
  button1.Caption:='Tampilkan Semua Drive';
  reg:=tregistry.Create;
  reg.RootKey:= HKEY_CURRENT_USER;
  reg.OpenKey('\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer',True);
  a:=reg.ReadInteger('NoDrives');
  edit1.Text:=IntToStr(a);
  reg.CloseKey;
end
else
begin
  button1.Enabled:=false;
  button1.Caption:='Ga Ada hidden drive';
end;
reg.CloseKey;

end;
end;
procedure TForm1.Label6Click(Sender: TObject);
begin
ShellExecute(0, 'open', 'http://www.G-17.co.cc', nil, nil, SW_NORMAL);
end;

procedure TForm1.Label6MouseLeave(Sender: TObject);
begin
label6.Font.Color:=clBlack;
end;

procedure TForm1.Label6MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
label6.Font.Color:=clBlue;
end;

procedure TForm1.Label7Click(Sender: TObject);
begin
ShellExecute(0, 'open', 'http://www.facebook.com/yudha.ajah', nil, nil, SW_NORMAL);
end;

procedure TForm1.Label7MouseLeave(Sender: TObject);
begin
label7.Font.Color:=clBlack;
end;

procedure TForm1.Label7MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
label7.Font.Color:=clBlue;
end;

procedure TForm1.ListBox1Click(Sender: TObject);
var
item:string;
index:integer;
begin
index := ListBox1.ItemIndex;
item:=listbox1.Items.Strings[index];
label2.Caption:='Buka Drive '+item;
end;

procedure TForm1.ListBox1DblClick(Sender: TObject);
var
item:string;
index:integer;
begin
index := ListBox1.ItemIndex;
item:=listbox1.Items.Strings[index];
ShellExecute(0, 'open', PansiChar(item), nil, nil, SW_NORMAL);
end;

procedure TForm1.Timer1Timer(Sender: TObject);
begin
  if edit1.Text='4' then
  begin
    label3.Caption:='Yang Disembunyikan Drive C:\';
  end else
  if edit1.Text='8' then
  begin
    label3.Caption:='Yang Disembunyikan Drive D:\';
  end else
  if edit1.Text='16' then
  begin
    label3.Caption:='Yang Disembunyikan Drive E:\';
  end else
  if edit1.Text='32' then
  begin
    label3.Caption:='Yang Disembunyikan Drive F:\';
  end else
  if edit1.Text='64' then
  begin
    label3.Caption:='Yang Disembunyikan Drive G:\';
  end else
  if edit1.Text='128' then
  begin
    label3.Caption:='Yang Disembunyikan Drive H:\';
  end else
  if edit1.Text='256' then
  begin
    label3.Caption:='Yang Disembunyikan Drive I:\';
  end else
  if edit1.Text='512' then
  begin
    label3.Caption:='Yang Disembunyikan Drive J:\';
  end else
  if edit1.Text='1024' then
  begin
    label3.Caption:='Yang Disembunyikan Drive K:\';
  end else
  if edit1.Text='2046' then
  begin
    label3.Caption:='Yang Disembunyikan Drive L:\';
  end else
  if edit1.Text='4096' then
  begin
    label3.Caption:='Yang Disembunyikan Drive M:\';
  end else
  if edit1.Text='67108863' then
  begin
    label3.Caption:='Semua Drive Disembunyikan';
  end else
  begin
    label3.Caption:='Ga ada Drive Yang disembunyikan';
  end;

end;

end.
