program Projectku;

uses
  Forms,
  login in 'login.pas' {frm_login},
  input in 'input.pas' {frm_input};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(Tfrm_login, frm_login);
  Application.CreateForm(Tfrm_input, frm_input);
  Application.Run;
end.
