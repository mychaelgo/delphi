unit UnitDM;

interface

uses
  SysUtils, Classes, Qt, IniFiles;

type
  TCurrUser = Record
    ID : Integer;
    Name : string;
    Status : integer;
  end;
  TDM = class(TDataModule)
    procedure JustNumber(var Key : char);
    function FormatString(value:string;lenField:integer;align:integer):string;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    CurrUser : TCurrUser;
    appINI : TIniFile;
  end;

var
  DM: TDM;

implementation

{$R *.dfm}

procedure TDM.JustNumber(var Key: char);
begin
  if(Key <> chr(8)) and ((ord(Key) < ord('0')) or (ord(Key) > ord('9'))) then
    Key := chr(0);
end;

function TDM.FormatString(value: string; lenField: integer; align: integer):string;
var lenSpace,lenValue,i:Integer;
space : string;
begin
	lenValue := length(value);
	if(lenValue<lenField)then 
	begin
		lenSpace := lenField-lenValue;
		space := ' ';
		for i:=2 to lenSpace do
			space := space + ' ';
		
		if(align=1) then
			result:= value+space
		else
			result:= space+value;		
	end
	else
		result := value;
end;

procedure TDM.DataModuleCreate(Sender: TObject);
begin
  appINI := TIniFile.Create(ExpandFileName(GetNamePath + '\..') + '\settings.ini');
end;

end.
