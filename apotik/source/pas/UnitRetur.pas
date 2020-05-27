unit UnitRetur;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, Buttons, sBitBtn, UnitDMConn;

type
  TfrmRetur = class(TForm)
    DS: TDataSource;
    DBGrid1: TDBGrid;
    btnInput: TBitBtn;
    btnEdit: TBitBtn;
    btnHapus: TBitBtn;
    Btn1Tutup: TBitBtn;
    procedure btnTutupClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure btnInputClick(Sender: TObject);
    procedure DSDataChange(Sender: TObject; Field: TField);
    procedure FormShow(Sender: TObject);
    procedure btnHapusClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRetur: TfrmRetur;

implementation

{$R *.dfm}
uses UnitReturAE;

procedure TfrmRetur.btnTutupClick(Sender: TObject);
begin
  close();
end;

procedure TfrmRetur.btnEditClick(Sender: TObject);
begin
  with frmReturAE do
  begin
    FState := 2;
    showmodal;
  end;
end;

procedure TfrmRetur.btnInputClick(Sender: TObject);
begin
  with frmReturAE do
  begin
    FState := 1;
    showmodal;
  end;
end;

procedure TfrmRetur.DSDataChange(Sender: TObject; Field: TField);
begin
  if(dmconn.ZTblRetur.recordcount >0) then
  begin
    btnEdit.Enabled := true;
    btnHapus.Enabled := true;
  end
  else
  begin
    btnEdit.Enabled := false;
    btnHapus.Enabled := false;
  end;
end;

procedure TfrmRetur.FormShow(Sender: TObject);
begin
   dmconn.ZTblRetur.Refresh;
end;

procedure TfrmRetur.btnHapusClick(Sender: TObject);
begin
  if(MessageDlg('Hapus data?', mtconfirmation,
      [mbyes, mbno], 0) = mryes) then
  begin
   dmconn.ZTblRetur.delete;
  end;
end;

end.
