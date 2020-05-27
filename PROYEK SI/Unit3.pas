unit Unit3;   //form tentang software

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, ExtCtrls, ASLink;

type
  TFormTentangSoftware = class(TForm)
    Panel1: TPanel;
    RichEdit1: TRichEdit;
    Panel2: TPanel;
    BtKeluar: TButton;
    LinkPoltek: TASLink;
    Label1: TLabel;
    LinkEmail: TASLink;
    procedure BtKeluarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTentangSoftware: TFormTentangSoftware;

implementation
Uses Xpman;

{$R *.dfm}

procedure TFormTentangSoftware.BtKeluarClick(Sender: TObject);
var konfirmasi : integer;
begin
  konfirmasi := application.MessageBox('Yakin Mau Keluar ?','KonFirmasi Tutup Form',MB_YESNO or Mb_IconInformation);
  if konfirmasi = idyes then
  Close;//keluar dari form ini, menuju ke form sebelumnya
end;

end.
