program WebComponentApp;

uses
  VirtualUI_Autorun,
  Vcl.Forms,
  frmUIMain in 'frmUIMain.pas' {UIMain},
  untSysWebComponentProgressIndicator in 'untSysWebComponentProgressIndicator.pas',
  frmUISecondOne in 'frmUISecondOne.pas' {SecondForm};

{$R *.res}

begin
  {$IFDEF DEBUG}ReportMemoryLeaksOnShutdown := True;{$ENDIF}
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TUIMain, UIMain);
  Application.CreateForm(TSecondForm, SecondForm);
  Application.Run;
end.
