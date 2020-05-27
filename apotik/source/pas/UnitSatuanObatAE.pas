unit UnitSatuanObatAE;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, sBitBtn;

type
  TfrmSatuanObatAE = class(TForm)
    Label1: TLabel;
    Label3: TLabel;
    edtSatuan: TEdit;
    btnSimpan: TBitBtn;
    btnBatal: TBitBtn;
    procedure AddMode();
    procedure EditMode();
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
  frmSatuanObatAE: TfrmSatuanObatAE;

implementation

{$R *.dfm}

Uses UnitSatuanObat;

procedure TfrmSatuanObatAE.AddMode();
begin
  caption := 'Tambah Satuan';
  edtsatuan.Text := '';
end;

procedure TfrmSatuanObatAE.EditMode();
begin
  caption := 'Edit Satuan';
  edtsatuan.Text := frmSatuanObat.ZTbl.fields[0].Value;
end;

procedure TfrmSatuanObatAE.btnBatalClick(Sender: TObject);
begin
  close();
end;

procedure TfrmSatuanObatAE.btnSimpanClick(Sender: TObject);
begin
  if(edtSatuan.Text = '') then
    MessageDlg('Isi satuan terlebih dahulu.', mtwarning, [mbok], 0)
  else
  begin
    With frmSatuanObat.ZTbl do
    begin
      If(FState = 1) then
        Insert
      else
        Edit;
      Fields[0].Value := edtsatuan.Text;
      applyupdates;
      refresh;
    end;
    Close();
  end;
end;

procedure TfrmSatuanObatAE.FormShow(Sender: TObject);
begin
  if(FState = 1) then
    AddMode
  else
    EditMode;
end;

end.
