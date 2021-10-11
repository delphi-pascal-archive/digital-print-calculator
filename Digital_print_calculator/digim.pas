unit digim;

interface

uses
 shellapi, printers, Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, jpeg, ExtCtrls, ComCtrls, FileCtrl, Buttons, Grids,
  DBGrids, DB, Mask, DBCtrls;

type
  TForm1 = class(TForm)
    Timer1: TTimer;
    PrintDialog1: TPrintDialog;
    re: TMemo;
    GroupBox5: TGroupBox;
    RadioButton3: TRadioButton;
    RadioButton4: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton1: TRadioButton;
    ComboBox2: TComboBox;
    ComboBox3: TComboBox;
    ComboBox4: TComboBox;
    Label24: TLabel;
    Label26: TLabel;
    edit3: TDBEdit;
    edit6: TDBEdit;
    edit7: TDBEdit;
    Label14: TLabel;
    Label22: TLabel;
    SpeedButton3: TSpeedButton;
    SpeedButton1: TSpeedButton;
    button2: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    GroupBox1: TGroupBox;
    SpeedButton6: TSpeedButton;
    CheckBox1: TCheckBox;
    Label1: TLabel;
    sb7: TSpeedButton;
    cem: TEdit;
    BitBtn1: TBitBtn;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit4: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    SpeedButton7: TSpeedButton;
    tiraj: TEdit;
    TreeView1: TTreeView;
    Image1: TImage;
    Button1: TButton;
    Label5: TLabel;
    Image2: TImage;
    SpeedButton8: TSpeedButton;
    Image3: TImage;
    procedure Memo1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit5KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ComboBox1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ComboBox2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ComboBox3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ComboBox4KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RadioButton1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RadioButton2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure Edit4KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FileListBox1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Shape1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Shape1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Shape1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure Image2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Image3Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
q:array[0..300] of Currency;
hesab:currency;
lp,saat:string;
laska,lh,li,lk,lj:integer;
implementation

uses Unit1, prt, yerlwes, kagiz, ofset;

{$R *.dfm}



procedure TForm1.Memo1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=vk_return then tiraj.SetFocus;
end;

procedure TForm1.Edit5KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=vk_return then treeview1.SetFocus;
end;

procedure TForm1.ComboBox1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=vk_return then combobox2.SetFocus;
end;

procedure TForm1.ComboBox2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=vk_return then combobox3.SetFocus;
end;

procedure TForm1.ComboBox3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=vk_return then combobox4.SetFocus;
end;

procedure TForm1.ComboBox4KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=vk_return then radiobutton1.SetFocus;
end;

procedure TForm1.RadioButton1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=vk_return then radiobutton3.SetFocus;
end;

procedure TForm1.RadioButton2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=vk_return then radiobutton3.SetFocus;
end;

procedure TForm1.FormCreate(Sender: TObject);
var
SystemTime: TSystemTime;
o,v,l,s:integer;
cv,ad,adnew:string;
ff:string;
begin
hesab:=0;
{TARIX}
GetLocalTime(SystemTime);
  sb7.Caption := datetostr(SystemTimeToDateTime(SystemTime));

tiraj.text:='1';
{treeview1.Selected}

combobox2.itemindex:=0;
combobox3.itemindex:=0;
combobox4.itemindex:=0;
RadioButton1.Checked:=true;
RadioButton4.Checked:=true;
edit3.text:='0';
edit7.text:='0';
edit6.text:='0';

end;

procedure TForm1.Edit4KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=vk_return then button2.Click;
end;

procedure TForm1.FileListBox1Click(Sender: TObject);
var xt:textfile;
lo,la,c1,c2,c3,a1,a2,a3,a4,a5,a6,a7,a8,a9:string;
z1,z2,z3,z4,z5,z6,z7:integer;
begin

end;

procedure TForm1.Button2Click(Sender: TObject);
label ggg;
var j:integer; t,tir:currency;
begin
       if TreeView1.Selected = nil then
       begin  laska :=1; form3.showmodal;
       goto ggg;

       end;




           laska:=0 ;
        j:=0;
if edit3.Text='' then edit3.Text:='0';

if edit7.Text='' then edit3.Text:='0';
Hesab:=  (strtocurr(tiraj.Text)*
          (strtocurr(price.ValueListEditor1.Values [treeview1.Selected.Text]))/100);

if radiobutton2.Checked=true then hesab:=hesab+(hesab*(80/100)) else hesab:=hesab;
    if hesab<1 then hesab:=1;
cem.Text:=FormatCurr('0.#', hesab);

if combobox2.ItemIndex=1 then hesab:= hesab+ (strtocurr(tiraj.Text)*(40/100));
if combobox2.ItemIndex=2 then hesab:= hesab+ (strtocurr(tiraj.Text)*(80/100));
if combobox2.ItemIndex=3 then hesab:= hesab+ (strtocurr(tiraj.Text)*(80/100));
if combobox2.ItemIndex=4 then hesab:= hesab+ (strtocurr(tiraj.Text)*(120/100));
if combobox2.ItemIndex=5 then hesab:= hesab+ (strtocurr(tiraj.Text)*(100/100));
if combobox2.ItemIndex=6 then hesab:= hesab+ (strtocurr(tiraj.Text)*(150/100));
if combobox2.ItemIndex=7 then hesab:= hesab+ (strtocurr(tiraj.Text)*(150/100));
if combobox2.ItemIndex=8 then hesab:= hesab+ (strtocurr(tiraj.Text)*(200/100));

if combobox3.ItemIndex=1 then hesab:= hesab+ (40/100);
if combobox3.ItemIndex=2 then hesab:= hesab+ (100/100);
if combobox3.ItemIndex=3 then hesab:= hesab+ (100/100);
if combobox3.ItemIndex=4 then hesab:= hesab+ (150/100);

if combobox4.ItemIndex=1 then hesab:= hesab+ (strtocurr(tiraj.Text)*(40/100));
if combobox4.ItemIndex=2 then hesab:= hesab+ (strtocurr(tiraj.Text)*(40/100));
if combobox4.ItemIndex=3 then hesab:= hesab+ (strtocurr(tiraj.Text)*(100/100));


if hesab<50 then label14.Caption:='0';
if (hesab>51)   and (hesab<100)   then label14.Caption:=currtostr(10/10);
if (hesab>102)  and (hesab<200)   then label14.Caption:=currtostr(15/10);
if (hesab>202)  and (hesab<500)   then label14.Caption:=currtostr(20/10);
if (hesab>501)  and (hesab<1000)  then label14.Caption:=currtostr(25/10);
if (hesab>1001) and (hesab<2000) then label14.Caption:=currtostr(30/10);
if (hesab>2001) and (hesab<3000) then label14.Caption:=currtostr(35/10);
if (hesab>3001) and (hesab<4000) then label14.Caption:=currtostr(40/10);
if (hesab>4001) and (hesab<5000) then label14.Caption:=currtostr(45/10);
if (hesab>5001) and (hesab<6000) then label14.Caption:=currtostr(50/10);
if (hesab>6001) then label14.Caption:='5';

    if hesab<1 then hesab:=1;
  if checkbox1.Checked=true then
      begin
      edit7.Text:=currtostr((hesab/100)*strtocurr(label14.Caption));
       end;

edit3.Text:=FormatCurr('0.#', hesab);
t:=hesab-strtocurr(edit7.text); if t<1 then t:=1;
edit6.Text:=FormatCurr('0.#', t);
label1.Caption:=currtostr(strtocurr(edit6.text)/strtocurr(tiraj.Text));
ggg:
end;

procedure TForm1.Shape1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
li:=1;
lh:=x;
lk:=y;
end;

procedure TForm1.Shape1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
if li=1 then begin
form1.Left:=form1.Left+x-lh;
form1.top:=form1.top+y-lk;
end;
end;

procedure TForm1.Shape1MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
li:=0;
lk:=0;
end;

procedure TForm1.SpeedButton3Click(Sender: TObject);
begin
halt(0);
end;

procedure TForm1.SpeedButton1Click(Sender: TObject);
begin
form1.WindowState:=wsminimized;
end;

procedure TForm1.SpeedButton2Click(Sender: TObject);
begin
halt(0);
end;

procedure TForm1.SpeedButton4Click(Sender: TObject);
begin
Application.Minimize;
end;

procedure TForm1.SpeedButton5Click(Sender: TObject);
begin
 shellexecute(handle,

 'Open',

 'mailto:office@digitalprint.az?subject=Sual: ',

 nil, nil, sw_restore);

end;


procedure TForm1.SpeedButton6Click(Sender: TObject);
begin
 shellexecute(handle,

 'Open',

 'mailto:office@digitalprint.az?subject=Sual: ',

 nil, nil, sw_restore);
end;

procedure TForm1.BitBtn1Click(Sender: TObject);
var  s:string; aq,aq1,aq2:currency;
begin
s:=tiraj.text; aq:=strtocurr(s);
aq:=aq*2;
label2.caption:='Tiraj: '+currtostr(aq); tiraj.Text:=currtostr(aq); button2.Click;
edit1.Text:='   '+edit6.Text;

aq:=aq*2;
label3.caption:='Tiraj: '+currtostr(aq); tiraj.Text:=currtostr(aq); button2.Click;
edit2.Text:='   '+edit6.Text;

aq:=aq*2;
label4.caption:='Tiraj: '+currtostr(aq); tiraj.Text:=currtostr(aq); button2.Click;
edit4.Text:='   '+edit6.Text;





tiraj.Text:=s;
button2.Click;

end;

procedure TForm1.SpeedButton7Click(Sender: TObject);
label gggg;
begin
if strtoint (tiraj.Text)> 499 then
    begin
      if MessageDlg('Bu tiraj uchun Ofset chapi daha meqsedeuygundur...'+chr(13)+'Ofset chapi ile hesablayaq?',
    mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
  form1.Hide;
  if strtoint(tiraj.Text)<500 then form4.Tiraj.text:='500';
    form4.showmodal; goto gggg;
  end;


    end;  treeview1.Setfocus;
button2.Click;
if laska <>1 then BitBtn1.click;
gggg:
end;

procedure TForm1.Image2Click(Sender: TObject);
begin
form2.showmodal
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
treeview1.SaveToFile('aaa');
end;

procedure TForm1.Image3Click(Sender: TObject);
begin
ShellExecute(Handle, 'Open', 'http://www.digitalprint.az/', '', '', SW_SHOW);
end;

end.
