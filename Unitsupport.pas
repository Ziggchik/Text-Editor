unit Unitsupport;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, jpeg;

type
  TFormsupport = class(TForm)
    img1: TImage;
    Label1: TLabel;
    tmr1: TTimer;
    procedure tmr1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Formsupport: TFormsupport;

implementation

uses  Unitcarry;

{$R *.dfm}
//показ заставки с послудующим показом основной формы
procedure TFormsupport.tmr1Timer(Sender: TObject);
begin
  Formsupport.Hide;//спрятать заставку
  Formcarry.Show;//показать основную форму
  tmr1.Enabled:=false;//выключить таймер
end;

end.
