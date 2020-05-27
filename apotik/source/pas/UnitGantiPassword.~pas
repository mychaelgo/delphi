unit UnitGantiPassword;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Mask, DBCtrls, StdCtrls, Buttons, sBitBtn, UnitDMConn, DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, ZAbstractTable, UnitDM;

type
  TfrmGantiPassword = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label5: TLabel;
    Label10: TLabel;
    edtPasswordBaru2: TEdit;
    Label7: TLabel;
    Label6: TLabel;
    DS: TDataSource;
    ZTbl: TZTable;
    edtPasswordLama: TEdit;
    edtPasswordBaru: TEdit;
    btnSimpan: TBitBtn;
    btnBatal: TBitBtn;
    procedure btnBatalClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnSimpanClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmGantiPassword: TfrmGantiPassword;

implementation

{$R *.dfm}

procedure TfrmGantiPassword.btnBatalClick(Sender: TObject);
begin
  close();
end;

procedure TfrmGantiPassword.FormCreate(Sender: TObject);
begin
  ztbl.Filter := 'id=' + inttostr(dm.CurrUser.ID);
  ztbl.Filtered := true;
end;

procedure TfrmGantiPassword.btnSimpanClick(Sender: TObject);
begin
  if(edtpasswordlama.Text = '') or (edtpasswordbaru.Text ='') then
  begin
    MessageDlg('Lengkapi data terlebih dahulu', mtwarning, [mbok], 0);
  end
  else if(edtpasswordbaru.Text <> edtpasswordbaru2.Text) then
  begin
    MessageDlg('Password baru dan konfirmasi password tidak sama', mtwarning, [mbok], 0);
  end
  else if(edtpasswordlama.Text <> ztbl.fields[2].Value) then
  begin
    MessageDlg('Password lama yang Anda masukkan salah', mtwarning, [mbok], 0);
  end
  else
  begin
    ztbl.Edit;
    ztbl.Fields[2].Value := edtpasswordbaru2.Text;
    ztbl.ApplyUpdates;
    MessageDlg('Password Anda berhasil diganti', mtinformation, [mbok], 0);
    ModalResult := mrOK;
  end;
end;

end.
