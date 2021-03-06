unit UnitHargaObatSet;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, UnitDM, UnitDMConn, Buttons, sBitBtn;

type
  TfrmHargaObatSet = class(TForm)
    edtHarga: TEdit;
    edtNamaObat: TEdit;
    Label6: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label7: TLabel;
    btnSimpan: TBitBtn;
    btnBatal: TBitBtn;
    procedure edtHargaKeyPress(Sender: TObject; var Key:Char);
    procedure edtNamaObatKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure btnBatalClick(Sender: TObject);
    procedure btnSimpanClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    KodeObat : String;
  end;

var
  frmHargaObatSet: TfrmHargaObatSet;

implementation

{$R *.dfm}

procedure TfrmHargaObatSet.FormShow(Sender: TObject);
begin
  edtHarga.Text := '';
end;

procedure TfrmHargaObatSet.btnBatalClick(Sender: TObject);
begin
  ModalResult := mrAbort;
end;

procedure TfrmHargaObatSet.btnSimpanClick(Sender: TObject);
begin
  with DMConn.ZQry do
  begin
    sql.Text := 'UPDATE TblHarga SET Akhir=sysdate() where Akhir is null and Kode_Obat=:parKodeObat';
    ParamByName('parKodeObat').Value := KodeObat;
    ExecSQL;
    sql.Text := 'INSERT INTO TblHarga VALUES(:parKodeObat, :parHarga, sysdate(), null)';
    ParamByName('parKodeObat').Value := KodeObat;
    ParamByName('parHarga').Value := edtHarga.Text;
    ExecSQL;
  end;
  ModalResult := mrOK;
end;

procedure TfrmHargaObatSet.edtNamaObatKeyPress(Sender: TObject; var Key: char);
begin
  Key := chr(0);
end;

procedure TfrmHargaObatSet.edtHargaKeyPress(Sender: TObject; var Key: char);
begin
  DM.JustNumber(Key);
end;

end.
