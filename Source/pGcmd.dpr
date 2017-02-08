program pGcmd;

uses
  Vcl.Forms,
  uGcmd in 'uGcmd.pas' {Form1},
  Vcl.Themes,
  Vcl.Styles,
  uBatchCreator in 'uBatchCreator.pas' {frmbatchcreator};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Ruby Graphite');
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(Tfrmbatchcreator, frmbatchcreator);
  Application.Run;
end.
