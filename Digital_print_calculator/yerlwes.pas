unit yerlwes;

interface

uses
  shellapi,Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls, Buttons;

type
  TForm2 = class(TForm)
    Image1: TImage;
    SpeedButton1: TSpeedButton;
    procedure Image1Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.Image1Click(Sender: TObject);
begin
close;
end;

procedure TForm2.SpeedButton1Click(Sender: TObject);
begin
ShellExecute(Handle, 'Open', 'http://www.digitalprint.az/', '', '', SW_SHOW);
end;

end.
