unit UnitSpesialisAE;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ZConnection, StdCtrls, Buttons, sBitBtn;

type
  TfrmSpesialisAE = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    edtKode: TEdit;
    edtDesk: TEdit;
    btnSimpan: TBitBtn;
    BtnBatal: TBitBtn;
    procedure AddMode();
    procedure EditMode();
    procedure FormShow(Sender: TObject);
    procedure btnBatalClick(Sender: TObject);
    procedure btnSimpanClick(Sender: TObject);
  private
    { Private declarations }

  public
    { Public declarations }
    FState : Integer;
  end;

var
  frmSpesialisAE: TfrmSpesialisAE;
  FState : integer;

implementation

{$R *.dfm}

uses UnitSpesialis;


procedure TfrmSpesialisAE.AddMode();
begin
  edtkode.Text := '';
  edtdesk.Text := '';
  caption := 'Tambah Spesialis';
end;

procedure TfrmSpesialisAE.EditMode();
begin
  caption := 'Edit Spesialis';
  edtkode.Text := frmspesialis.ZQry.Fields[0].Value;
  edtdesk.Text := frmspesialis.ZQry.fields[1].value;
end;

procedure TfrmSpesialisAE.FormShow(Sender: TObject);
begin
  if(FState = 1) then
    AddMode
  else
    EditMode;
end;

procedure TfrmSpesialisAE.btnBatalClick(Sender: TObject);
begin
  close();
end;

procedure TfrmSpesialisAE.btnSimpanClick(Sender: TObject);
begin
  If((edtkode.Text <> '') and (edtdesk.Text <> '')) then
  begin
    with frmspesialis.ZQry do
    begin
      if(FState = 1) then
        Insert
      else
        Edit;
      Fields[0].value := edtkode.text;
      Fields[1].value := edtdesk.text;
      ApplyUpdates;
      refresh;
    end;
    close();
  end
  else
    MessageDlg('Lengkapi data terlebih dahulu',
                mtwarning, [mbok], 0);
end;

end.
