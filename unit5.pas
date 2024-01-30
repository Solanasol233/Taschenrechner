unit Unit5;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls,
  Spin, ButtonPanel, Math;

type

  { TForm5 }

  TForm5 = class(TForm)
    Button1: TButton;
    CheckBox1: TCheckBox;
    GradeSpin1: TSpinEdit;
    Label1: TLabel;
    GradeSpin2: TSpinEdit;
    Label10: TLabel;
    LabelZN: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    GradeSpin3: TSpinEdit;
    Label4: TLabel;
    GradeSpin4: TSpinEdit;
    Label5: TLabel;
    GradeSpin5: TSpinEdit;
    Label6: TLabel;
    GradeSpin6: TSpinEdit;
    Label7: TLabel;
    GradeSpinKA: TSpinEdit;
    Label8: TLabel;
    Label9: TLabel;
    SpinEdit1: TSpinEdit;
    procedure Button1Click(Sender: TObject);
    procedure GradeSpin1Change(Sender: TObject);
    procedure GradeSpin2Change(Sender: TObject);
    procedure GradeSpin3Change(Sender: TObject);
    procedure GradeSpin4Change(Sender: TObject);
    procedure GradeSpin5Change(Sender: TObject);
    procedure GradeSpin6Change(Sender: TObject);
    procedure GradeSpinKAChange(Sender: TObject);
    procedure SpinEdit1Change(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form5: TForm5;
  Grade1, Grade2, Grade3, Grade4, Grade5, Grade6, GradeKA, NumOfGrades:Byte;
  DS: Real;

implementation

{$R *.lfm}

{ TForm5 }



procedure TForm5.GradeSpin1Change(Sender: TObject);
begin
     Grade1 := GradeSpin1.value;
end;

procedure TForm5.Button1Click(Sender: TObject);
begin
  if CheckBox1.checked then
     DS := ((((Grade1 + Grade2 + Grade3 + Grade4 + Grade5 + Grade6) / NumOfGrades) * 2) + GradeKA)/3
  else
     DS := (Grade1 + Grade2 + Grade3 + Grade4 + Grade5 + Grade6) / NumOfGrades;

  LabelZN.caption := FloatToStr(DS);


end;



procedure TForm5.GradeSpin2Change(Sender: TObject);
begin
     Grade2 := GradeSpin2.value;
end;

procedure TForm5.GradeSpin3Change(Sender: TObject);
begin
     Grade3 := GradeSpin3.Value;
end;

procedure TForm5.GradeSpin4Change(Sender: TObject);
begin
     Grade4 := GradeSpin4.Value;
end;

procedure TForm5.GradeSpin5Change(Sender: TObject);
begin
     Grade5 := GradeSpin5.Value;
end;

procedure TForm5.GradeSpin6Change(Sender: TObject);
begin
     Grade6 := GradeSpin6.value;
end;

procedure TForm5.GradeSpinKAChange(Sender: TObject);
begin
  GradeKA := GradeSpinKA.Value;
end;

procedure TForm5.SpinEdit1Change(Sender: TObject);
begin
  NumOfGrades := SpinEdit1.value;
end;



end.

