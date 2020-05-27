program Project1;

uses
  Forms,
  UMain in 'UMain.pas' {frmMain},
  ULogin in 'ULogin.pas' {frmLogin};

{$R *.res}

begin
  if(TfrmLogin.Execute) then
  begin
    Application.Initialize;
    Application.CreateForm(TfrmMain, frmMain);
  Application.Run;
  end;
end.
