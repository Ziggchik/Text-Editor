unit Unitsnake;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,Unitres, ExtCtrls;

type
  TFormgame = class(TForm)
    tmr1: TTimer;
    procedure tmr1Timer(Sender: TObject);//�������� ��������
    procedure FormCreate(Sender: TObject);//������� ��� �������� ����� � ������ ����
    procedure NewGame;//����� ����
    procedure FormPaint(Sender: TObject);//��������� ��������
    procedure MoveSnake;//������������ ������
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);//���������� ������� � ������� ������
    procedure GamePlay;//�������� ����
    procedure GameOver;//������� ��������� ����
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Formgame: TFormgame;//����� ��� ����
  SnakLen: Integer;//����� ����
  AHead: THead;//������ ����
  AApple: TApple;//������,������� ����� ���� ����
  ATails: array [1..100] of TTail;//�������� ������
  dir: String;//����������� �������� ����
  HeadPic,ApplePic,TailPic:TBitmap;//����������� ������,������,������

implementation

{$R *.dfm}
//�������� �������
procedure TFormgame.tmr1Timer(Sender: TObject);
begin
  MoveSnake;//�������� ����
  GamePlay;//�������� ����� ����(��������)
  //GameOver;
  Repaint;//����������� ��������
end;
//������� ��� �������� �����
procedure TFormgame.FormCreate(Sender: TObject);
begin
DoubleBuffered:=true;
Color:=clBlack;
Width:=21*24;
Height:=21*24;
//�������� ����������� �� ����� � ������ ����
HeadPic:=TBitmap.Create;
HeadPic.LoadFromFile('C:\Users\1\Desktop\��������\yellow.bmp');
ApplePic:=TBitmap.Create;
ApplePic.LoadFromFile('C:\Users\1\Desktop\��������\red.bmp');
TailPic:=TBitmap.Create;
TailPic.LoadFromFile('C:\Users\1\Desktop\��������\green.bmp');
NewGame;
end;
//��������������� �������� �� �����, ����� �����������, ��������� ����� � ��������� ������� � �������� ����������
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
//��������� �������� �� �����
procedure TFormgame.FormPaint(Sender: TObject);
var i:integer;
begin
  For i:= 1 to SnakLen do
  Canvas.Draw(ATails[i].getX,ATails[i].getY,ATails[i].getBitmap);
  Canvas.Draw(AApple.getX,AApple.getY,AApple.getBitmap);
  Canvas.Draw(AHead.getX,AHead.getY,AHead.getBitmap);
end;
//�������� ������ �� ������� ������
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
//��������� ����������� �������� ������
procedure TFormgame.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
If (Key = VK_LEFT) and (dir <>'Right') then dir:='Left';
If (Key = VK_RIGHT) and (dir <>'Left') then dir:='Right';
If (Key = VK_UP) and (dir <>'Down') then dir:='Up';
If (Key = VK_Down) and (dir <>'Up') then dir:='Down'
end;
//�������� ����
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
//������� ��� ��������� ����(��������)
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
