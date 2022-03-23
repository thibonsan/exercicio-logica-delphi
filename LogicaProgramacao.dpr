program LogicaProgramacao;

uses
  Vcl.Forms,
  LogicaProgramacao.Views.MainForm in 'src\Views\LogicaProgramacao.Views.MainForm.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
