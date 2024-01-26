//Lucas der Hühnergott war hier!!

unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls, Math;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button0: TButton;
    Button10: TButton;
    ButtonCOM: TButton;
    Buttonlog2: TButton;
    Buttonlog10: TButton;
    Buttonlog: TButton;
    Buttonln: TButton;
    Button10POTx: TButton;
    ButtonCOS: TButton;
    ButtonTAN: TButton;
    ButtonSIN: TButton;
    ButtonFAC: TButton;
    ButtonPOT: TButton;
    ButtonDEL: TButton;
    ButtonSQR: TButton;
    ButtonSOL: TButton;
    ButtonADD: TButton;
    ButtonDIV: TButton;
    ButtonMIN: TButton;
    ButtonMUL: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    Label1: TLabel;
    Label2: TLabel;
    procedure Button0Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure Button10POTxClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure ButtonADDClick(Sender: TObject);
    procedure ButtonCOMClick(Sender: TObject);
    procedure ButtonCOSClick(Sender: TObject);
    procedure ButtonDELClick(Sender: TObject);
    procedure ButtonDIVClick(Sender: TObject);
    procedure ButtonFACClick(Sender: TObject);
    procedure ButtonlnClick(Sender: TObject);
    procedure Buttonlog10Click(Sender: TObject);
    procedure Buttonlog2Click(Sender: TObject);
    procedure ButtonlogClick(Sender: TObject);
    procedure ButtonMINClick(Sender: TObject);
    procedure ButtonMULClick(Sender: TObject);
    procedure ButtonPOTClick(Sender: TObject);
    procedure ButtonSINClick(Sender: TObject);
    procedure ButtonSOLClick(Sender: TObject);
    procedure ButtonSQRClick(Sender: TObject);
    procedure ButtonTANClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure updateEingabeLabel(newValue: String);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form1: TForm1;
  eingabe : string;
  ergebnis : real;
  operation : string;
  i: integer;


implementation
uses unit2;
{$R *.lfm}

{ TForm1 }

procedure TForm1.updateEingabeLabel(newValue:String);
begin
     eingabe:=eingabe + newValue ;
     Label2.caption := eingabe;
end;

procedure TForm1.Button0Click(Sender: TObject);
begin
  updateEingabeLabel('0');
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  updateEingabeLabel('1');
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  updateEingabeLabel('2');
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  updateEingabeLabel('3');
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
  updateEingabeLabel('4');
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
  updateEingabeLabel('5');
end;

procedure TForm1.Button6Click(Sender: TObject);
begin
  updateEingabeLabel('6');
end;

procedure TForm1.Button7Click(Sender: TObject);
begin
  updateEingabeLabel('7');
end;

procedure TForm1.Button8Click(Sender: TObject);
begin
  updateEingabeLabel('8');
end;

procedure TForm1.Button9Click(Sender: TObject);
begin
  updateEingabeLabel('9');
end;

procedure TForm1.ButtonCOMClick(Sender: TObject);
begin
  updateEingabeLabel(',');
end;

procedure TForm1.Button10Click(Sender: TObject);
begin
   Form2.show;
end;

procedure TForm1.ButtonADDClick(Sender: TObject);
begin
     if eingabe <> '' then
        ergebnis := ergebnis + strtofloat(eingabe);
        eingabe := '';
        operation := '+';
end;



procedure TForm1.ButtonCOSClick(Sender: TObject);
begin
  if eingabe <> '' then
        ergebnis := ergebnis + strtofloat(eingabe);
        operation := 'cos';
        eingabe:='';
end;

procedure TForm1.ButtonDELClick(Sender: TObject);
begin
  Label2.caption:='';
  eingabe := '';
  ergebnis := 0;
end;

procedure TForm1.ButtonDIVClick(Sender: TObject);
begin
  if eingabe <> '' then
        ergebnis := ergebnis + strtofloat(eingabe);
        eingabe := '';
        operation := '/';
end;

procedure TForm1.ButtonFACClick(Sender: TObject);
begin
    if eingabe <> '' then
        ergebnis := ergebnis + strtofloat(eingabe);
        eingabe := '';
        operation := '!';
end;

procedure TForm1.ButtonlnClick(Sender: TObject);
begin
     if eingabe <> '' then
        ergebnis := ergebnis + strtofloat(eingabe);
        eingabe := '';
        operation := 'ln';
end;

procedure TForm1.Buttonlog10Click(Sender: TObject);
begin
     if eingabe <> '' then
        ergebnis := ergebnis + strtofloat(eingabe);
        eingabe := '';
        operation := 'log10';
end;

procedure TForm1.Buttonlog2Click(Sender: TObject);
begin
     if eingabe <> '' then
        ergebnis := ergebnis + strtofloat(eingabe);
        eingabe := '';
        operation := 'log2';
end;

procedure TForm1.ButtonlogClick(Sender: TObject);
begin
     if eingabe <> '' then
        ergebnis := ergebnis + strtofloat(eingabe);
        eingabe := '';
        operation := 'log';
end;

procedure TForm1.ButtonMINClick(Sender: TObject);
begin
     if eingabe <> '' then
        ergebnis := ergebnis + strtofloat(eingabe);
        eingabe := '';
        operation := '-';
end;

procedure TForm1.ButtonMULClick(Sender: TObject);
begin
   if eingabe <> '' then
        ergebnis := ergebnis + strtofloat(eingabe);
        eingabe := '';
        operation := '*';
end;

procedure TForm1.ButtonPOTClick(Sender: TObject);
begin
  if eingabe <> '' then
    ergebnis := ergebnis + strtofloat(eingabe);
        operation := '^';
        eingabe:='';
end;

procedure TForm1.ButtonSINClick(Sender: TObject);
begin
   if eingabe <> '' then
        ergebnis := ergebnis + strtofloat(eingabe);
        operation := 'sin';
        eingabe:='';
end;

procedure TForm1.ButtonSQRClick(Sender: TObject);
begin
    if eingabe <> '' then
        ergebnis := ergebnis + strtofloat(eingabe);
        operation := 'sqrt';
        eingabe:='';
end;

procedure TForm1.ButtonTANClick(Sender: TObject);
begin
   if eingabe <> '' then
        ergebnis := ergebnis + strtofloat(eingabe);
        operation := 'tan';
        eingabe:='';
end;

procedure TForm1.FormCreate(Sender: TObject);
begin

end;

procedure TForm1.Button10POTxClick(Sender: TObject);
begin
    if eingabe <> '' then
        ergebnis := ergebnis + strtofloat(eingabe);
        operation := '10POTx';
        eingabe:='';
end;

procedure TForm1.ButtonSOLClick(Sender: TObject);
var n:integer;
begin
     if operation = '+' then
       ergebnis := ergebnis + strtofloat(eingabe);
     if operation = '-' then
       ergebnis := ergebnis - strtofloat(eingabe);
     if operation = '*' then
       ergebnis := ergebnis * strtofloat(eingabe);
     if operation = '/' then
       ergebnis := ergebnis / strtofloat(eingabe);
     if operation = 'sqrt' then
       ergebnis := sqrt(ergebnis);
     if operation = '^' then
       ergebnis := ergebnis ** strtofloat(eingabe);
     if operation = '!' then
       begin
         n:= round(ergebnis);
         ergebnis:=1;
         for i := n downto 1 do
            ergebnis := ergebnis * i;

       end;
     if operation = 'sin' then
       ergebnis := sin(ergebnis);
     if operation = 'cos' then
       ergebnis := cos(ergebnis);
     if operation = 'tan' then
       ergebnis := tan(ergebnis);
     if operation = '10POTx' then
       ergebnis := 10 ** round(ergebnis);
     if operation = 'ln' then
       ergebnis := ln(ergebnis);
     if operation = 'log' then
       ergebnis := logn(strtofloat(eingabe), ergebnis);
     if operation = 'log10' then
       ergebnis := log10(ergebnis);
     if operation = 'log2' then
       ergebnis := log2(ergebnis);
     Label2.caption := floattostr(ergebnis);
     eingabe := '';
     operation := '';
end;



end.

