unit baru;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, DB, DBTables, Menus;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    Edit2: TEdit;
    Label3: TLabel;
    Edit3: TEdit;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Edit4: TEdit;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    DataSource1: TDataSource;
    Table1: TTable;
    DBGrid1: TDBGrid;
    procedure FormCreate(Sender: TObject);
    procedure Edit3Change(Sender: TObject);
    procedure Edit4Change(Sender: TObject);
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
begin
EDIT1.Text:='';
EDIT2.Text:='';
COMBOBOX1.Text:='';
COMBOBOX2.Text:='';
EDIT3.Text:='';
EDIT4.TEXT:='';

COMBOBOX1.Items.Append('I');
COMBOBOX1.Items.Append('II');
COMBOBOX1.Items.Append('III');

COMBOBOX2.Items.Append('TRPL');
COMBOBOX2.Items.Append('TKJ');
COMBOBOX2.Items.Append('TMO');
COMBOBOX2.Items.Append('TMP');
COMBOBOX2.Items.Append('TAV');
COMBOBOX2.Items.Append('TKK');
COMBOBOX2.Items.Append('TPEL');
COMBOBOX2.Items.Append('TKB');
COMBOBOX2.Items.Append('TGB');
COMBOBOX2.Items.Append('TLAS');


end;

procedure TForm1.Edit4Change(Sender: TObject);
begin
IF EDIT3.Text >=90 Then
begin
EDIT4.Text:='LULUS SANGAT BAIK'
end;
ELSE
IF EDIT3.Text >=75 <=79 Then
EDIT4.Text:='LULUS'
ELSE
IF EDIT3.Text <=74 THEN
EDIT4.Text:='TIDAK LULUS CEPAT MENGULANG'
END IF
end;

end.
