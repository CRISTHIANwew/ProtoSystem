program ProtoSystem;

uses
  Vcl.Forms,
  View.Main in 'src\view\View.Main.pas' {frmMain} ,
  View.Login in 'src\view\View.Login.pas' {frmLogin} ,
  Vcl.Themes,
  Vcl.Styles,
  Consts.UI in 'src\consts\Consts.UI.pas',
  Providers.Connection
    in 'src\providers\Providers.Connection.pas' {ProviderConnection: TDataModule};

{$R *.res}


begin
  Application.Initialize;

  Application.CreateForm(TfrmMain, frmMain);
  Application.CreateForm(TfrmLogin, frmLogin);
  if frmLogin.Execute then
  begin
    Application.MainFormOnTaskbar := True;
    Application.Run;
  end

end.
