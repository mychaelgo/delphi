program GAV;

uses
  Forms,
  Form_Utama in 'Form_Utama.pas' {FormUtama};


{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'Ali Software';
  Application.CreateForm(TFormUtama, FormUtama);
  Application.Run;
end.
