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
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form1: TForm1;
  eingabe : string;
  ergebnis : Integer;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Button0Click(Sender: TObject);
begin
  eingabe:=eingabe + '0' ;
  Label2.caption := eingabe;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  eingabe:=eingabe + '1' ;
  Label2.caption := eingabe;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  eingabe:=eingabe + '2';
  Label2.caption := eingabe;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  eingabe:=eingabe + '3';
  Label2.caption := eingabe
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
  eingabe:=eingabe + '4';
  Label2.caption := eingabe;
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
  eingabe:=eingabe + '5';
  label2.caption := eingabe;
end;

procedure TForm1.Button6Click(Sender: TObject);
begin
  eingabe:=eingabe + '6';
  label2.caption := eingabe;
end;

procedure TForm1.Button7Click(Sender: TObject);
begin
  eingabe:=eingabe + '7';
  label2.caption := eingabe;
end;

procedure TForm1.Button8Click(Sender: TObject);
begin
  eingabe:=eingabe + '8';
  label2.caption:= eingabe
end;

procedure TForm1.Button9Click(Sender: TObject);
begin
  eingabe:=eingabe + '9';
  label2.caption := eingabe
end;

procedure TForm1.ButtonADDClick(Sender: TObject);
begin
     ergebnis := ergebnis + strtoint(eingabe);
end;

procedure TForm1.ButtonSOLClick(Sender: TObject);
begin
     Label2.Caption := inttostr(ergebnis);
end;

end.

