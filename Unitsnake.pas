unit Unitsnake;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,Unitres, ExtCtrls;

type
  TFormgame = class(TForm)
    tmr1: TTimer;
    procedure tmr1Timer(Sender: TObject);//анимация объектов
    procedure FormCreate(Sender: TObject);//условия при создании формы и начало игры
    procedure NewGame;//новая игра
    procedure FormPaint(Sender: TObject);//отрисовка объектов
    procedure MoveSnake;//передвижение змейки
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);//управление змейкой с помощью клавиш
    procedure GamePlay;//геймплей игры
    procedure GameOver;//условия окончания игры
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Formgame: TFormgame;//форма для игры
  SnakLen: Integer;//длина змеи
  AHead: THead;//голова змеи
  AApple: TApple;//яблоко,которое будет есть змея
  ATails: array [1..100] of TTail;//сегменты хвоста
  dir: String;//направление движения змеи
  HeadPic,ApplePic,TailPic:TBitmap;//изображения яблока,хвоста,головы

implementation

{$R *.dfm}
//Анимация объекта
procedure TFormgame.tmr1Timer(Sender: TObject);
begin
  MoveSnake;//движение змеи
  GamePlay;//движения самой игры(геймплей)
  //GameOver;
  Repaint;//перерисовка процедур
end;
//Условия при создании формы
procedure TFormgame.FormCreate(Sender: TObject);
begin
DoubleBuffered:=true;
Color:=clBlack;
Width:=21*24;
Height:=21*24;
//Загрузка изображений из папки и начало игры
HeadPic:=TBitmap.Create;
HeadPic.LoadFromFile('C:\Users\1\Desktop\картинки\yellow.bmp');
ApplePic:=TBitmap.Create;
ApplePic.LoadFromFile('C:\Users\1\Desktop\картинки\red.bmp');
TailPic:=TBitmap.Create;
TailPic.LoadFromFile('C:\Users\1\Desktop\картинки\green.bmp');
NewGame;
end;
//Местонахождение объектов на форме, выбор направления, начальная длина и включение таймера с заданным интервалом
procedure TFormgame.NewGame;
begin
  AApple:=TApple.Create(random(20)*24,random(20)*24,ApplePic);
  AHead:=THead.Create(random(20)*24,random(20)*24,HeadPic);
  ATails[1]:=TTail.Create(AHead.getX,AHead.getY-24,TailPic);
  ATails[2]:=TTail.Create(AHead.getX,AHead.getY-48,TailPic);
  SnakLen:=2;
  dir:='Down';
  tmr1.Enabled:=true;
  tmr1.Interval:=300;
end;
//Отрисовка объектов на форме
procedure TFormgame.FormPaint(Sender: TObject);
var i:integer;
begin
  For i:= 1 to SnakLen do
  Canvas.Draw(ATails[i].getX,ATails[i].getY,ATails[i].getBitmap);
  Canvas.Draw(AApple.getX,AApple.getY,AApple.getBitmap);
  Canvas.Draw(AHead.getX,AHead.getY,AHead.getBitmap);
end;
//Движение змейки по нажатию клавиш
procedure TFormgame.MoveSnake;
var i:integer;
begin
 for i:= SnakLen downto 2 do
	begin
	ATails[i].setX(ATails[i-1].getX);
	ATails[i].setY(ATails[i-1].getY);
	end;
ATails[i].setX(AHead.getX);
ATails[i].setY(AHead.getY);
if dir= 'Down' Then AHead.SetY(AHead.getY+24);
if dir= 'Up' Then AHead.SetY(AHead.getY-24);
if dir= 'Left' Then AHead.SetX(AHead.getX-24);
if dir= 'Right' Then AHead.SetX(AHead.getX+24);

end;
//Изменение направления движения змейки
procedure TFormgame.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
If (Key = VK_LEFT) and (dir <>'Right') then dir:='Left';
If (Key = VK_RIGHT) and (dir <>'Left') then dir:='Right';
If (Key = VK_UP) and (dir <>'Down') then dir:='Up';
If (Key = VK_Down) and (dir <>'Up') then dir:='Down'
end;
//геймплей игры
procedure TFormgame.GamePlay;
var i:integer;
begin
 if(AHead.getX=AApple.getX) and(Ahead.getY=AApple.getY) then
begin
	SnakLen:=SnakLen+1;
	randomize;
	AApple.setX(random(20)*24);
	AApple.setY(random(20)*24);
	ATails[SnakLen]:=TTail.Create(ATails[SnakLen-1].getX,ATails[SnakLen-1].getY,TailPic);
end;


if AHead.getX<0 Then GameOver;
if AHead.getY<0 Then GameOver;
if AHead.getX>20*24Then GameOver;
if AHead.getY>20*24 Then GameOver;

for i:=1 to SnakLen do
if (AHead.getX= ATails[i].getX) and (AHead.getY= ATails[i].getY) then
GameOver;
end;
//условия для окончания игры(проигрыш)
procedure TFormgame.GameOver;
var i:integer;
begin
tmr1.Enabled:=false;
//ShowMessage('Game Over');
AHead.Free;
AApple.Free;
for i:=i to SnakLen do
ATails[i].free;
NewGame;
end;

end.
