program ProtoSystem;

uses
  Vcl.Forms,
  Uprincipal in 'Uprincipal.pas' {frmprincipal},
  Uloguin in 'Uloguin.pas' {frmloguin},
  Vcl.Themes,
  Vcl.Styles;

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Windows10 Dark');
  Application.CreateForm(Tfrmloguin, frmloguin);
  Application.CreateForm(Tfrmprincipal, frmprincipal);
  Application.Run;
end.
