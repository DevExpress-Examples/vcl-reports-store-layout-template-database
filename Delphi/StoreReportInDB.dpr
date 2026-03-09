program StoreReportInDB;

uses
  Vcl.Forms,
  uMainForm in 'uMainForm.pas' {MainForm},
  uData in 'uData.pas' {DataModule1: TDataModule},
  StoreReportInDB.dxSettings in 'StoreReportInDB.dxSettings.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'DevExpress Example: Store Report in a Database';
  Application.CreateForm(TMainForm, MainForm);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.Run;
end.
