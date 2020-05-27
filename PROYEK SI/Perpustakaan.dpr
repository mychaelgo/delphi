program Perpustakaan;

uses
  Forms,
  ULogin in 'ULogin.pas' {FrmLogin},
  Unit2 in 'Unit2.pas' {FormInterfaceAwal},
  UTambahBuku in 'UTambahBuku.pas' {FormTambahBuku},
  ULihatDataBuku in 'ULihatDataBuku.pas' {FormLihatDataBuku},
  UTambahAnggota in 'UTambahAnggota.pas' {FormTambahAnggota},
  ULihatAnggota in 'ULihatAnggota.pas' {FormLihatDataAnggota},
  UTambahPegawai in 'UTambahPegawai.pas' {FormTambahPegawai},
  ULihatPegawai in 'ULihatPegawai.pas' {FormLihatDataPegawai},
  Unit3 in 'Unit3.pas' {FormTentangSoftware},
  UAboutMaker in 'UAboutMaker.pas' {FormPembuat},
  Unit4 in 'Unit4.pas' {FormPeminjamBuku},
  UDaftarPeminjamBuku in 'UDaftarPeminjamBuku.pas' {FormDaftarPeminjamBuku},
  UPemilihanLogIn in 'UPemilihanLogIn.pas' {FormPemilihanLogIn},
  UDaftarSitus in 'UDaftarSitus.pas' {FormSitus},
  UPengembalian in 'UPengembalian.pas' {FormPengembalianBuku},
  Unit1 in 'Unit1.pas' {FormTambahKelas};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFormPemilihanLogIn, FormPemilihanLogIn);
  Application.CreateForm(TFrmLogin, FrmLogin);
  Application.CreateForm(TFormInterfaceAwal, FormInterfaceAwal);
  Application.CreateForm(TFormTambahBuku, FormTambahBuku);
  Application.CreateForm(TFormLihatDataBuku, FormLihatDataBuku);
  Application.CreateForm(TFormTambahAnggota, FormTambahAnggota);
  Application.CreateForm(TFormLihatDataAnggota, FormLihatDataAnggota);
  Application.CreateForm(TFormTambahPegawai, FormTambahPegawai);
  Application.CreateForm(TFormLihatDataPegawai, FormLihatDataPegawai);
  Application.CreateForm(TFormTentangSoftware, FormTentangSoftware);
  Application.CreateForm(TFormPembuat, FormPembuat);
  Application.CreateForm(TFormPeminjamBuku, FormPeminjamBuku);
  Application.CreateForm(TFormDaftarPeminjamBuku, FormDaftarPeminjamBuku);
  Application.CreateForm(TFormSitus, FormSitus);
  Application.CreateForm(TFormPengembalianBuku, FormPengembalianBuku);
  Application.CreateForm(TFormTambahKelas, FormTambahKelas);
  Application.Run;
end.
