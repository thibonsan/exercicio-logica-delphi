unit LogicaProgramacao.Views.MainForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    pcMain: TPageControl;
    tsExercicio01: TTabSheet;
    tsExercicio02: TTabSheet;
    tsExercicio03: TTabSheet;
    tsExercicio04: TTabSheet;
    tsExercicio05: TTabSheet;
    Label1: TLabel;
    eExercicio01: TEdit;
    bExercicio01: TButton;
    mExercicio01: TMemo;
    Label2: TLabel;
    e01Exercicio02: TEdit;
    bExercicio02: TButton;
    mExercicio02: TMemo;
    Label3: TLabel;
    e02Exercicio02: TEdit;
    Label4: TLabel;
    eExercicio03: TEdit;
    bExercicio03: TButton;
    mExercicio03: TMemo;
    bExercicio04: TButton;
    mExercicio04: TMemo;
    Label5: TLabel;
    e01Exercicio05: TEdit;
    mExercicio05: TMemo;
    Label6: TLabel;
    e02Exercicio05: TEdit;
    bExercicio05: TButton;
    procedure bExercicio01Click(Sender: TObject);
    procedure bExercicio02Click(Sender: TObject);
    procedure bExercicio03Click(Sender: TObject);
    procedure bExercicio04Click(Sender: TObject);
    procedure bExercicio05Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.bExercicio01Click(Sender: TObject);
var
  numero: Integer;
  quadrado: Integer;
begin
  numero := StrToIntDef(eExercicio01.Text, 0);

  if numero <= 0 then
  begin
    ShowMessage('Informe um número maior que zero.');
    eExercicio01.Clear;
    eExercicio01.SetFocus;
    Exit;
  end;

  quadrado := numero * numero;

  mExercicio01.Lines.Add('O quadrado de ' + IntToStr(numero) + ' é: ' +
    IntToStr(quadrado));
end;

procedure TForm1.bExercicio02Click(Sender: TObject);
var
  x, n, p: Integer;
  i: Integer;
begin

  try
    x := StrToInt(e01Exercicio02.Text);
  except
    ShowMessage('Informe um número inteiro.');
    e01Exercicio02.Clear;
    e01Exercicio02.SetFocus;
    Exit;
  end;

  n := StrToIntDef(e02Exercicio02.Text, 0);

  if n <= 0 then
  begin
    ShowMessage('Informe um número maior que zero.');
    e02Exercicio02.Clear;
    e02Exercicio02.SetFocus;
    Exit;
  end;

  p := x;

  for i := 1 to n - 1 do
    p := p * x;

  mExercicio02.Lines.Add(IntToStr(x) + ' ^ ' + IntToStr(n) + ' = ' + IntToStr(p));
end;

procedure TForm1.bExercicio03Click(Sender: TObject);
var
  n: Integer;
  i: Integer;
  f: array of Integer;
  cont: Integer;
begin
  n := StrToIntDef(eExercicio03.Text, 0);

  if n <= 0 then
  begin
    ShowMessage('Informe um número maior que zero.');
    eExercicio03.Clear;
    eExercicio03.SetFocus;
    Exit;
  end;

  mExercicio03.Lines.Clear;
  mExercicio03.Lines.Add('Decomposição em fatores primos de ' + IntToStr(n) + ':');
  SetLength(f, 0);
  i := 2;

  while i * i <= n do
  begin
    while n mod i = 0 do
    begin
      SetLength(f, Length(f) + 1);
      f[Length(f) - 1] := i;
      n := n div i;
    end;

    Inc(i);
  end;

  if n > 1 then
  begin
    SetLength(f, Length(f) + 1);
    f[Length(f) - 1] := n;
  end;

  for i := 0 to length(f) - 1 do
    mExercicio03.Lines.Add(IntToStr(f[i]));

  mExercicio03.Lines.Add('Multiplicidade de cada fator:');
  cont := 0;

  for i := 0 to Length(f) - 1 do
  begin
    Inc(cont);

    if i = Length(f) - 1 then
      mExercicio03.Lines.Add('Fator ' + IntToStr(f[i]) + ' -> ' + 'Multiplicidade ' +
        IntToStr(cont))
    else if (f[i] <> f[i + 1]) then
    begin
      mExercicio03.Lines.Add('Fator ' + IntToStr(f[i]) + ' -> ' + 'Multiplicidade ' +
        IntToStr(cont));

      cont := 0;
    end;
  end;
end;

procedure TForm1.bExercicio04Click(Sender: TObject);
var
  s1: array[1..4] of Integer;
  s2: array[1..3] of Integer;
  s3: array of Integer;
  i, j: Integer;

  procedure Add(v: Integer);
  begin
    if Length(s3) = 0 then
    begin
      SetLength(s3, 1);
      s3[0] := v;
    end
    else if v <> s3[Length(s3) - 1] then
    begin
      SetLength(s3, Length(s3) + 1);
      s3[Length(s3) - 1] := v;
    end;
  end;
begin
  s1[1] := 3;
  s1[2] := 3;
  s1[3] := 8;
  s1[4] := 9;

  s2[1] := 4;
  s2[2] := 5;
  s2[3] := 7;

  mExercicio04.Lines.Clear;
  mExercicio04.Lines.Add('Array 1:');

  for i := 1 to Length(s1) do
    mExercicio04.Lines.Add(IntToStr(s1[i]));

  mExercicio04.Lines.Add('Array 2:');

  for i := 1 to Length(s2) do
    mExercicio04.Lines.Add(IntToStr(s2[i]));

  mExercicio04.Lines.Add('Array 3:');
  i := 1;
  j := 1;
  SetLength(s3, 0);

  while i <= Length(s1) do
  begin
    while j <= Length(s2) do
    begin
      if i < Length(s1) then
      begin
        if s1[i] < s2[j] then
        begin
          Add(s1[i]);
          Inc(i);

          if i <= Length(s1) then
            Break
          else
            Continue;
        end
      end;

      Add(s2[j]);
      Inc(j);
    end;

    if j > Length(s2) then
    begin
      Add(s1[i]);
      Inc(i);
    end;
  end;

  for i := 0 to Length(s3) - 1 do
    mExercicio04.Lines.Add(IntToStr(s3[i]));
end;

procedure TForm1.bExercicio05Click(Sender: TObject);
var
  n1, n2, n3, r: Integer;
begin
  n1 := StrToIntDef(e01Exercicio05.Text, 0);

  if n1 <= 0 then
  begin
    ShowMessage('Informe um número maior que zero.');
    e01Exercicio05.Clear;
    e01Exercicio05.SetFocus;
    Exit;
  end;

  n2 := StrToIntDef(e02Exercicio05.Text, 0);

  if n2 <= 0 then
  begin
    ShowMessage('Informe um número maior que zero.');
    e02Exercicio05.Clear;
    e02Exercicio05.SetFocus;
    Exit;
  end;

  mExercicio05.Lines.Add('MDC(' + IntToStr(n1) + ', ' + IntToStr(n2) + '):');

  while n2 <> 0 do
  begin
    r := n1 mod n2;
    n1 := n2;
    n2 := r;
  end;

  mExercicio05.Lines.Add(IntToStr(n1));
end;

end.
