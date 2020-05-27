unit UnitResep;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, sBitBtn, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, Grids, DBGrids;

type
  TfrmDataResep = class(TForm)
    DBGrid1: TDBGrid;
    ZQry: TZQuery;
    DS: TDataSource;
    btnDetail: TBitBtn;
    BtnRefresh: TBitBtn;
    btnTutup: TBitBtn;
    procedure cmdRefreshClick(Sender: TObject);
    procedure btnTutupClick(Sender: TObject);
    procedure btnDetailClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDataResep: TfrmDataResep;

implementation

{$R *.dfm}
uses UnitResepDetail;

procedure TfrmDataResep.cmdRefreshClick(Sender: TObject);
begin
  frmresepdetail.ZQry.Refresh;
  zqry.Refresh;
end;

procedure TfrmDataResep.btnTutupClick(Sender: TObject);
begin
  close();
end;

procedure TfrmDataResep.btnDetailClick(Sender: TObject);
begin
  frmresepdetail.ShowModal;
end;

procedure TfrmDataResep.FormCreate(Sender: TObject);
begin
  zqry.Active := true;
end;

end.
