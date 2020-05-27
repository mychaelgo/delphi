unit UnitCon;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ZConnection, StdCtrls, Buttons, sBitBtn;

type
  TfrmCon = class(TForm)
    cmdTutup: TsBitBtn;
    btnConnect: TsBitBtn;
    edtPassword: TEdit;
    Label2: TLabel;
    lblPassword: TLabel;
    lblUsername: TLabel;
    Label1: TLabel;
    edtUser: TEdit;
    edtHostname: TEdit;
    edtDatabase: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    procedure cmdTutupClick(Sender: TObject);
    procedure btnConnectClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    class function  Execute : Boolean;
  end;

var
  frmCon: TfrmCon;

implementation

{$R *.dfm}
Uses UnitDMConn, UnitDM;

class function TfrmCon.Execute : Boolean;
begin
  with TfrmCon.Create(nil) do
  try
    Result := ShowModal = mrOK;
  finally
    Free;
  end;
end;

procedure TfrmCon.cmdTutupClick(Sender: TObject);
begin
  ModalResult := mrAbort;
end;

procedure TfrmCon.btnConnectClick(Sender: TObject);
begin
  if(DMConn.Connect(edthostname.Text, edtuser.Text, edtpassword.Text, edtdatabase.Text)) then
  begin
    DM.appINI.WriteString('Database', 'HostName', edthostname.text);
    DM.appINI.WriteString('Database', 'Username', edtuser.text);
    DM.appINI.WriteString('Database', 'Password', edtpassword.text);
    DM.appINI.WriteString('Database', 'Database', edtdatabase.text);
    MessageDlg('Berhasil terkoneksi ke database.', mtinformation, [mbok], 0);
    ModalResult := mrOK;
  end;
end;

end.
