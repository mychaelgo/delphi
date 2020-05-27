unit UnitObatKeluar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, StdCtrls,
  Grids, DBGrids, UnitDMConn, Buttons, sBitBtn, RpDefine, RpCon, RpConDS;

type
  TfrmObatKeluar = class(TForm)
    DBGrid1: TDBGrid;
    DS: TDataSource;
    ZQry: TZQuery;
    cmdRefresh: TBitBtn;
    btnTutup: TBitBtn;
    RvObatKeluar: TRvDataSetConnection;
    btnReport: TBitBtn;
    procedure btnTutupClick(Sender: TObject);
    procedure cmdRefreshClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnReportClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmObatKeluar: TfrmObatKeluar;

implementation

{$R *.dfm}

procedure TfrmObatKeluar.btnTutupClick(Sender: TObject);
begin
  Close();
end;

procedure TfrmObatKeluar.cmdRefreshClick(Sender: TObject);
begin
  zqry.Refresh;
end;

procedure TfrmObatKeluar.FormCreate(Sender: TObject);
begin
  zqry.Active := true;
end;

procedure TfrmObatKeluar.btnReportClick(Sender: TObject);
begin
  dmconn.RvSIPDO.ExecuteReport('Report3');
end;

end.
