unit Form_Utama;

{ Gue Antivirus (GAV)  (Untuk Delphi 4,5,6 dan 7)
  ==============================================================================
  Diprogramkan oleh : Ali
  Lisensi : Bebas untuk di utak-atik, asalakan tidak merusak Hak Cipta.

  Ini adalah source code tentang cara membuat antivirus sederhana, dengan
  proses pendeteksian menggunakan hasting CRC32, source code ini saya tulis
  karena banyak permintaan dari teman-teman, baik dari SMS maupun dari E-Mail.

  Saya sangat senang sekali jika Anda dapat mengembangkan sendiri dari antivirus
  yang sederhana ini.

  Kontak Saya :
  Web-Site               : http://www.geocities.com/alisoftprg
  E-Mail                 : ali.programmer@telkom.net atau alisoftprg@yahoo.com
  Telp atau SMS          : +6285-694-348-790

  ==============================================================================
  Copyright © Ali Software - Delphi Source Code. All Rights Reserved.
  ==============================================================================
}



interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls,Utility_AV, ComCtrls;

type
  TFormUtama = class(TForm)
    GroupBox1: TGroupBox;
    rb_scan1: TRadioButton;
    rb_scan2: TRadioButton;
    edt_folder: TEdit;
    edt_cari: TButton;
    GroupBox2: TGroupBox;
    lbl_jumlahfile: TLabel;
    lbl_virus: TLabel;
    mm_status: TMemo;
    btn_scan: TButton;
    btn_tentang: TButton;
    btn_keluar: TButton;
    ck_scansubdir: TCheckBox;
    GroupBox3: TGroupBox;
    lv_virlist: TListView;
    btn_delvir: TButton;
    btn_cls: TButton;
    lbl_waktu: TLabel;
    Label1: TLabel;

    procedure btn_tentangClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btn_keluarClick(Sender: TObject);
    procedure btn_scanClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure edt_cariClick(Sender: TObject);
    procedure rb_scan2Click(Sender: TObject);
    procedure btn_clsClick(Sender: TObject);
    procedure btn_delvirClick(Sender: TObject);
  private
    { Private declarations }
    Procedure ScanVirus(Semua:Boolean);
    Procedure SaatScanFile (Path:String);
    Procedure TambahList (NamaVirus,Path:String);
  public
    { Public declarations }
  end;



var
  FormUtama: TFormUtama;
  SedangDiScan:Boolean;
  rStartTime : Integer;
  C          : Integer;
  
Const
 DBaseCRC32Virus : Array [0..2] of String = ('DD7A0BA8','7A014FFF','BDB819EB');
 DBaseNamaVirus  : Array [0..2] of String = ('CodeRed','Moondlight.D','FluBurung');
 MAX_SCAN        : Int64  = 10 * 1024 * 1024; // Maksimal Scan 10 MB,
                                          //  Karena biasanya virus tidak lebih dari 10 MB
implementation

{$R *.dfm}
{$R WindowsXP.res} //Aktifkan Theme WinXP



function CekUkuranFile(const FileName: string): Int64;
var
  SearchRec: TSearchRec;
begin
  Result := -1; //-- assume worst cas
  if FindFirst(FileName, faAnyFile, SearchRec) = 0 then
  begin
    Int64Rec(Result).Lo := SearchRec.FindData.nFileSizeLow;
    Int64Rec(Result).Hi := SearchRec.FindData.nFileSizeHigh;
    FindClose(SearchRec);
  end;
end;

Procedure TFormUtama.TambahList (NamaVirus,Path:String);
Var
  lvi       : TListItem;
Begin

   //Cek Apakah ada list yang sama ... ?
   lvi := lv_virList.FindCaption(0,Path, false, true, false);
   while Assigned(lvi) do
   begin
     if Lowercase(lvi.SubItems[1]) = Lowercase(Path) then exit; //Sudah ada di list, keluar
     lvi := lv_virList.FindCaption(lvi.Index, Path, false, false, false);
    end;

  //List tidak ada yang sama, tambahkan list...
  lvi := lv_virList.Items.Add;
  lvi.Caption := NamaVirus;
  lvi.SubItems.Add(Path);
  lbl_virus.Caption := 'Jumlah virus ditemukan : ' + IntToStr(Lv_VirList.Items.Count);
End;



Procedure TFormUtama.SaatScanFile (Path:String);
Var
 CRC32       : Cardinal;
 TB          : Int64;
 Err         : Word;
 CRC32Str    : String; //CRC32 hasil string
 i           : Integer;
 ElapsedTime : String;
Begin

 ElapsedTime := Format('%.1f', [0.001*(GetTickCount-rStartTime)]);

 Application.ProcessMessages; // Terima semua masukan dari program
 IF (CekUkuranFile(Path) <= MAX_SCAN) Then Begin // Maksimal Scan.. Tidak Lebih dari 10 MB
   HitungFileCRC32 ( Path, CRC32, TB, Err );
   CRC32Str := IntToHex(Crc32,8);  // Hasil CRC32 desimal di konverisi menjadi Heksadesimal
    For i:=Low(DBaseCRC32Virus) to High(DBaseCRC32Virus) do
      // Jika Hasil CRC32 sama dengan Database Virus, Tidak diragukan lagi maka itu virus
      if (CRC32Str = DBaseCRC32Virus[i]) then TambahList(DBaseNamaVirus[i],Path);
 End;

 Inc(C);
 lbl_jumlahfile.Caption := 'Jumlah file : ' + IntToStr(C);
 lbl_waktu.Caption      := 'Waktu tempuh : ' + ElapsedTime;
 mm_status.Lines.Text := Path; // Status scannya;
End;

procedure TFormUtama.btn_tentangClick(Sender: TObject);
begin
 MsgBox(Handle,'Tentang Program',
        'Gue Antivirus (GAV) ' + #13#10 +
        'Diprogramkan oleh Ali' + #13#10#13#10 +
        'Web-Site : http://www.geocities.com/alisoftprg' + #13#10 +
        'E-Mail : ali.programmer@telkom.net' + #13#10#13#10 +
        'Copyright © Ali Software - Delphi Source Code. All Rights Reserved.',
        Information);
end;

procedure TFormUtama.FormCreate(Sender: TObject);
begin
 SedangDiScan := False;
end;

procedure TFormUtama.btn_keluarClick(Sender: TObject);
begin

 If SedangDiScan Then
  If MsgBox(Handle,'Keluar Program',
           'Apakah Anda ingin keluar saat program sedang mencari virus ?',
           Question + YesNo) = No Then Exit;

 Halt(0);     // Keluar Program (dengan paksaan, jika terjadi error) 
end;

Procedure TFormUtama.ScanVirus(Semua:Boolean);
Var
 CallBack :TOnCariFile;
 Drives:Array of String;
 i,L:Integer;
Begin

    CallBack := SaatScanFile;    //  Hasil scan di kembalikan ke procedure lain

  If Not Semua Then
   Begin
     If (edt_folder.Text = '') then Begin
       Msgbox(Handle,'Error','Tentukan dulu Folder atau Drive-nya',Critical);
       exit;
     End;
    CariFile(edt_folder.Text,ck_scansubdir.Checked,'*.*',CallBack);
   End
   Else Begin
    For i:=Ord('A') to Ord('Z') do
      Case GetDriveType(Pchar(Chr(i) + ':\')) of
         DRIVE_UNKNOWN:;
         DRIVE_NO_ROOT_DIR:;
      Else
       Begin
        L:=Length(Drives)+1;
        SetLength(Drives,L);
        Drives[L-1]:=Chr(i) + ':\';
       End;
      End;

    For i:=Low(Drives) to High(Drives) do
    Begin
     If DriveSiap(Drives[i]) Then
       CariFile(Drives[i],ck_scansubdir.Checked,'*.*',CallBack);
    End;

  End;

End;

procedure TFormUtama.btn_scanClick(Sender: TObject);
Label Scan,Berhenti;
begin

  If Not SedangDiScan Then
    Goto Scan
  Else
    Goto BerHenti;

  Exit;

Scan: Begin
  BerhentiMencari := False;     // Agar bisa di scan
  {Mulai men-scan file...}
  rStartTime := GetTickCount;
  C          := 0;
  try
   SedangDiScan := True;
   btn_scan.Caption := '&Berhenti..';
   ScanVirus ( rb_scan1.Checked )   ; //......
  Finally
    btn_scan.Caption := '&Scan';
   SedangDiScan := False;
  End;
End;

Exit;
Berhenti:Begin
   If MsgBox(Handle,'Scan Virus',
           'Apakah Anda ingin menghentikan proses scan virus ?',
           Question + YesNo) = Yes Then
    BerhentiMencari := True;
End;

end;

procedure TFormUtama.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
 btn_keluarClick(Sender);
end;

procedure TFormUtama.edt_cariClick(Sender: TObject);
Var Dir:String;
begin
 Try
  Dir := BrowseDialog(Handle,'Cari Folder / Drive');
 Finally
  If (Dir <> '') then
   edt_folder.Text := Dir;
 End;
end;


procedure TFormUtama.rb_scan2Click(Sender: TObject);
begin
 edt_folder.Enabled := rb_scan2.Checked ;
 edt_cari.Enabled   := rb_scan2.Checked;
end;

procedure TFormUtama.btn_clsClick(Sender: TObject);
begin
 If (Lv_VirList.Items.Count < 1) then Exit;
 If MsgBox(Handle,'Bersihkan List',
           'Apakah Anda ingin membersihkan list (tanpa menghapus virus) ?',
           Question + YesNo) = Yes Then
   lv_virlist.Items.Clear;          
end;

procedure TFormUtama.btn_delvirClick(Sender: TObject);
Var i:Integer;
    Ada, Bisa:Boolean;
begin
   Ada := False;
   For i:=0 to Lv_VirList.Items.Count -1 do
    If Lv_VirList.Items[i].Checked then begin
     Ada := True;
     Break;
    End;
   If Not Ada Then
    If Msgbox(Handle,'Perhatian','Pilih salah satu item',Exclamation) = OK Then
      Exit;

   For i:=0 to Lv_VirList.Items.Count -1 do
    If Lv_VirList.Items[i].Checked then begin
      Bisa := DeleteFile(Lv_VirList.Items[i].SubItems[0]);
      If Not Bisa Then
       If Msgbox(Handle,'Error','File tidak dapat di hapus,' +
                        'kemungkinan windows sedang menjalankannya',
                        CRITICAL) = OK Then Exit
      Else Lv_VirList.Items[i].Delete;
    End;
end;

end.
