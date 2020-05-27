unit UnitPbfAE;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, Mask, UnitDM, Buttons, sBitBtn;

type
  TfrmPbfAE = class(TForm)
    Label1: TLabel;
    Label6: TLabel;
    Label2: TLabel;
    Label7: TLabel;
    Label3: TLabel;
    Label8: TLabel;
    Label4: TLabel;
    Label9: TLabel;
    Label5: TLabel;
    Label10: TLabel;
    edtKode: TDBEdit;
    edtNama: TDBEdit;
    edtTelepon: TDBEdit;
    edtEmail: TDBEdit;
    mmAlamat: TDBMemo;
    btnSimpan: TBitBtn;
    btnBatal: TBitBtn;
    procedure AddMode();
    procedure EditMode();
    procedure btnBatalClick(Sender: TObject);
    procedure btnSimpanClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edtTeleponKeyPress(Sender: TObject; var Key : Char);
  private
    { Private declarations }
  public
    { Public declarations }
    FState : integer;
  end;

var
  frmPbfAE: TfrmPbfAE;

implementation

{$R *.dfm}
uses UnitPbf;

procedure TfrmPbfAE.btnBatalClick(Sender: TObject);
begin
  frmPbf.ZTbl.CancelUpdates;
  modalresult := mrAbort;
end;

procedure TfrmPbfAE.btnSimpanClick(Sender: TObject);
begin
  if(edtkode.Text = '') or (edtnama.Text = '') or (edttelepon.Text = '') then
    MessageDlg('Kode, Nama, dan Telepon harus diisi.', mtwarning, [mbok], 0)
  else
  begin
    frmpbf.ZTbl.ApplyUpdates;
    frmpbf.ZTbl.Refresh;
    ModalResult := mrOk;
  end;
end;

procedure TfrmPbfAE.AddMode();
begin
  Caption := 'Tambah PBF';
  frmPbf.ZTbl.Append;
end;

procedure TfrmPbfAE.EditMode();
begin
  Caption := 'Edit PBF';
  frmpbf.ZTbl.Edit;
end;

procedure TfrmPbfAE.FormShow(Sender: TObject);
begin
  If(FState = 1) then
    AddMode()
  else
    EditMode();
end;

procedure TfrmPbfAE.edtTeleponKeyPress(Sender: TObject; var Key : Char);
begin
  DM.JustNumber(Key);
end;

end.
