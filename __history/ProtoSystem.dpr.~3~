program ProtoSystem;

uses
  Vcl.Forms,
  Uprincipal in 'Uprincipal.pas' {frmprincipal},
  Uloguin in 'Uloguin.pas' {frmLogin},
  Vcl.Themes,
  Vcl.Styles,
  Consts.UI in 'src\consts\Consts.UI.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmLogin, frmLogin);
  Application.CreateForm(Tfrmprincipal, frmprincipal);
  Application.Run;
end.
