unit Unitthanks;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, jpeg, ExtCtrls;

type
  TThanks = class(TForm)
    lbl1: TLabel;
    img1: TImage;
    btn1: TBitBtn;
    procedure btn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Thanks: TThanks;

implementation

{$R *.dfm}
//закрыть форму
procedure TThanks.btn1Click(Sender: TObject);
begin
  Thanks.Close;
end;

end.
