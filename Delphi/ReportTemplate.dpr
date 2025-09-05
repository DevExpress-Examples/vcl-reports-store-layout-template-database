program ReportTemplate;

uses
  Vcl.Forms,
  uMainForm in 'uMainForm.pas' {MainForm},
  uData in 'uData.pas' {DataModule1: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TMainForm, MainForm);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.Run;
end.
