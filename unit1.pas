unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button0: TButton;
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
    procedure ButtonSOLClick(Sender: TObject);
    procedure ButtonMINClick(Sender: TObject);
    procedure updateEingabeLabel(newValue: String);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form1: TForm1;
  eingabe : string;
  ergebnis : Integer;
  operation : string;


implementation

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

procedure TForm1.ButtonADDClick(Sender: TObject);
begin
     if eingabe <> '' then
        ergebnis := ergebnis + strtoint(eingabe);
        eingabe := '';
        operation := '+';
end;

procedure TForm1.ButtonMINClick(Sender: TObject);
begin
     if eingabe <> '' then
        ergebnis := ergebnis - strtoint(eingabe);
        eingabe := '';
        operation := '-';
end;



procedure TForm1.ButtonSOLClick(Sender: TObject);
begin
     if operation = '+' then
       ergebnis := ergebnis + strtoint(eingabe);
     if operation = '-' then
       ergebnis := ergebnis - strtoint(eingabe);

     Label2.caption := inttostr(ergebnis);
     eingabe := '0';
end;

end.

