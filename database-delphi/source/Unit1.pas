unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, Grids, DBGrids, ExtCtrls, DBCtrls;

type
  TForm1 = class(TForm)
    ADOConn: TADOConnection;
    ADOTable1: TADOTable;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
var
  databasefile : string;
begin
  databasefile := 'data.mdb';
  with adoconn do
  begin
     connected := false;
     ConnectionString := 'Provider=Microsoft.Jet.OLEDB.4.0;User ID=Admin;Data Source=' + databasefile + ';';
     LoginPrompt := false;
     Connected := true;
  end;
  with adotable1 do
  begin
     Connection := adoconn;
     active := true;
  end;
  Datasource1.DataSet := adotable1;
  dbnavigator1.DataSource := datasource1;
  dbgrid1.DataSource := datasource1;
end;

end.
