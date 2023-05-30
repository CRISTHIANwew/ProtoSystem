﻿unit View.Login;

interface

uses
  Winapi.Windows,
  Winapi.Messages,
  System.SysUtils,
  System.Variants,
  System.Classes,
  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  Vcl.StdCtrls,
  UCL.ThemeManager,
  UCL.form,
  UCL.Classes,
  UCL.QuickButton,
  Vcl.ExtCtrls,
  UCL.CaptionBar,
  UCL.Button,
  UCL.ListButton,
  UCL.Edit,
  UCL.CheckBox,
  UCL.Panel,
  UCL.Hyperlink,
  UCL.Text,
  UCL.ScrollBox;

type
  TfrmLogin = class(TuForm)
    cbarMain: TUCaptionBar;
    btnClose: TUQuickButton;
    btnMinimize: TUQuickButton;
    btnTheme: TUQuickButton;
    btnAbout: TUQuickButton;
    boxMain: TUScrollBox;
    lblBemVindo: TUText;
    lblEntre: TUText;
    lblSenha: TUText;
    lblUsuario: TUText;
    lblMaisOpcoes: TUHyperlink;
    pnlOpcoes: TUPanel;
    cbLembrarSenha: TUCheckBox;
    cbLembrarUsuario: TUCheckBox;
    edtUser: TUEdit;
    pnlSenha: TUPanel;
    edtSenha: TUEdit;
    btnVerSenha: TUListButton;
    btnApagar: TUListButton;
    btnUser: TUListButton;
    pnlAcoes: TUPanel;
    lblTentativas: TUText;
    btnEntrar: TUButton;
    btnSair: TUButton;
    btnCadastrar: TUButton;
    procedure FormCreate(Sender: TObject);
    procedure btnThemeClick(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure lblMaisOpcoesClick(Sender: TObject);
    procedure btnApagarClick(Sender: TObject);
    procedure btnVerSenhaMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure btnVerSenhaMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure btnEntrarClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    procedure ApplyStyles;
    procedure ToggleTheme;
    procedure PlaceButtons;
    { Private declarations }
  public
    { Public declarations }
    class function Execute: boolean;
  end;

var
  frmLogin: TfrmLogin;

implementation

{$R *.dfm}


uses Consts.UI,
  Helpers.UI;

procedure TfrmLogin.btnApagarClick(Sender: TObject);
begin
  edtUser.Clear
end;

procedure TfrmLogin.btnEntrarClick(Sender: TObject);
begin
  modalresult := mrok
end;

procedure TfrmLogin.btnSairClick(Sender: TObject);
begin
  modalresult := mrclose
end;

procedure TfrmLogin.btnThemeClick(Sender: TObject);
begin
  ToggleTheme;
end;

procedure TfrmLogin.btnVerSenhaMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  edtSenha.PasswordChar := #0
end;

procedure TfrmLogin.btnVerSenhaMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  edtSenha.PasswordChar := '*'
end;

class function TfrmLogin.Execute: boolean;
begin
  with TfrmLogin.Create(nil) do
    try
      case ShowModal of
        mrok:
          result := true;
        mrno:
          result := false;
        mrclose:
          application.Terminate;
      end;
    finally
      Free;
    end;
end;

procedure TfrmLogin.ApplyStyles;
begin
  PlaceButtons;
  ThemeManager.ThemeType := ttDark;
  if ThemeManager.Theme = utLight then
    btnTheme.Caption := ICON_MOON
  else
    btnTheme.Caption := ICON_SUN
end;

procedure TfrmLogin.ToggleTheme;
begin
  if ThemeManager.Theme = utLight then
  begin
    ThemeManager.ThemeType := ttDark;
    btnTheme.Caption := ICON_SUN
  end
  else
  begin
    ThemeManager.ThemeType := ttLight;
    btnTheme.Caption := ICON_MOON
  end;
end;

procedure TfrmLogin.PlaceButtons;
begin
  btnVerSenha.Top := edtSenha.Top + 2;
  btnVerSenha.Left := edtSenha.Left + edtSenha.Width - btnVerSenha.Width - 2;
  btnApagar.Top := edtUser.Top + 2;
  btnApagar.Left := edtUser.Left + edtUser.Width - btnApagar.Width - 2;
end;

procedure TfrmLogin.FormCreate(Sender: TObject);
begin
  ApplyStyles
end;

procedure TfrmLogin.FormResize(Sender: TObject);
begin
  PlaceButtons;
  if windowstate = TWindowState.wsMaximized then
    windowstate := TWindowState.wsNormal
end;

procedure TfrmLogin.FormShow(Sender: TObject);
begin
  tuihelper.animate(self)
end;

procedure TfrmLogin.lblMaisOpcoesClick(Sender: TObject);
begin
  if lblMaisOpcoes.Caption = 'Mostrar mais opções' then
    lblMaisOpcoes.Caption := 'Mostrar menos opções'
  else
    lblMaisOpcoes.Caption := 'Mostrar mais opções';
  pnlOpcoes.Visible := lblMaisOpcoes.Caption <> 'Mostrar mais opções';
end;

end.
