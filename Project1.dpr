program Project1;

uses
  Vcl.Forms,
  Unit1 in 'Unit1.pas' {FormMeasurement},
  UsersMeasur in 'UsersMeasur.pas',
  Unit2 in 'Unit2.pas' {FormClient};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormClient, FormClient);
  Application.CreateForm(TFormMeasurement, FormMeasurement);
  Application.Run;
end.
