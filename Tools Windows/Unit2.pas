unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Registry, ExtCtrls, Buttons, ShellApi;

type
  TForm2 = class(TForm)
    GroupBox2: TGroupBox;
    RadioButton3: TRadioButton;
    RadioButton4: TRadioButton;
    GroupBox3: TGroupBox;
    RadioButton5: TRadioButton;
    RadioButton6: TRadioButton;
    GroupBox4: TGroupBox;
    RadioButton7: TRadioButton;
    RadioButton8: TRadioButton;
    GroupBox5: TGroupBox;
    RadioButton9: TRadioButton;
    RadioButton10: TRadioButton;
    GroupBox6: TGroupBox;
    RadioButton11: TRadioButton;
    RadioButton12: TRadioButton;
    Timer1: TTimer;
    Button1: TButton;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure RadioButton11Click(Sender: TObject);
    procedure RadioButton12Click(Sender: TObject);
    procedure RadioButton10Click(Sender: TObject);
    procedure RadioButton9Click(Sender: TObject);
    procedure RadioButton6Click(Sender: TObject);
    procedure RadioButton5Click(Sender: TObject);
    procedure RadioButton4Click(Sender: TObject);
    procedure RadioButton3Click(Sender: TObject);
    procedure RadioButton7Click(Sender: TObject);
    procedure RadioButton8Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;
  reg:Tregistry;
implementation

uses Unit1;

{$R *.dfm}

procedure TForm2.Button1Click(Sender: TObject);
begin
close;
end;

procedure TForm2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
ShowMessage('Log OFF Lalu Log On Kembali Komp Kamu Untuk Update Registry');
Form1.Enabled:=true;
Form1.AlphaBlendValue:=255;

end;

procedure TForm2.FormShow(Sender: TObject);
begin
Form1.enabled:=False;
Form1.AlphaBlendValue:=100;
end;

procedure TForm2.RadioButton10Click(Sender: TObject);
begin
reg:=tregistry.Create;
reg.RootKey:= HKEY_CURRENT_USER;
reg.OpenKey('\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer',True);
reg.WriteInteger('NoFind',1);
reg.CloseKey;
end;

procedure TForm2.RadioButton11Click(Sender: TObject);
begin
reg:=tregistry.Create;
reg.RootKey:= HKEY_CURRENT_USER;
reg.OpenKey('\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer',True);
reg.DeleteValue('NoRun');
reg.CloseKey;
end;

procedure TForm2.RadioButton12Click(Sender: TObject);
begin
reg:=tregistry.Create;
reg.RootKey:= HKEY_CURRENT_USER;
reg.OpenKey('\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer',True);
reg.WriteInteger('NoRun',1);
reg.CloseKey;
end;

procedure TForm2.RadioButton3Click(Sender: TObject);
begin
reg:=tregistry.Create;
reg.RootKey:= HKEY_CURRENT_USER;
reg.OpenKey('\Software\Microsoft\Windows\CurrentVersion\Policies\System',True);
reg.DeleteValue('DisableRegistryTools');
reg.CloseKey;
end;

procedure TForm2.RadioButton4Click(Sender: TObject);
begin
reg:=tregistry.Create;
reg.RootKey:= HKEY_CURRENT_USER;
reg.OpenKey('\Software\Microsoft\Windows\CurrentVersion\Policies\System',True);
reg.WriteInteger('DisableRegistryTools',1);
reg.CloseKey;
end;

procedure TForm2.RadioButton5Click(Sender: TObject);
begin
reg:=tregistry.Create;
reg.RootKey:= HKEY_CURRENT_USER;
reg.OpenKey('\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer',True);
reg.DeleteValue('NoFolderOptions');
reg.CloseKey;
end;

procedure TForm2.RadioButton6Click(Sender: TObject);
begin
reg:=tregistry.Create;
reg.RootKey:= HKEY_CURRENT_USER;
reg.OpenKey('\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer',True);
reg.WriteInteger('NoFolderOptions',1);
reg.CloseKey;
end;

procedure TForm2.RadioButton7Click(Sender: TObject);
begin
reg:=tregistry.Create;
reg.RootKey:= HKEY_CURRENT_USER;
reg.OpenKey('\Software\Microsoft\Windows\CurrentVersion\Policies\System',True);
reg.DeleteValue('DisableTaskMgr');
reg.RootKey:= HKEY_LOCAL_MACHINE;
reg.OpenKey('\Software\Microsoft\Windows\CurrentVersion\Policies\System',True);
reg.DeleteValue('DisableTaskMgr');
reg.CloseKey;
end;

procedure TForm2.RadioButton8Click(Sender: TObject);
begin
reg:=tregistry.Create;
reg.RootKey:= HKEY_CURRENT_USER;
reg.OpenKey('\Software\Microsoft\Windows\CurrentVersion\Policies\System',True);
reg.WriteInteger('DisableTaskMgr',1);
reg.RootKey:= HKEY_LOCAL_MACHINE;
reg.OpenKey('\Software\Microsoft\Windows\CurrentVersion\Policies\System',True);
reg.WriteInteger('DisableTaskMgr',1);
reg.CloseKey;
end;

procedure TForm2.RadioButton9Click(Sender: TObject);
begin
reg:=tregistry.Create;
reg.RootKey:= HKEY_CURRENT_USER;
reg.OpenKey('\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer',True);
reg.DeleteValue('NoFind');
reg.CloseKey;
end;

procedure TForm2.SpeedButton1Click(Sender: TObject);
begin
ShellExecute(0, 'open', 'C:\Windows\Regedit.exe', nil, nil, SW_NORMAL);
end;

procedure TForm2.SpeedButton2Click(Sender: TObject);
begin
ShellExecute(0, 'open', 'C:\Windows\System32\TaskMgr.exe', nil, nil, SW_NORMAL);
end;

procedure TForm2.Timer1Timer(Sender: TObject);
var
red:HWND;
begin
red:=findwindow(nil,'Run');
SetWindowText(red, 'Xj9 - Run++++++');
red:=findwindow(nil,'Registry Editor');
SetWindowText(red, 'Xj9 - Registry Editor++++++');
red:=findwindow(nil,'Windows Task Manager');
SetWindowText(red, 'Xj9 - Task Manager++++++');


reg:=tregistry.Create;
reg.RootKey:= HKEY_CURRENT_USER;
reg.OpenKey('\Software\Microsoft\Windows\CurrentVersion\Policies\System',True);
if reg.ValueExists('DisableRegistryTools')=true then
begin
RadioButton4.Checked:=true;
SpeedButton1.Enabled:=false;
end else
begin
RadioButton3.Checked:=true;
SpeedButton1.Enabled:=true;
end;
reg:=tregistry.Create;
reg.RootKey:= HKEY_CURRENT_USER;
reg.OpenKey('\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer',True);
if reg.ValueExists('NoFolderOptions')=true then
begin
RadioButton6.Checked:=true;
end else
begin
RadioButton5.Checked:=true;
end;
reg:=tregistry.Create;
reg.RootKey:= HKEY_CURRENT_USER;
reg.OpenKey('\Software\Microsoft\Windows\CurrentVersion\Policies\System',True);
if reg.ValueExists('DisableTaskMgr')=true then
begin
RadioButton8.Checked:=true;
SpeedButton2.Enabled:=False;
end else
begin
RadioButton7.Checked:=true;
SpeedButton2.Enabled:=true;
end;
reg:=tregistry.Create;
reg.RootKey:= HKEY_CURRENT_USER;
reg.OpenKey('\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer',True);
if reg.ValueExists('NoFind')=true then
begin
radioButton10.Checked:=true;
end else
begin
RadioButton9.Checked:=true;
end;
reg:=tregistry.Create;
reg.RootKey:= HKEY_CURRENT_USER;
reg.OpenKey('\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer',True);
if reg.ValueExists('NoRun')=true then
begin
RadioButton12.Checked:=true;
end else
begin
RadioButton11.Checked:=true;
end;
reg.CloseKey;
end;

end.
