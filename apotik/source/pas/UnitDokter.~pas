unit UnitDokter;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, Grids,
  DBGrids, StdCtrls, ExtCtrls, DBCtrls, UnitDMConn, Buttons, sBitBtn;

type
  TfrmDokter = class(TForm)
    ZQry: TZQuery;
    DS: TDataSource;
    DBGrid1: TDBGrid;
    btnTambah: TBitBtn;
    btnEdit: TBitBtn;
    btnHapus: TBitBtn;
    btnTutup: TBitBtn;
    
    procedure btnTambahClick(Sender: TObject);
    procedure btnTutupClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure btnHapusClick(Sender: TObject);
    procedure DSDataChange(Sender: TObject; Field: TField);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDokter: TfrmDokter;

implementation

{$R *.dfm}
uses UnitDokterAE;

procedure TfrmDokter.btnTambahClick(Sender: TObject);
begin
  with frmdokterae do
  begin
    FState := 1;
    ShowModal;
  end;
end;

procedure TfrmDokter.btnTutupClick(Sender: TObject);
begin
  close();
end;

procedure TfrmDokter.btnEditClick(Sender: TObject);
begin
  with frmdokterae do
  begin
    FState := 2;
    ShowModal;
  end;
end;

procedure TfrmDokter.btnHapusClick(Sender: TObject);
begin
  if(MessageDlg('Hapus data?', mtconfirmation,
      [mbyes, mbno], 0) = mryes) then
  begin
   with DMConn.ZQry do
    begin
      SQL.Text := 'delete from tbldokter where kode=:parKode';
      ParamByName('parKode').Value := zqry.Fields[0].Value;
      ExecSQL;
    end;
    ZQry.Refresh;
  end;
end;

procedure TfrmDokter.DSDataChange(Sender: TObject; Field: TField);
begin
  if(zqry.recordcount > 0) then
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

procedure TfrmDokter.FormCreate(Sender: TObject);
begin
  zqry.Active := true;
end;

end.
