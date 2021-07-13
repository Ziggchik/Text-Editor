program Project1;

uses
  Forms,
  Unitcarry in 'Unitcarry.pas' {Formcarry},
  Unitsupport in 'Unitsupport.pas' {Formsupport},
  Unitstat in 'Unitstat.pas' {Formstat},
  Unitdisplay in 'Unitdisplay.pas' {Formdisplay},
  Uniticon in 'Uniticon.pas' {Formicon},
  Unitthanks in 'Unitthanks.pas' {Thanks},
  UnitGodlike in 'UnitGodlike.pas' {FormGodlike},
  Unitres in 'Unitres.pas' {DataModule1: TDataModule},
  Unitsnake in 'Unitsnake.pas' {Formgame};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'Текстовый редактор "Vittorio"';
  Application.CreateForm(TFormsupport, Formsupport);
  Application.CreateForm(TFormcarry, Formcarry);
  Application.CreateForm(TFormstat, Formstat);
  Application.CreateForm(TFormdisplay, Formdisplay);
  Application.CreateForm(TFormicon, Formicon);
  Application.CreateForm(TThanks, Thanks);
  Application.CreateForm(TFormGodlike, FormGodlike);
  //Application.CreateForm(TDataModule1, DataModule1);
  Application.CreateForm(TFormgame, Formgame);
  Application.Run;
end.
