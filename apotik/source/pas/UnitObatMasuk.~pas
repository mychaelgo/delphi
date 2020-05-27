unit UnitObatMasuk;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, UnitDMConn, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, Buttons, sBitBtn, ZAbstractTable;

type
  TfrmObatMasuk = class(TForm)
    btnInput: TBitBtn;
    btnEdit: TBitBtn;
    btnHapus: TBitBtn;
    btnTutup: TBitBtn;
    DS: TDataSource;
    DBGrid2: TDBGrid;
    procedure btnTutupClick(Sender: TObject);
    procedure btnInputClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure DSDataChange(Sender: TObject; Field: TField);
    procedure btnHapusClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmObatMasuk: TfrmObatMasuk;

implementation

{$R *.dfm}
uses UnitObatMasukAE;

procedure TfrmObatMasuk.btnTutupClick(Sender: TObject);
begin
  close();
end;

procedure TfrmObatMasuk.btnInputClick(Sender: TObject);
begin
  with frmobatmasukae do
  begin
    FState := 1;
    if(ShowModal = mrOK) then
      dmconn.ZTblObatmasuk.Refresh;
  end;
end;

procedure TfrmObatMasuk.btnEditClick(Sender: TObject);
begin
  with frmobatmasukae do
  begin
    FState := 2;
    ID := dmconn.ZTblObatmasuk.Fields[0].Value;
    if(ShowModal = mrOK) then
      dmconn.ZTblObat.Refresh;
  end;
end;

procedure TfrmObatMasuk.DSDataChange(Sender: TObject; Field: TField);
begin
  if(dmconn.ZTblObatmasuk.recordcount > 0) then
  begin
    btnedit.Enabled := true;
    btnhapus.Enabled := true;
  end
  else
  begin
    btnedit.Enabled := false;
    btnhapus.Enabled := false;
  end;
end;

procedure TfrmObatMasuk.btnHapusClick(Sender: TObject);
begin
  if(MessageDlg('Hapus data?', mtconfirmation,
      [mbyes, mbno], 0) = mryes) then
  begin
   dmconn.ZTblObatMasuk.Delete;
  end;
end;

procedure TfrmObatMasuk.FormShow(Sender: TObject);
begin
  dmconn.ZTblObatmasuk.Refresh;
end;

end.
