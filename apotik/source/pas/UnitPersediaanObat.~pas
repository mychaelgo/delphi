unit UnitPersediaanObat;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UnitDMConn, Grids, DBGrids, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, StdCtrls, Buttons, sBitBtn;

type
  TfrmPersediaanObat = class(TForm)
    ZQry: TZQuery;
    DS: TDataSource;
    DBGrid1: TDBGrid;
    cmdRefresh: TBitBtn;
    BtnTutup: TBitBtn;
    procedure btnTutupClick(Sender: TObject);
    procedure cmdRefreshClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPersediaanObat: TfrmPersediaanObat;

implementation

{$R *.dfm}

procedure TfrmPersediaanObat.btnTutupClick(Sender: TObject);
begin
  close();
end;

procedure TfrmPersediaanObat.cmdRefreshClick(Sender: TObject);
begin
  zqry.Refresh;
end;

procedure TfrmPersediaanObat.FormCreate(Sender: TObject);
begin
  zqry.Active := true;
end;

end.
