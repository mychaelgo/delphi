unit UnitDataUserAE;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, Mask, Buttons, sBitBtn;

type
  TfrmDataUserAE = class(TForm)
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label4: TLabel;
    Label3: TLabel;
    Label2: TLabel;
    Label1: TLabel;
    Label5: TLabel;
    Label10: TLabel;
    edtUsername: TDBEdit;
    edtPassword: TDBEdit;
    edtTelepon: TDBEdit;
    mmAlamat: TDBMemo;
    Edit1: TEdit;
    btnSimpan: TBitBtn;
    btnBatal: TBitBtn;
    procedure btnBatalClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnSimpanClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDataUserAE: TfrmDataUserAE;

implementation

{$R *.dfm}
uses UnitDataUser;

procedure TfrmDataUserAE.btnBatalClick(Sender: TObject);
begin
  frmDataUser.ZQry.CancelUpdates;
  ModalResult := mrAbort;
end;

procedure TfrmDataUserAE.FormShow(Sender: TObject);
begin
  frmDataUser.ZQry.Insert;
end;

procedure TfrmDataUserAE.btnSimpanClick(Sender: TObject);
begin
  frmDataUser.ZQry.Fields[5].Value := 1;
  frmDataUser.ZQry.ApplyUpdates;
  modalResult := mrOK;
end;

end.
