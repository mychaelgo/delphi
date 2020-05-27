unit UnitHargaObat;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UnitDMConn, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  Grids, DBGrids, StdCtrls, Buttons, sBitBtn;

type
  TfrmHargaObat = class(TForm)
    DBGrid1: TDBGrid;
    DS: TDataSource;
    btnTutup: TBitBtn;
    procedure btnTutupClick(Sender: TObject);
    procedure DSStateChange(Sender: TObject);
    
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmHargaObat: TfrmHargaObat;

implementation

{$R *.dfm}
uses UnitHargaObatSet;

procedure TfrmHargaObat.btnTutupClick(Sender: TObject);
begin
  close();
end;


procedure TfrmHargaObat.DSStateChange(Sender: TObject);
begin
  if(ds.State = dsinsert) and (Visible = true) then
    dmconn.ZTblObat.Cancel;
end;

end.
