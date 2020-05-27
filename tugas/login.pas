unit login;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls,xpman;

type
  Tfrm_login = class(TForm)
    eduser: TEdit;
    edpass: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Login: TButton;
    procedure LoginClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_login: Tfrm_login;

implementation

uses input;

{$R *.dfm}


procedure Tfrm_login.LoginClick(Sender: TObject);
begin
  if (eduser.Text='mike') and (edpass.Text='123') then
    begin
      frm_input.Show;
      frm_login.Hide;
    end
  else
    ShowMessage('Password atau Username salah...!!!');
end;



procedure Tfrm_login.FormActivate(Sender: TObject);
begin
  eduser.Text:='';
  edpass.Text:='';
  eduser.SetFocus;
end;

end.
