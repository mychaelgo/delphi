unit UnitSatuanObat;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, UnitDMConn, DB, ZAbstractRODataset,
  ZAbstractDataset, ZAbstractTable, ZDataset, Buttons, sBitBtn;

type
  TfrmSatuanObat = class(TForm)
    ZTbl: TZTable;
    DS: TDataSource;
    DBGrid1: TDBGrid;
    btnTambah: TBitBtn;
    BtnEdit: TBitBtn;
    BtnHapus: TBitBtn;
    btnTutup: TBitBtn;
    procedure DSDataChange(Sender: TObject; Field: TField);
    procedure btnTutupClick(Sender: TObject);
    procedure btnTambahClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure btnHapusClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSatuanObat: TfrmSatuanObat;

implementation

{$R *.dfm}

uses UnitSatuanObatAE;
procedure TfrmSatuanObat.DSDataChange(Sender: TObject; Field: TField);
begin
  if(ZTbl.RecordCount >0) then
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

procedure TfrmSatuanObat.btnTutupClick(Sender: TObject);
begin
  close();
end;

procedure TfrmSatuanObat.btnTambahClick(Sender: TObject);
begin
  with frmSatuanObatAE do
  begin
    FState := 1;
    ShowModal;
  end;
end;

procedure TfrmSatuanObat.btnEditClick(Sender: TObject);
begin
  with frmSatuanObatAE do
  begin
    FState := 2;
    ShowModal;
  end;
end;

procedure TfrmSatuanObat.btnHapusClick(Sender: TObject);
begin
  if(MessageDlg('Hapus data?', mtconfirmation, [mbYes, mbNo], 0) = mrYes) then
    ztbl.Delete;
end;

procedure TfrmSatuanObat.FormCreate(Sender: TObject);
begin
  ztbl.Active := true;
end;

end.
