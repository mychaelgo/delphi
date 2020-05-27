unit UnitObatMasukAE;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UnitDMConn, StdCtrls, ComCtrls, DBCtrls, DB, ZAbstractRODataset,
  ZAbstractDataset, ZAbstractTable, ZDataset, UnitDM, Buttons, sBitBtn,
  Mask;

type
  TfrmObatMasukAE = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label9: TLabel;
    Label8: TLabel;
    Label7: TLabel;
    Label6: TLabel;
    DTPick: TDateTimePicker;
    Label5: TLabel;
    Label10: TLabel;
    cmbObat: TDBLookupComboBox;
    cmbPbf: TDBLookupComboBox;
    DS: TDataSource;
    btnSimpan: TBitBtn;
    btnBatal: TBitBtn;
    edtJumlah: TDBEdit;
    edtHargaSatuan: TDBEdit;
    procedure AddMode();
    procedure EditMode();
    procedure btnBatalClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnSimpanClick(Sender: TObject);
    procedure edtJumlahKeyPress(Sender: TObject; var Key : Char);
    procedure edtHargaSatuanKeyPress(Sender: TObject; var Key : Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
    FState : Integer;
    ID : Integer;
  end;

var
  frmObatMasukAE: TfrmObatMasukAE;

implementation

{$R *.dfm}
uses UnitObatMasuk, UnitObat, UnitPbf;

procedure TfrmObatMasukAE.btnBatalClick(Sender: TObject);
begin
  ModalResult := mrAbort;
end;

procedure TfrmObatMasukAE.AddMode();
begin
  dmconn.ZTblObatMasuk.Append;
  dmconn.ZTblobatmasuk['tgl_masuk'] := FormatDateTime('yyyy-MM-dd', now());
end;

procedure TfrmObatMasukAE.EditMode();
begin
  dmconn.ZTblObatMasuk.Edit;
end;

procedure TfrmObatMasukAE.FormShow(Sender: TObject);
begin
   if(FState = 2) then
   begin
     Caption := 'Edit Obat Masuk';
     EditMode();
   end
   else
   begin
    Caption := 'Input Obat Masuk';
    AddMode();
   end;
end;

procedure TfrmObatMasukAE.btnSimpanClick(Sender: TObject);
begin
  if(cmbobat.KeyValue = null) or (cmbpbf.KeyValue = null)
    or (edtjumlah.Text = '') or (edthargasatuan.Text = '') then
    MessageDlg('Lengkapi data terlebih dahulu.', mtwarning, [mbok], 0)
  else
  begin
      dmconn.ZTblobatmasuk['expired_date'] := DateToStr(DTPick.Date);
      dmconn.ZTblObatMasuk.Post;

      if(FState = 2) or (FState = 1) then
        modalresult := mrOK
      else
      begin
        MessageDlg('Data sudah disimpan', mtinformation, [mbok], 0);
        addmode();
      end;
  end;
end;

procedure TfrmObatMasukAE.edtJumlahKeyPress(Sender: TObject; var Key : Char);
begin
  DM.JustNumber(Key);
end;

procedure TfrmObatMasukAE.edtHargaSatuanKeyPress(Sender: TObject; var Key : Char);
begin
  DM.JustNumber(Key);
end;

procedure TfrmObatMasukAE.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  dmconn.ZTblObatMasuk.CancelUpdates;
end;

end.
