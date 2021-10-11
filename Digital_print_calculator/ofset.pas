unit ofset;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, StdCtrls, ComCtrls, Buttons, ExtCtrls, Mask, DBCtrls;

type
  TForm4 = class(TForm)
    TreeView1: TTreeView;
    ComboBox2: TComboBox;
    ComboBox4: TComboBox;
    ComboBox3: TComboBox;
    Image1: TImage;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    cem: TEdit;
    edit3: TDBEdit;
    edit7: TDBEdit;
    edit6: TDBEdit;
    SpeedButton7: TSpeedButton;
    tiraj: TEdit;
    Label14: TLabel;
    CheckBox1: TCheckBox;
    Label1: TLabel;
    SpeedButton1: TSpeedButton;
    ComboBox1: TComboBox;
    procedure FormShow(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormHide(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure Image1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Image1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormDestroy(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;
  q:array[0..300] of Currency;
hesab:currency;
lp,saat:string;
laska,lh,li,lk,lj:integer;

implementation

uses digim, prt, kagiz;

{$R *.dfm}

procedure TForm4.FormShow(Sender: TObject);
begin
if strtoint(form1.tiraj.Text)<500 then form4.Tiraj.text:='500' else form4.Tiraj.text:= form1.tiraj.Text;
form4.TreeView1.SetFocus;
end;

procedure TForm4.SpeedButton7Click(Sender: TObject);
label ggg;
var j:integer; tir:currency; m:string;
begin                   hesab:=0;

  if TreeView1.Selected = nil then
       begin  laska :=1; form3.showmodal;
       goto ggg;

       end;
treeview1.Setfocus;
if (strtoint(tiraj.Text) >499) and (strtoint(tiraj.Text) <750) then m:='500';
if (strtoint(tiraj.Text) >751) and (strtoint(tiraj.Text) <1250) then m:='1000';
if (strtoint(tiraj.Text) >1251) and (strtoint(tiraj.Text) <1750) then m:='1500';
if (strtoint(tiraj.Text) >1751) and (strtoint(tiraj.Text) <2250) then m:='2000';
if (strtoint(tiraj.Text) >2251) and (strtoint(tiraj.Text) <2750) then m:='2500';
if (strtoint(tiraj.Text) >2751) and (strtoint(tiraj.Text) <3250) then m:='3000';
if (strtoint(tiraj.Text) >3251) and (strtoint(tiraj.Text) <3750) then m:='3500';
if (strtoint(tiraj.Text) >3751) and (strtoint(tiraj.Text) <4250) then m:='4000';
if (strtoint(tiraj.Text) >4251) and (strtoint(tiraj.Text) <4750) then m:='4500';
if (strtoint(tiraj.Text) >4751) then m:='5000';

laska:=0 ;         j:=0;
if edit3.Text='' then edit3.Text:='1';

if edit7.Text='' then edit3.Text:='1';
Hesab:=  (strtocurr(tiraj.Text)*
          (strtocurr(price.offset.Values [inttostr(treeview1.TopItem.SelectedIndex)+m]))/1000);

if radiobutton2.Checked=true then hesab:=hesab+(hesab*(80/100)) else hesab:=hesab;
{minimal tiraj flayer}
if treeview1.Selected.Index=0 then
      begin
      if strtoint (tiraj.Text)<1500 then begin
                                        showmessage ('Minimal tiraj 1500 eded olmali');
                                        tiraj.Text:='1500';
                                        end;
      hesab := hesab/2;   treeview1.SetFocus;
      end;

if treeview1.Selected.Index=1 then
      begin
      if strtoint (tiraj.Text)<1000 then begin
                                        showmessage ('Minimal tiraj 1000 eded olmali');
                                        tiraj.Text:='1000';
                                        end;
      hesab := hesab/100*70; treeview1.SetFocus;
      end;

if treeview1.Selected.Index=2 then
      begin
      if strtoint (tiraj.Text)<500 then begin
                                        showmessage ('Minimal tiraj 500 eded olmali');
                                        tiraj.Text:='500';
                                        end;
      hesab := hesab; treeview1.SetFocus;
      end;

if treeview1.Selected.Index=3 then
      begin
      if strtoint (tiraj.Text)<500 then begin
                                        showmessage ('Minimal tiraj 500 eded olmali');
                                        tiraj.Text:='500';
                                        end;
      hesab := hesab*(150/100);treeview1.SetFocus;
      end;

if treeview1.Selected.Index=4 then
      begin
      if strtoint (tiraj.Text)<500 then begin
                                        showmessage ('Minimal tiraj 500 eded olmali');
                                        tiraj.Text:='500';
                                        end;
      hesab := hesab*(250/100); treeview1.SetFocus;
      end;

cem.Text:=FormatCurr('0.#', hesab);
if combobox2.ItemIndex=1 then hesab:= hesab+ (strtocurr(tiraj.Text)*(20/100));
if combobox2.ItemIndex=2 then hesab:= hesab+ (strtocurr(tiraj.Text)*(30/100));
if combobox2.ItemIndex=3 then hesab:= hesab+ (strtocurr(tiraj.Text)*(30/100));
if combobox2.ItemIndex=4 then hesab:= hesab+ (strtocurr(tiraj.Text)*(60/100));
if combobox2.ItemIndex=5 then hesab:= hesab+ (strtocurr(tiraj.Text)*(50/100));
if combobox2.ItemIndex=6 then hesab:= hesab+ (strtocurr(tiraj.Text)*(70/100));

if combobox1.ItemIndex=1 then hesab:= hesab+ (strtocurr(tiraj.Text)*(10/100));
if combobox2.ItemIndex=1 then hesab:= hesab+ (strtocurr(tiraj.Text)*(20/100));


if combobox3.ItemIndex=1 then hesab:= hesab+ (strtocurr(tiraj.Text)*(20/1000));
if combobox3.ItemIndex=2 then hesab:= hesab+ (strtocurr(tiraj.Text)*(30/1000));
if combobox3.ItemIndex=3 then hesab:= hesab+ (strtocurr(tiraj.Text)*(40/1000));
if combobox3.ItemIndex=4 then hesab:= hesab+ (strtocurr(tiraj.Text)*(50/1000));

if combobox4.ItemIndex=1 then hesab:= hesab+ (500/100);
if combobox4.ItemIndex=2 then hesab:= hesab+ (50/100);
if combobox4.ItemIndex=3 then hesab:= hesab+ (1000/100);


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


  if checkbox1.Checked=true then
      begin
      edit7.Text:=currtostr((hesab/100)*strtocurr(label14.Caption));
       end;

edit3.Text:=FormatCurr('0.#', hesab);
edit6.Text:=FormatCurr('0.#', hesab-strtocurr(edit7.text));
label1.Caption:=currtostr(strtocurr(edit6.text)/strtocurr(tiraj.Text));
ggg:

end;

procedure TForm4.FormClose(Sender: TObject; var Action: TCloseAction);
begin
form1.Show;
end;

procedure TForm4.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
form1.Show;
end;

procedure TForm4.FormHide(Sender: TObject);
begin
form1.Show;
end;

procedure TForm4.SpeedButton1Click(Sender: TObject);
begin
form1.Show; close; 
end;

procedure TForm4.Image1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
li:=1;
lh:=x;
lk:=y;
end;

procedure TForm4.Image1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
if li=1 then begin
form4.Left:=form4.Left+x-lh;
form4.top:=form4.top+y-lk;
end; end;

procedure TForm4.Image1MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
li:=0;
lk:=0;
end;

procedure TForm4.FormDestroy(Sender: TObject);
begin
form1.Show;
end;

procedure TForm4.Button3Click(Sender: TObject);
var m:string;
begin

if (strtoint(tiraj.Text) >500) and (strtoint(tiraj.Text) <999) then m:='500';
if (strtoint(tiraj.Text) >1000) and (strtoint(tiraj.Text) <1499) then m:='1000';
if (strtoint(tiraj.Text) >1500) and (strtoint(tiraj.Text) <1999) then m:='1500';
if (strtoint(tiraj.Text) >2000) and (strtoint(tiraj.Text) <2499) then m:='2000';
if (strtoint(tiraj.Text) >2500) and (strtoint(tiraj.Text) <2999) then m:='2500';
if (strtoint(tiraj.Text) >3000) and (strtoint(tiraj.Text) <3499) then m:='3000';
if (strtoint(tiraj.Text) >3500) and (strtoint(tiraj.Text) <3999) then m:='3500';
if (strtoint(tiraj.Text) >4000) and (strtoint(tiraj.Text) <4499) then m:='4000';
if (strtoint(tiraj.Text) >4500) and (strtoint(tiraj.Text) <4999) then m:='4500';
if (strtoint(tiraj.Text) >5000) then m:='5000';



end;

end.
