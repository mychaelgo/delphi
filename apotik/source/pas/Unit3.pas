unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, UnitDM, UnitDMConn, sSkinManager, Buttons, sBitBtn,
  ExtCtrls, sPanel;

type
  TfrmLogin = class(TForm)
    lblUsername: TLabel;
    lblPassword: TLabel;
    edtUsername: TEdit;
    edtPassword: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    cmdLogin: TsBitBtn;
    cmdTutup: TsBitBtn;
    function DoLogin(): boolean;
    procedure cmdLoginClick(Sender: TObject);
    procedure cmdTutupClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    class function  Execute : Boolean;
  end;

var
  frmLogin: TfrmLogin;

implementation

{$R *.dfm}
class function TfrmLogin.Execute : Boolean;
begin
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TDMConn, DMConn);
  with TfrmLogin.Create(nil) do
  try
    Result := ShowModal = mrOK;
  finally
    Free;
  end;
end;

function TfrmLogin.DoLogin(): boolean;
begin
  with DMConn.ZQry do
  begin
    SQL.Text := 'SELECT * FROM tbluser ' +
                'WHERE username=:parUsername ' +
                'And password=:parPassword';
    ParamByName('parUsername').Value :=  edtUsername.Text;
    ParamByName('parPassword').Value := edtpassword.Text;
    ExecSQL;
    Active:= true;
    if(Recordcount = 0) then
      result := false
    else
    begin
      with DM.CurrUser do
      begin
        ID := strtoint(Fields[0].Value);
        Name := Fields[1].Value;
        Status := Fields[5].Value;
      end;
      result := true;
    end;
  end;
end;

procedure TfrmLogin.cmdLoginClick(Sender: TObject);
begin
  if(edtUsername.Text = '') or (edtpassword.Text = '') then
    MessageDlg('Username dan password tidak boleh kosong!',
      mtwarning, [mbok], 0)
  else if(not DoLogin()) then
    MessageDlg('Username atau password salah!',
      mtwarning, [mbok], 0)
  else
  begin
    modalresult := mrOK;
  end;
end;

procedure TfrmLogin.cmdTutupClick(Sender: TObject);
begin
  dmconn.ZConn.Connected := false;
  ModalResult := mrabort;
end;



end.
