unit Helpers.UI;

interface

uses vcl.Controls,
  ucl.IntAnimation,
  ucl.Utils;

type
  TUIHelper = class
  public
    class procedure Animate(Control: TWinControl);
  end;

implementation

{ TUIHelper }

class procedure TUIHelper.Animate(Control: TWinControl);
var
  Ani: TIntAni;
  Space: integer;
begin
  Space := 25;

  Ani := TIntAni.Create(0, Space,
    procedure(V: integer)
    begin
      SetOpacity(Control.Handle, Round(255 * V / Space));
      Control.Padding.Top := Space - V;
    end,
    procedure
    begin
      StopOpacity(Control.Handle, false);
    end);
  Ani.AniSet.QuickAssign(akOut, afkQuartic, 0, 100, 10);
  Ani.Start;
end;

end.
