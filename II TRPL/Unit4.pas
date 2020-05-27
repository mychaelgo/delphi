unit Unit4;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, Db, DBTables, Grids, DBGrids;

type
  TForm4 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Label7: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    GroupBox1: TGroupBox;
    Edit7: TEdit;
    c: TTable;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure Edit7KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

{$R *.DFM}

procedure TForm4.BitBtn5Click(Sender: TObject);
begin
close;
end;

procedure TForm4.BitBtn1Click(Sender: TObject);
begin
with c do
begin
append;
fieldbyname('id_nilai').asstring := edit1.text;
fieldbyname('kode_matpel').asstring := edit2.text;
fieldbyname('no_induk').asstring := edit3.text;
fieldbyname('nip').asstring := edit4.text;
fieldbyname('nilai').asstring := edit5.text;
fieldbyname('semester').asstring := edit6.text;
post;
c.refresh;
end
end;

procedure TForm4.BitBtn2Click(Sender: TObject);
begin
c.edit;
c['id_nilai']:=edit1.text;
c['kode_matpel']:=edit2.text;
c['no_induk']:=edit3.text;
c['nip']:=edit4.text;
c['nilai']:=edit5.text;
c['semester']:=edit6.text;
c.refresh;
end;

procedure TForm4.BitBtn3Click(Sender: TObject);
begin
c.delete;
end;

procedure TForm4.BitBtn4Click(Sender: TObject);
begin
edit1.text := '';
edit2.text := '';
edit3.text := '';
edit4.text := '';

end;

procedure TForm4.Edit7KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
if (c.FindKey([edit7.text])) then
begin
edit1.Text := c['id_nilai'];
edit2.Text := c['kode_matpel'];
edit3.Text := c['no_induk'];
edit4.Text := c['nip'];
edit5.Text := c['nilai'];
edit6.Text := c['semester'];
end;
end;
end.
