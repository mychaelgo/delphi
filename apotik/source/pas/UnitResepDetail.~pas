unit UnitResepDetail;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, sBitBtn, Grids, DBGrids, Mask, DBCtrls, DB,
  ZAbstractRODataset, UnitDmconn, ZAbstractDataset, ZDataset, RpDefine, RpCon, RpConDS;

type
  TfrmResepDetail = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    DBGrid1: TDBGrid;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DS: TDataSource;
    ZQry: TZQuery;
    btnTutup: TBitBtn;
    RvDetailResep: TRvDataSetConnection;
    btnReport: TBitBtn;
    procedure btnTutupClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnReportClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmResepDetail: TfrmResepDetail;

implementation

{$R *.dfm}
uses UnitResep;

procedure TfrmResepDetail.btnTutupClick(Sender: TObject);
begin
  close();
end;

procedure TfrmResepDetail.FormShow(Sender: TObject);
begin
  zqry.Filter := 'id=' + inttostr(strtoint(frmdataresep.ZQry.fields[0].value));
  zqry.filtered := true;
end;

procedure TfrmResepDetail.FormCreate(Sender: TObject);
begin
  zqry.Active := true;
end;

procedure TfrmResepDetail.btnReportClick(Sender: TObject);
begin
  with dmconn.RvSIPDO do
  begin
     SetParam('nama_pasien', dbedit1.Text);
     setparam('nama_dokter', dbedit2.Text);
     setparam('tgl', dbedit3.Text);
     ExecuteReport('Report2'); 
  end;
end;

end.
