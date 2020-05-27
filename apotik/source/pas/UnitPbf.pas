unit UnitPbf;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, DB, ZAbstractRODataset, ZAbstractDataset,
  ZAbstractTable, ZDataset, StdCtrls, UnitDMConn, Buttons, sBitBtn;

type
  TfrmPbf = class(TForm)
    DS: TDataSource;
    Ztbl: TZTable;
    DBGrid1: TDBGrid;
    btnTambah: TBitBtn;
    btnEdit: TBitBtn;
    btnEditf: TBitBtn;
    btnTutup: TBitBtn;
    procedure AE(State: Integer);
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
  frmPbf: TfrmPbf;

implementation

{$R *.dfm}
uses UnitPbfAE;

procedure TfrmPbf.btnTutupClick(Sender: TObject);
begin
  close();
end;

procedure TfrmPbf.btnHapusClick(Sender: TObject);
begin
  if(MessageDlg('Hapus Data?', mtconfirmation, [mbYes, mbNo], 0) = mrYes) then
    Ztbl.Delete;
end;

Procedure TfrmPbf.AE(State : Integer);
begin
   with frmPbfAE do
   begin
    FState := State;
    ShowModal;
   end;
end;

procedure TfrmPbf.btnTambahClick(Sender: TObject);
begin
  AE(1);
end;

procedure TfrmPbf.btnEditClick(Sender: TObject);
begin
  AE(2);
end;

procedure TfrmPbf.FormCreate(Sender: TObject);
begin
  ztbl.Active := true;
end;

end.
