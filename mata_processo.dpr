program mata_processo;

uses
  Forms,
  uMain in 'uMain.pas' {frmMain};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'Mata Processo';
  Application.CreateForm(TfrmMain, frmMain);
  Application.Run;
end.
