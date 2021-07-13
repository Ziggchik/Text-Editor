unit Unitres;

interface

uses
  SysUtils, Classes,Graphics ;

type
  TBase = class
  private
  x: integer;
  y: Integer;
  bitmap: TBitmap;
    { Private declarations }
  public
  constructor Create(x0,y0 : Integer ; bitmap0 : TBitmap);//создание изображени€ с этими значени€ми

  procedure setX(x0:Integer);//значение х
  procedure setY(y0:Integer);//значение у
  procedure setBitmap(bitmap0:TBitmap);//значение изображени€

  function getX: Integer;//вз€ть х
  function getY: Integer;//вз€ть у
  function getBitmap: TBitmap;//вз€ть изображение
    { Public declarations }
  end;
  TApple = class(TBase)//объект €блоко

  end;
  THead = class(TBase)//объект голова

  end;
  TTail = class(TBase)//объект хвост

  end;

implementation

{$R *.dfm}

{ TBase }
//создание начального изображени€
constructor TBase.Create(x0, y0: Integer; bitmap0: TBitmap);
begin
  x:=x0;
  y:=y0;
  bitmap:=bitmap0;
end;
//результат при вз€тии картинки
function TBase.getBitmap: TBitmap;
begin
  Result:=bitmap;
end;
//результат при вз€тии х
function TBase.getX: Integer;
begin
  Result:=x;
end;
//результат при вз€тии у
function TBase.getY: Integer;
begin
  Result:=y;
end;
//присвоение значений дл€ картики
procedure TBase.setBitmap(bitmap0: TBitmap);
begin
  bitmap:=bitmap0;
end;
//присвоение значений дл€ х
procedure TBase.setX(x0: Integer);
begin
  x:=x0;
end;
//присвоение значений дл€ у
procedure TBase.setY(y0: Integer);
begin
  y:=y0;
end;

end.
