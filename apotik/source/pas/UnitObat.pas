unit UnitObat;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, DB, ZAbstractRODataset, ZAbstractDataset,
  ZAbstractTable, ZDataset, ZConnection, UnitDMConn, StdCtrls, Buttons,
  sBitBtn;

type
  TfrmObat = class(TForm)
    DS: TDataSource;
    DBGrid1: TDBGrid;
    btnTambah: TBitBtn;
    btnEdit: TBitBtn;
    btnHapus: TBitBtn;
    btnTutup: TBitBtn;
    procedure AE(Add:Boolean);
    procedure DSDataChange(Sender: TObject; Field: TField);
    procedure btnTutupClick(Sender: TObject);
    procedure btnHapusClick(Sender: TObject);
    procedure btnTambahClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmObat: TfrmObat;

implementation

{$R *.dfm}
uses UnitObatAE;

procedure TfrmObat.DSDataChange(Sender: TObject; Field: TField);
begin
  if(dmconn.zTblobat.RecordCount > 0) then
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

procedure TfrmObat.btnTutupClick(Sender: TObject);
begin
  close();
end;

procedure TfrmObat.btnHapusClick(Sender: TObject);
begin
  if(MessageDlg('Hapus Data?', mtconfirmation, [mbYes, mbNo], 0) = mrYes) then
    dmconn.ztblobat.Delete;
end;

procedure TfrmObat.AE(Add:Boolean);
begin
  if(Add) then
  begin
    dmconn.ztblobat.append;
    dmconn.ZTblObat.FieldByName('stock').Value := 0;
    dmconn.ZTblObat.FieldByName('harga_default').Value := 0;
    frmObatAE.FState := 1;
  end
  else
  begin
    dmconn.ztblobat.Edit;
    frmObatAE.FState := 2;
  end;
  
  if(frmObatAE.ShowModal = mrOK) then
  begin
    dmconn.ztblobat.ApplyUpdates;
    dmconn.ztblobat.Refresh;
  end
  else
    dmconn.ztblobat.CancelUpdates;
end;

procedure TfrmObat.btnTambahClick(Sender: TObject);
begin
  AE(true);
end;

procedure TfrmObat.btnEditClick(Sender: TObject);
begin
  AE(false);
end;

procedure TfrmObat.FormCreate(Sender: TObject);
begin
  dmconn.ztblobat.Active := true;
end;

end.
