unit input;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, DBTables, Grids, DBGrids, Menus, ExtCtrls,
  QuickRpt, QRCtrls, ADODB;

type
  Tfrm_input = class(TForm)
    Nis: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    ednis: TEdit;
    ednama: TEdit;
    cbokelas: TComboBox;
    cbojurusan: TComboBox;
    simpan: TButton;
    hapus: TButton;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    a: TTable;
    menu1: TMainMenu;
    Program1: TMenuItem;
    LogoutKelua1: TMenuItem;
    edit: TButton;
    laporan: TButton;
    report: TQuickRep;
    QRBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRSysData1: TQRSysData;
    QRBand3: TQRBand;
    QRBand4: TQRBand;
    QRLabel2: TQRLabel;
    QRDBText1: TQRDBText;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRSysData2: TQRSysData;
    baru: TButton;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure simpanClick(Sender: TObject);
    procedure hapusClick(Sender: TObject);
    procedure laporanClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_input: Tfrm_input;

implementation

uses login;

{$R *.dfm}

procedure Tfrm_input.FormCreate(Sender: TObject);
begin
  ednis.Text:='';
  ednama.Text:='';
  cbokelas.Items.Append('1');
  cbokelas.Items.Append('2');
  cbokelas.Items.Append('3');
  cbojurusan.Items.Append('TRPL');
  cbojurusan.Items.Append('TKJ');
  cbojurusan.Items.Append('TGB');
  cbojurusan.Items.Append('TMO');
  cbojurusan.Items.Append('TKB');
end;

procedure Tfrm_input.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  frm_login.Show;
end;

procedure Tfrm_input.simpanClick(Sender: TObject);
begin
if a.FindKey([ednis.Text])=true then
  ShowMessage('Nisn Sudah ada....')
else
  a.Append;
  a['Nis']:=ednis.Text;
  a['Nama']:=ednama.Text;
  a['Kelas']:=cbokelas.Text;
  a['Jurusan']:=cbojurusan.Text;
  a.Refresh;
end;

procedure Tfrm_input.hapusClick(Sender: TObject);
begin
  a.Delete;
end;

procedure Tfrm_input.laporanClick(Sender: TObject);
begin
  report.PreviewModal;
end;

end.
