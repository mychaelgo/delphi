unit UnitMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus,
  UnitAbout, Unit3, UnitObat, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, ZConnection, Grids, DBGrids, XPMan,
  UnitSatuanObat, UnitObatMasuk, UnitObatKeluar, sSkinManager,
  UnitDM, UnitPbf, UnitRetur, UStokAwalObat;

type
  TfrmMain = class(TForm)
    MainMenu1: TMainMenu;
    mnuData: TMenuItem;
    mnuObat: TMenuItem;
    Help1: TMenuItem;
    About1: TMenuItem;
    XPManifest1: TXPManifest;
    Account1: TMenuItem;
    mnuGantiPassword: TMenuItem;
    mnuDataPetugas: TMenuItem;
    mnuSatuanObat: TMenuItem;
    mnuTransaksi: TMenuItem;
    mnuObatMasuk: TMenuItem;
    mnuObatKeluar: TMenuItem;
    mnuPbf: TMenuItem;
    mnuDataObatMasuk: TMenuItem;
    mnuDataObatKeluar: TMenuItem;
    mnuDataRetur: TMenuItem;
    mnuRetur: TMenuItem;
    mnuHargaObat: TMenuItem;
    mnuPersediaanObat: TMenuItem;
    mnuLaporan: TMenuItem;
    mnuStockAwalObat: TMenuItem;
    procedure UncheckAllSkinMenu();
  
    procedure Exit1Click(Sender: TObject);
    procedure About1Click(Sender: TObject);
    procedure mnuObatClick(Sender: TObject);
    procedure mnuSatuanObatClick(Sender: TObject);
    procedure mnuObatMasukClick(Sender: TObject);
    procedure mnuObatKeluarClick(Sender: TObject);
    procedure mnuPbfClick(Sender: TObject);
    procedure mnuDataObatMasukClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure mnuDataReturClick(Sender: TObject);
    procedure mnuReturClick(Sender: TObject);
    procedure mnuDataPetugasClick(Sender: TObject);
    procedure mnuHargaObatClick(Sender: TObject);
    procedure mnuPersediaanObatClick(Sender: TObject);
    procedure mnuDataObatKeluarClick(Sender: TObject);
    procedure mnuGantiPasswordClick(Sender: TObject);
    procedure mnuStockAwalObatClick(Sender: TObject);
    
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMain: TfrmMain;

implementation

{$R *.dfm}
uses UnitObatMasukAE, UnitReturAE, UnitDataUser,
UnitHargaObat, UnitPersediaanObat, UnitObatKeluarTran,
UnitGantiPassword;

procedure TfrmMain.Exit1Click(Sender: TObject);
begin
  close();
end;

procedure TfrmMain.About1Click(Sender: TObject);
begin
  frmabout.ShowModal();
end;

procedure TfrmMain.mnuObatClick(Sender: TObject);
begin
  frmobat.ShowModal()
end;

procedure TfrmMain.mnuSatuanObatClick(Sender: TObject);
begin
  frmSatuanObat.ShowModal;
end;

procedure TfrmMain.mnuObatMasukClick(Sender: TObject);
begin
  with frmObatMasukAE do
  begin
    FState := 3;
    ShowModal;
  end;
end;

procedure TfrmMain.mnuObatKeluarClick(Sender: TObject);
begin
  with frmObatKeluarTran do
  begin
    ShowModal;
  end;
end;

procedure TfrmMain.mnuPbfClick(Sender: TObject);
begin
  frmPbf.ShowModal;
end;

procedure TfrmMain.mnuDataObatMasukClick(Sender: TObject);
begin
  frmobatmasuk.ShowModal;
end;

procedure TfrmMain.UncheckAllSkinMenu();
var
  i : integer;
begin
  for i:=0 to (mainmenu1.Items[4].Count - 1) do
  begin
    if(MainMenu1.Items[4].Items[i].Checked) then
      mainmenu1.Items[4].Items[i].Checked := false;
  end;
end;





procedure TfrmMain.FormCreate(Sender: TObject);
begin
    
  if(dm.CurrUser.Status = 1) then
    mnuDataPetugas.Visible := false;
end;

procedure TfrmMain.mnuDataReturClick(Sender: TObject);
begin
  frmRetur.ShowModal;
end;

procedure TfrmMain.mnuReturClick(Sender: TObject);
begin
  with frmReturAE do
  begin
    FState := 3;
    ShowModal;
  end;
end;

procedure TfrmMain.mnuDataPetugasClick(Sender: TObject);
begin
  frmDataUser.ShowModal;
end;

procedure TfrmMain.mnuHargaObatClick(Sender: TObject);
begin
  frmHargaObat.ShowModal;
end;

procedure TfrmMain.mnuPersediaanObatClick(Sender: TObject);
begin
  frmPersediaanObat.ShowModal;
end;

procedure TfrmMain.mnuDataObatKeluarClick(Sender: TObject);
begin
  frmObatKeluar.ShowModal;
end;

procedure TfrmMain.mnuGantiPasswordClick(Sender: TObject);
begin
  frmGantiPassword.ShowModal;
end;

procedure TfrmMain.mnuStockAwalObatClick(Sender: TObject);
begin
  frmstokawalobat.ShowModal;
end;

end.
