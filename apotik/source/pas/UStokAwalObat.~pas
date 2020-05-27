unit UStokAwalObat;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Grids, DBGrids, StdCtrls, Buttons;

type
  TfrmStokAwalObat = class(TForm)
    DS: TDataSource;
    DBGrid1: TDBGrid;
    btnTutup: TBitBtn;
    procedure btnTutupClick(Sender: TObject);
    procedure DSStateChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmStokAwalObat: TfrmStokAwalObat;

implementation

{$R *.dfm}
uses UnitDMConn;

procedure TfrmStokAwalObat.btnTutupClick(Sender: TObject);
begin
  close();
end;

procedure TfrmStokAwalObat.DSStateChange(Sender: TObject);
begin
  if(ds.State = dsinsert) and (Visible = true) then
    dmconn.ZTblObat.Cancel;
end;

end.
