program Project1;

uses
  Forms,
  UnitMain in 'pas\UnitMain.pas' {frmMain},
  UnitAbout in 'pas\UnitAbout.pas' {frmAbout},
  Unit3 in 'pas\Unit3.pas' {frmLogin},
  UnitObat in 'pas\UnitObat.pas' {frmObat},
  UnitCon in 'pas\UnitCon.pas' {frmCon},
  UnitDM in 'pas\UnitDM.pas' {DM: TDataModule},
  UnitDMConn in 'pas\UnitDMConn.pas' {DMConn: TDataModule},
  UnitSatuanObat in 'pas\UnitSatuanObat.pas' {frmSatuanObat},
  UnitSatuanObatAE in 'pas\UnitSatuanObatAE.pas' {frmSatuanObatAE},
  UnitObatAE in 'pas\UnitObatAE.pas' {frmObatAE},
  UnitObatMasuk in 'pas\UnitObatMasuk.pas' {frmObatMasuk},
  UnitObatKeluar in 'pas\UnitObatKeluar.pas' {frmObatKeluar},
  UnitPbf in 'pas\UnitPbf.pas' {frmPbf},
  UnitPbfAE in 'pas\UnitPbfAE.pas' {frmPbfAE},
  UnitObatMasukAE in 'pas\UnitObatMasukAE.pas' {frmObatMasukAE},
  UnitRetur in 'pas\UnitRetur.pas' {frmRetur},
  UnitReturAE in 'pas\UnitReturAE.pas' {frmReturAE},
  UnitDataUser in 'pas\UnitDataUser.pas' {frmDataUser},
  UnitDataUserAE in 'pas\UnitDataUserAE.pas' {frmDataUserAE},
  UnitHargaObat in 'pas\UnitHargaObat.pas' {frmHargaObat},
  UnitHargaObatSet in 'pas\UnitHargaObatSet.pas' {frmHargaObatSet},
  UnitPersediaanObat in 'pas\UnitPersediaanObat.pas' {frmPersediaanObat},
  UnitObatKeluarTran in 'pas\UnitObatKeluarTran.pas' {frmObatKeluarTran},
  UnitGantiPassword in 'pas\UnitGantiPassword.pas' {frmGantiPassword},
  UStokAwalObat in 'pas\UStokAwalObat.pas' {frmStokAwalObat};

{$R *.res}

begin
  if(TfrmLogin.Execute) then
  begin
    Application.Initialize;
    Application.Title := 'Sistem Informasi Apotik';
    Application.CreateForm(TfrmMain, frmMain);
  Application.CreateForm(TfrmAbout, frmAbout);
  Application.CreateForm(TfrmObat, frmObat);
  Application.CreateForm(TfrmSatuanObat, frmSatuanObat);
  Application.CreateForm(TfrmSatuanObatAE, frmSatuanObatAE);
  Application.CreateForm(TfrmObatAE, frmObatAE);
  Application.CreateForm(TfrmObatMasuk, frmObatMasuk);
  Application.CreateForm(TfrmObatKeluar, frmObatKeluar);
  Application.CreateForm(TfrmPbf, frmPbf);
  Application.CreateForm(TfrmPbfAE, frmPbfAE);
  Application.CreateForm(TfrmObatMasukAE, frmObatMasukAE);
  Application.CreateForm(TfrmRetur, frmRetur);
  Application.CreateForm(TfrmReturAE, frmReturAE);
  Application.CreateForm(TfrmDataUser, frmDataUser);
  Application.CreateForm(TfrmDataUserAE, frmDataUserAE);
  Application.CreateForm(TfrmHargaObat, frmHargaObat);
  Application.CreateForm(TfrmHargaObatSet, frmHargaObatSet);
  Application.CreateForm(TfrmPersediaanObat, frmPersediaanObat);
  Application.CreateForm(TfrmObatKeluarTran, frmObatKeluarTran);
  Application.CreateForm(TfrmGantiPassword, frmGantiPassword);
  Application.CreateForm(TfrmStokAwalObat, frmStokAwalObat);
  Application.Run;
  end;
end.
