unit ULogin;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TfrmLogin = class(TForm)
    edtUsername: TEdit;
    edtPassword: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    btnLogin: TButton;
    btnCancel: TButton;
    procedure btnCancelClick(Sender: TObject);
    procedure btnLoginClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    class function Execute : Boolean;
  end;

var
  frmLogin: TfrmLogin;

implementation

{$R *.dfm}
class function TFrmLogin.Execute:Boolean;
begin
   with TfrmLogin.Create(nil) do
   try
    Result := ShowModal = mrOK;
   finally
    free;
   end;
end;
procedure TfrmLogin.btnCancelClick(Sender: TObject);
begin
  ModalResult := mrAbort;
end;

procedure TfrmLogin.btnLoginClick(Sender: TObject);
var username, password : string;
begin
  username := 'admin';
  password := '123';

  if(edtusername.Text = username) and (edtpassword.Text = password) then
  begin
    ModalResult := mrOK;
  end
  else
    ShowMessage('Login gagal, password atau username salah.');
end;

end.
