unit UnitDokterAE;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, UnitDMConn, DB, ZAbstractRODataset,
  ZAbstractDataset, ZAbstractTable, ZDataset, Buttons, UnitDM, sBitBtn;

type
  TfrmDokterAE = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    edtKode: TEdit;
    edtNama: TEdit;
    edtTelepon: TEdit;
    mmAlamat: TMemo;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    ZTable1: TZTable;
    DataSource1: TDataSource;
    cmbSpesialis: TDBLookupComboBox;
    btnSimpan: TBitBtn;
    btnBatal: TBitBtn;
    function IsAllFilled():Boolean;
    procedure AddMode();
    procedure EditMode();
    procedure FormShow(Sender: TObject);
    procedure btnBatalClick(Sender: TObject);
    procedure btnSimpanClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure edtTeleponKeyPress(Sender: TObject; var Key : char);
  private
    { Private declarations }
  public
    { Public declarations }
    FState : Integer;
  end;

var
  frmDokterAE: TfrmDokterAE;

implementation

{$R *.dfm}

uses UnitDokter;

procedure TfrmDokterAE.AddMode();
begin
  caption := 'Tambah Dokter';
  edtkode.Text := '';
  edtnama.Text := '';
  mmAlamat.Lines.Text := '';
  edttelepon.Text := '';
  cmbspesialis.KeyValue := null;
end;

procedure TfrmDokterAE.EditMode();
begin
  caption := 'Edit Dokter';
  edtkode.Text := frmDokter.ZQry.Fields[0].Value;
  edtnama.Text := frmDokter.ZQry.fields[1].value;
  mmAlamat.Lines.Text := frmDokter.ZQry.fields[2].Value;
  edttelepon.Text := frmdokter.ZQry.fields[3].Value;
  cmbspesialis.KeyValue := frmDokter.ZQry.fields[4].Value;
end;

procedure TfrmDokterAE.FormShow(Sender: TObject);
begin
  if(FState = 1) then
    AddMode
  else
    EditMode;
end;

procedure TfrmDokterAE.btnBatalClick(Sender: TObject);
begin
  close();
end;

function TfrmDokterAE.IsAllFilled():Boolean;
begin
  if(edtKode.Text <> '') and (edtNama.Text <> '') and
      (mmAlamat.Lines.Text <> '') and (cmbSpesialis.KeyValue <> null) and
      (edtTelepon.Text <> '') then
  begin
    result := true;
  end
  else
  begin
    MessageDlg('Lengkapi data terlebih dahulu.', mtwarning, [mbok], 0);
    result := false;
  end;
end;

procedure TfrmDokterAE.btnSimpanClick(Sender: TObject);
begin
  if(IsAllFilled()) then
  begin
    with dmconn.ZQry do
    begin
      if(FState = 1) then
        SQL.Text := 'insert into tbldokter(kode, nama, alamat, telepon, kode_spesialis) ' +
                    'values(:parKode, :parNama, :parAlamat, :parTelepon, :parKodeSpesialis)'
      else
      begin
        SQL.Text := 'update tbldokter set kode=:parKode, nama=:parNama, ' +
                    'alamat=:parAlamat, telepon=:parTelepon, ' +
                    'kode_spesialis=:parKodeSpesialis ' +
                    'where kode=:parOriKode';
        ParamByName('parOriKode').Value := frmDokter.ZQry.Fields[0].Value;
      end;
      ParamByName('parKode').Value := edtkode.Text;
      ParamByName('parNama').value := edtNama.Text;
      ParamByName('parAlamat').Value := mmAlamat.Lines.Text;
      ParamByName('parTelepon').Value := edtTelepon.Text;
      ParamByName('parKodeSpesialis').Value := cmbSpesialis.KeyValue;
      ExecSQL;
    end;
    frmDokter.ZQry.Refresh;
    Close();
  end;
end;

procedure TfrmDokterAE.FormCreate(Sender: TObject);
begin
  ztable1.Active := true;
end;

procedure TfrmDokterAE.edtTeleponKeyPress(Sender: TObject; var Key: char);
begin
  DM.JustNumber(Key);
end;

end.
