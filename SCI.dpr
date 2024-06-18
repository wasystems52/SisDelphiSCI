program SCI;

uses
  Vcl.Forms,
  frmMenuPrin in 'frmMenuPrin.pas' {menuPrin},
  frmCalendario in 'frmCalendario.pas' {Calendario};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TmenuPrin, menuPrin);
  Application.CreateForm(TCalendario, Calendario);
  Application.Run;
end.
