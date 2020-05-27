unit UnitObatAE;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, DB, ZAbstractRODataset,
  ZAbstractDataset, ZAbstractTable, ZDataset, UnitDMConn, Buttons, sBitBtn;

type
  TfrmObatAE = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label10: TLabel;
    edtKode: TDBEdit;
    edtNama: TDBEdit;
    edtKeterangan: TDBEdit;
    cmbSatuan: TDBLookupComboBox;
    ZTbl: TZTable;
    DS: TDataSource;
    btnSimpan: TBitBtn;
    btnBatal: TBitBtn;
    function IsAllFilled():Boolean;
    procedure btnBatalClick(Sender: TObject);
    procedure btnSimpanClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    FState : Integer;
  end;

var
  frmObatAE: TfrmObatAE;

implementation

{$R *.dfm}

uses UnitObat;

function TfrmObatAE.IsAllFilled():Boolean;
begin
  If(edtKode.Text <> '') and (edtNama.Text <> '') and
      (cmbsatuan.KeyValue <> null) then
    result := true
  else
  begin
    MessageDlg('Lengkapi data terlebih dahulu.', mtwarning, [mbok], 0);
    result := false;
  end;
end;

procedure TfrmObatAE.btnBatalClick(Sender: TObject);
begin
  ModalResult := mrAbort;
end;

procedure TfrmObatAE.btnSimpanClick(Sender: TObject);
begin
  if(IsAllFilled()) then
    ModalResult := mrOK;
end;

procedure TfrmObatAE.FormShow(Sender: TObject);
begin
  if(FState = 1) then
    Caption := 'Input Obat Masuk'
  else
    Caption := 'Edit Obat Masuk';
end;

end.
