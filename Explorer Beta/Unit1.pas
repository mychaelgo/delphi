unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, StdCtrls, ComCtrls, ExtCtrls, Shellapi, FileCtrl, XPMan;

type
  TForm1 = class(TForm)
    FileListBox1: TFileListBox;
    DirectoryListBox1: TDirectoryListBox;
    DriveComboBox1: TDriveComboBox;
    MainMenu1: TMainMenu;
    File1: TMenuItem;
    Edit1: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Button1: TButton;
    Timer1: TTimer;
    PopupMenu1: TPopupMenu;
    Delete1: TMenuItem;
    Copy1: TMenuItem;
    Cut1: TMenuItem;
    Paste1: TMenuItem;
    new1: TMenuItem;
    extFile1: TMenuItem;
    Properties1: TMenuItem;
    PopupMenu2: TPopupMenu;
    Delete2: TMenuItem;
    New2: TMenuItem;
    Folder2: TMenuItem;
    Label3: TLabel;
    Label4: TLabel;
    Open1: TMenuItem;
    StatusBar1: TStatusBar;
    XPManifest1: TXPManifest;
    procedure extFile1Click(Sender: TObject);
    procedure Folder1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Open1Click(Sender: TObject);
    procedure Delete1Click(Sender: TObject);
    procedure Paste1Click(Sender: TObject);
    procedure Cut1Click(Sender: TObject);
    procedure Copy1Click(Sender: TObject);
    procedure DirectoryListBox1Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure DirectoryListBox1Change(Sender: TObject);
    procedure DriveComboBox1Change(Sender: TObject);
    procedure FileListBox1Change(Sender: TObject);
    procedure Folder2Click(Sender: TObject);
    procedure Delete2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses Unit2, Unit3, Unit4, Unit5;

{$R *.dfm}
procedure TForm1.Button1Click(Sender: TObject);
begin
directorylistbox1.Directory:=edit1.Text;
end;

procedure TForm1.Copy1Click(Sender: TObject);
begin
label3.Caption:='copy';
label4.Caption:=filelistbox1.FileName;
end;

procedure TForm1.Cut1Click(Sender: TObject);
begin
label3.Caption:='cut';
label4.Caption:=filelistbox1.FileName;
end;

procedure TForm1.Delete1Click(Sender: TObject);
begin
SetFileAttributes(Pchar(filelistbox1.FileName),FILE_ATTRIBUTE_NORMAL);
deletefile(filelistbox1.FileName);
if fileexists(filelistbox1.FileName)=true then
begin
showmessage('File Mungkin masih digunakan atau file system, file Tidak di hapus');
end else
begin
showmessage('File Berhasil di hapus');
end;
filelistbox1.Clear;
filelistbox1.Update;
end;

procedure TForm1.DirectoryListBox1Change(Sender: TObject);
begin
filelistbox1.Directory:=directorylistbox1.Directory;
edit1.Text:=directorylistbox1.Directory;

end;

procedure TForm1.DirectoryListBox1Click(Sender: TObject);
begin
directorylistbox1.OpenCurrent;
end;

procedure TForm1.DriveComboBox1Change(Sender: TObject);
begin
directorylistbox1.Drive:=drivecombobox1.Drive;
end;

procedure TForm1.extFile1Click(Sender: TObject);
begin
form4.show;

end;

procedure TForm1.Folder1Click(Sender: TObject);
begin
form3.show;
end;

procedure TForm1.FormShow(Sender: TObject);
begin
edit1.Text:=extractfiledir(application.ExeName);

end;

procedure TForm1.Open1Click(Sender: TObject);
begin
ShellExecute(0, 'open', Pchar(filelistbox1.FileName), nil, nil, SW_NORMAL);
end;

procedure TForm1.Paste1Click(Sender: TObject);
begin
if label3.Caption='copy' then
begin
if fileexists(edit1.Text+'/'+extractfilename(label4.Caption))=true then
begin
form2.show;
form2.Label1.Caption:='File yang anda '+label3.Caption+' bernama "'+extractfilename(label4.Caption)+'" sudah ada, apakah anda mau replace???';
end else
begin
CopyFile(PChar(label4.Caption), PChar(edit1.Text+'\'+extractfilename(label4.Caption)), False);
filelistbox1.Clear;
filelistbox1.Update;
end;
end;
if label3.Caption='cut' then
begin
CopyFile(PChar(label4.Caption), PChar(edit1.Text+'\'+extractfilename(label4.Caption)), False);
SetFileAttributes(PChar(edit1.Text+'\'+extractfilename(label4.Caption)),FILE_ATTRIBUTE_NORMAL);
deletefile(label4.Caption);
if fileexists(label4.Caption)=true then
begin
showmessage('File Sedang digunakan atau file system, File tidak berhasil di pindah');
deletefile(PChar(edit1.Text+'\'+extractfilename(label4.Caption)));
end else
begin
showmessage('File Berhasil di pindah');
filelistbox1.Items.Add(extractfilename(label4.Caption));
end;
end;
label3.Caption:='-';
label4.Caption :='-';
filelistbox1.Clear;
filelistbox1.Update;
end;

procedure TForm1.Timer1Timer(Sender: TObject);
begin
statusbar1.Panels[3].Text:='Now:'+TimetoStr(time);
end;

procedure TForm1.FileListBox1Change(Sender: TObject);
var
Mysys:TWin32FindData;
DataTime: TFileTime;
SysTime: TSystemTime;
HasilS:String;
HasilI:byte;
begin
FindFirstFile(PChar(filelistbox1.FileName), Mysys);
DataTime:=Mysys.ftCreationTime;
FileTimeToSystemTime(DataTime, SysTime);

HasilS:=Floattostr(Mysys.nFileSizeLow);
HasilI:=strtoint(HasilS)div 1000;
if HasilI<1 then
begin
Statusbar1.Panels[2].Text:='Size:'+inttostr(HasilI+1)+' Kb';
end else
begin
Statusbar1.Panels[2].Text:='Size:'+inttostr(HasilI)+' Kb';
end;

statusbar1.Panels[1].Text:='Name:'+ExtractFilename(filelistbox1.FileName);
Statusbar1.Panels[0].Text:='File Created: Date '+ IntToStr(SysTime.wDay)+'-'+IntToStr(SysTime.wMonth)+'-'+IntToStr(SysTime.wYear)+' Time '+IntToStr(SysTime.wHour)+':'+IntToStr(SysTime.wMinute);

end;

procedure TForm1.Folder2Click(Sender: TObject);
begin
form5.show;
end;

procedure TForm1.Delete2Click(Sender: TObject);
var
index1,a:integer;
begin
for a := 0 to FileListBox1.Count - 1 do
deletefile(filelistbox1.Items.Strings[a]);
filelistbox1.Clear;
filelistbox1.Update;
if filelistbox1.Items.Count<=0 then
begin
directorylistbox1.Refresh;
index1:=directorylistbox1.ItemIndex;
directorylistbox1.ItemIndex:=index1-1;
directorylistbox1.OpenCurrent;
rmdir(directorylistbox1.Items.Strings[index1]);
directorylistbox1.Clear;
directorylistbox1.Update;
end else
begin
showmessage('tdak dapat di hapus');
end;
end;
end.
