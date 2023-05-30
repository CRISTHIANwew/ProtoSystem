program ProtoSystem;

uses
  Vcl.Forms,
  View.Main in 'src\view\View.Main.pas' {frmMain},
  View.Login in 'src\view\View.Login.pas' {frmLogin},
  Vcl.Themes,
  Vcl.Styles,
  Consts.UI in 'src\consts\Consts.UI.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmLogin, frmLogin);
  Application.CreateForm(TfrmMain, frmMain);
  Application.Run;
end.
