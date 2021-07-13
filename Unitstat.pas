unit Unitstat;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TeEngine, Series, ExtCtrls, TeeProcs, Chart, StdCtrls;

type
  TFormstat = class(TForm)
    Timer1: TTimer;
    cht1: TChart;
    psrsSeries1: TPieSeries;
    btn1: TButton;
    btn2: TButton;
    procedure Timer1Timer(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Formstat: TFormstat;//статистика

implementation

{$R *.dfm}
//добавление вращения круга статитстики
procedure TFormstat.Timer1Timer(Sender: TObject);
begin
 psrsSeries1.RotationAngle:=psrsSeries1.RotationAngle+1;
end;
//выключить вращение
procedure TFormstat.btn1Click(Sender: TObject);
begin
  Timer1.Enabled:=False;
end;
//включить вращение
procedure TFormstat.btn2Click(Sender: TObject);
begin
  Timer1.Enabled:=true;
end;

end.
