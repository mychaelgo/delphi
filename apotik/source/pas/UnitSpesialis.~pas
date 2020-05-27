unit UnitSpesialis;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, Grids, DBGrids, UnitDMConn, ZAbstractTable,
  ExtCtrls, DBCtrls, Buttons, sBitBtn;

type
  TfrmSpesialis = class(TForm)
    ZQry: TZQuery;
    DS: TDataSource;
    DBGrid1: TDBGrid;
    btnTambah: TBitBtn;
    btnEdit: TBitBtn;
    btnHapus: TBitBtn;
    btnTutup: TBitBtn;
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
  frmSpesialis: TfrmSpesialis;

implementation

{$R *.dfm}

uses UnitSpesialisAE;

procedure TfrmSpesialis.btnTutupClick(Sender: TObject);
begin
  close();
end;

procedure TfrmSpesialis.btnTambahClick(Sender: TObject);
begin
  with frmSpesialisAE do
  begin
    FState := 1;
    ShowModal;
  end;
end;

procedure TfrmSpesialis.btnEditClick(Sender: TObject);
begin
  with frmSpesialisAE do
  begin
    FState := 2;
    ShowModal;
  end;
end;

procedure TfrmSpesialis.btnHapusClick(Sender: TObject);
begin
  If(MessageDlg('Hapus data?', mtconfirmation, [mbyes, mbno], 0) = mryes) then
  begin
    zqry.Delete;
    zqry.Refresh;
  end;
end;



procedure TfrmSpesialis.FormCreate(Sender: TObject);
begin
  zqry.Active := true;
end;

end.
