﻿unit Uloguin;

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
  UCL.CaptionBar;

type
  TfrmLogin = class(TuForm)
    cbarMain: TUCaptionBar;
    btnClose: TUQuickButton;
    btnMinimize: TUQuickButton;
    btnTheme: TUQuickButton;
    btnAbout: TUQuickButton;
    procedure FormCreate(Sender: TObject);
    procedure btnThemeClick(Sender: TObject);
  private
    procedure ApplyStyles;
    procedure ToggleTheme;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLogin: TfrmLogin;

implementation

{$R *.dfm}


uses Consts.UI;

procedure TfrmLogin.btnThemeClick(Sender: TObject);
begin
  ToggleTheme;
end;

procedure TfrmLogin.ApplyStyles;
begin
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

procedure TfrmLogin.FormCreate(Sender: TObject);
begin
  ApplyStyles
end;

end.
