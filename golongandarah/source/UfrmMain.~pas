unit UfrmMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, Grids, DBGrids, StdCtrls, Mask, DBCtrls, ComCtrls,
  Buttons, ExtCtrls, XPMan, RpDefine, RpCon, RpConDS;

type
  TfrmMain = class(TForm)
    ATblGolDarah: TADOTable;
    DSData: TDataSource;
    DSGolonganDarah: TDataSource;
    ATblJenisKelamin: TADOTable;
    DSJenisKelamin: TDataSource;
    DSProvinsi: TDataSource;
    GroupBox2: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    edtNama: TDBEdit;
    edtTempatLahir: TDBEdit;
    edtTelepon: TDBEdit;
    edtHandphone: TDBEdit;
    mCatatanKhusus: TDBMemo;
    mAlamat: TDBMemo;
    edtKota: TDBEdit;
    edtKodepos: TDBEdit;
    edtEmail: TDBEdit;
    dtpTanggalLahir: TDateTimePicker;
    DBLookupComboBox1: TDBLookupComboBox;
    cmbGolonganDarah: TDBLookupComboBox;
    cmbProvinsi: TDBLookupComboBox;
    GroupBox1: TGroupBox;
    DBGrid1: TDBGrid;
    ATblData: TADOTable;
    ATblDataid: TAutoIncField;
    ATblDatanama: TWideStringField;
    ATblDatatempat_lahir: TWideStringField;
    ATblDatatgl_lahir: TDateTimeField;
    ATblDatajenis_kelamin: TSmallintField;
    ATblDataid_golongan_darah: TSmallintField;
    ATblDatatelp: TWideStringField;
    ATblDatahp: TWideStringField;
    ATblDataemail: TWideStringField;
    ATblDataalamat: TMemoField;
    ATblDatakota: TWideStringField;
    ATblDataid_provinsi: TSmallintField;
    ATblDatakodepos: TWideStringField;
    ATblDatacatatan_khusus: TMemoField;
    ATblDatadesc_golongan_darah: TStringField;
    ATblDatadesc_provinsi: TStringField;
    ATblDatadesc_jenis_kelamin: TStringField;
    AQryProvinsi: TADOQuery;
    GroupBox3: TGroupBox;
    edtFilterNama: TEdit;
    Label27: TLabel;
    btnCari: TButton;
    Label28: TLabel;
    cmbFilterJenisKelamin: TComboBox;
    Label29: TLabel;
    cmbFilterGolonganDarah: TComboBox;
    Label30: TLabel;
    edtFilterKota: TEdit;
    btnUnfilter: TButton;
    Label31: TLabel;
    lblTotalData: TLabel;
    RvData: TRvDataSetConnection;
    btnTambah: TButton;
    btnSimpan: TButton;
    btnBatal: TButton;
    btnHapus: TButton;
    btnPrint: TButton;
    procedure DrawItemCombo(var ComboBox : TComboBox; Index:Integer; Rect: TRect);
    procedure FillComboBoxFromTable(var ComboBox : TComboBox; Table : TADOTable);
    function AddFilter(DataFilter : string; Filter : string):string;
    procedure ResetFilter();
    procedure btnSimpanClick(Sender: TObject);
    procedure btnTambahClick(Sender: TObject);
    procedure btnBatalClick(Sender: TObject);
    procedure DSDataDataChange(Sender: TObject; Field: TField);
    procedure btnHapusClick(Sender: TObject);
    procedure btnCariClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cmbFilterGolonganDarahDrawItem(Control: TWinControl;
      Index: Integer; Rect: TRect; State: TOwnerDrawState);
    procedure cmbFilterJenisKelaminDrawItem(Control: TWinControl;
      Index: Integer; Rect: TRect; State: TOwnerDrawState);
    procedure btnUnfilterClick(Sender: TObject);
    procedure btnPrintClick(Sender: TObject);
    
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMain: TfrmMain;

implementation
uses UDM;
{$R *.dfm}

procedure TfrmMain.btnSimpanClick(Sender: TObject);
var
  IsInsert : boolean;
begin
  try
    IsInsert := false;
    if(atbldata.State = dsinsert) then
      IsInsert := true
    else if(atbldata.State <> dsedit) then
      atbldata.Edit;
    atbldata.FieldByName('tgl_lahir').Value := datetostr(dtptanggallahir.Date);
    atbldata.post;

    if(IsInsert = true) then
    begin
      resetfilter();
      atbldata.last;
    end;
  except
    MessageDlg('Gagal menyimpan, "Nama" harus diisi.', mtwarning, [mbok], 0);
  end;
end;

procedure TfrmMain.btnTambahClick(Sender: TObject);
begin
  atbldata.Append;
end;

procedure TfrmMain.btnBatalClick(Sender: TObject);
begin
  atbldata.Cancel;
end;

procedure TfrmMain.DSDataDataChange(Sender: TObject; Field: TField);
begin
  if(atbldata.State <> dsinsert) and
    (atbldata.State <> dsedit) and
    (atbldata.RecordCount > 0) and
    (atbldata['tgl_lahir'] <> null) then
    dtptanggallahir.Date := atbldata.fieldbyname('tgl_lahir').value;

  lbltotaldata.Caption := inttostr(atbldata.RecordCount);
end;

procedure TfrmMain.btnHapusClick(Sender: TObject);
begin
  if(MessageDlg('Anda yakin akan menghapus data "' + atbldata['nama'] + '"?', mtconfirmation, [mbyes, mbno], 0) = mryes) then
    atbldata.Delete;
end;

function TfrmMain.AddFilter(DataFilter : string; Filter : string) : string;
begin
    if(datafilter <> '') then
       datafilter := datafilter + ' and ' + filter
    else
       datafilter := filter;
    result := datafilter;
end;

procedure TfrmMain.btnCariClick(Sender: TObject);
begin
  atbldata.Filtered := false;

  if(edtfilternama.Text <> '') then
    atbldata.Filter := 'nama like ''%' + edtfilternama.Text + '%'''
  else
    atbldata.Filter := '';

  if(cmbfilterjeniskelamin.itemindex <> 0) then
    atbldata.Filter := addfilter(atbldata.filter, 'jenis_kelamin=' + cmbfilterjeniskelamin.Items.Names[cmbfilterjeniskelamin.itemindex]);

  if(cmbfiltergolongandarah.ItemIndex <> 0) then
    atbldata.Filter := addfilter(atbldata.filter, 'id_golongan_darah=' + cmbfiltergolongandarah.Items.Names[cmbfiltergolongandarah.itemindex]);

  if(edtfilterkota.Text <> '') then
    atbldata.Filter := addfilter(atbldata.Filter, 'kota like ''%' + edtfilterkota.Text + '%''');
    
  atbldata.Filtered := true;
end;

procedure TFrmMain.FillComboBoxFromTable(var ComboBox : TComboBox; Table : TADOTable);
begin
   table.First;
   while not table.Eof do
   begin
       combobox.Items.Add(inttostr(table['id']) + '=' + table['desc']);
       table.Next;
   end;
   combobox.ItemIndex := 0;
end;

procedure TfrmMain.FormCreate(Sender: TObject);
begin
  FillComboBoxFromTable(cmbFilterJenisKelamin, ATblJenisKelamin);
  fillcomboboxfromtable(cmbfiltergolongandarah, ATblGolDarah);
end;

procedure TfrmMain.DrawItemCombo(var ComboBox : TComboBox;
  Index:Integer; Rect: TRect);
begin
  ComboBox.Canvas.Brush.Color := clWindow;
  ComboBox.Canvas.Font.Color := clWindowText;
  ComboBox.Canvas.FillRect(Rect);
  ComboBox.Canvas.TextOut(rect.Left+2, rect.Top+1, combobox.Items.valuefromindex[Index]);
end;

procedure TfrmMain.cmbFilterGolonganDarahDrawItem(Control: TWinControl;
  Index: Integer; Rect: TRect; State: TOwnerDrawState);
begin
  DrawItemCombo(cmbfiltergolongandarah, index, rect);
end;

procedure TfrmMain.cmbFilterJenisKelaminDrawItem(Control: TWinControl;
  Index: Integer; Rect: TRect; State: TOwnerDrawState);
begin
  drawitemcombo(cmbfilterjeniskelamin, index, rect);
end;

procedure TfrmMain.ResetFilter();
begin
  if(atbldata.Filtered = true) then
  begin
    atbldata.Filtered := false;
    cmbfilterjeniskelamin.ItemIndex := 0;
    cmbfiltergolongandarah.ItemIndex := 0;
    edtfilternama.Text := '';
    edtfilterkota.Text := '';
  end;
end;

procedure TfrmMain.btnUnfilterClick(Sender: TObject);
begin
  ResetFilter();
end;

procedure TfrmMain.btnPrintClick(Sender: TObject);
begin

  dm.RvProject.ExecuteReport('Report1');
end;

end.
