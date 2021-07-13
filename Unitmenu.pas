unit Unitmenu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, ExtCtrls, ColorGrd, StdCtrls, ActnList, ComCtrls, ToolWin,
  ImgList;

type
  TFormmenu = class(TForm)
    Shape1: TShape;
    MainMenu1: TMainMenu;
    Figure1: TMenuItem;
    Rectangle1: TMenuItem;
    Ellipse1: TMenuItem;
    RondRect1: TMenuItem;
    Circle1: TMenuItem;
    RoundSquare1: TMenuItem;
    Color1: TMenuItem;
    LightRed1: TMenuItem;
    LightGreen1: TMenuItem;
    LightBlue1: TMenuItem;
    Style1: TMenuItem;
    Solid1: TMenuItem;
    Clear1: TMenuItem;
    Cross1: TMenuItem;
    DiagCross1: TMenuItem;
    F1: TMenuItem;
    Exit1: TMenuItem;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    N9: TMenuItem;
    N10: TMenuItem;
    clrgrd1: TColorGrid;
    btn1: TButton;
    Button1: TButton;
    ActionList1: TActionList;
    RoundSquare: TAction;
    Rectangle: TAction;
    Ellipse: TAction;
    RoundRect: TAction;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    ToolButton5: TToolButton;
    ImageList1: TImageList;
    Circle: TAction;
    ToolButton4: TToolButton;
    ToolButton6: TToolButton;
    ToolButton7: TToolButton;
    ToolButton8: TToolButton;
    ToolButton9: TToolButton;
    Green: TAction;
    Red: TAction;
    Blue: TAction;
    ToolButton10: TToolButton;
    ToolButton11: TToolButton;
    ToolButton12: TToolButton;
    ToolButton13: TToolButton;
    ToolButton14: TToolButton;
    ToolButton15: TToolButton;
    Solid: TAction;
    Clear: TAction;
    Cross: TAction;
    DiagCross: TAction;
    FDiagonal: TAction;
    btn2: TToolButton;
    ToolButton16: TToolButton;
    exit: TAction;
    procedure FormCreate(Sender: TObject);
    procedure Rectangle1Click(Sender: TObject);
    procedure Ellipse1Click(Sender: TObject);
    procedure RondRect1Click(Sender: TObject);
    procedure Circle1Click(Sender: TObject);
    procedure RoundSquare1Click(Sender: TObject);
    procedure LightRed1Click(Sender: TObject);
    procedure LightGreen1Click(Sender: TObject);
    procedure LightBlue1Click(Sender: TObject);
    procedure Solid1Click(Sender: TObject);
    procedure Clear1Click(Sender: TObject);
    procedure Cross1Click(Sender: TObject);
    procedure DiagCross1Click(Sender: TObject);
    procedure F1Click(Sender: TObject);
    procedure Exit1Click(Sender: TObject);
    procedure clrgrd1Change(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure RectangleExecute(Sender: TObject);
    procedure RoundSquareExecute(Sender: TObject);
    procedure RedExecute(Sender: TObject);
    procedure GreenExecute(Sender: TObject);
    procedure BlueExecute(Sender: TObject);
    procedure SolidExecute(Sender: TObject);
    procedure ClearExecute(Sender: TObject);
    procedure CrossExecute(Sender: TObject);
    procedure DiagCrossExecute(Sender: TObject);
    procedure EllipseExecute(Sender: TObject);
    procedure RoundRectExecute(Sender: TObject);
    procedure CircleExecute(Sender: TObject);
    procedure FDiagonalExecute(Sender: TObject);
    procedure EnabledItem(n:TMenuItem);
    procedure ToolButton16Click(Sender: TObject);
  private
  //Цвет кисти
  BrushColor:TColor;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Formmenu: TFormmenu;

implementation

{$R *.dfm}
procedure TFormmenu.EnabledItem(n:TMenuItem);
begin
  Rectangle1.Enabled:=True;
  Ellipse1.Enabled:=True;
  Circle1.Enabled:=True;
  RoundSquare1.Enabled:=True;
  n.Enabled:=False;
end;


//Настройка фигур
procedure TFormmenu.FormCreate(Sender: TObject);
begin
  BrushColor:=RGB(0,0,255);
  Shape1.Brush.Color:=BrushColor;
  Shape1.Pen.Color:=clWhite;
  Shape1.Pen.Width:=2;
end;
//Прямоугольник
procedure TFormmenu.Rectangle1Click(Sender: TObject);
begin
  Shape1.Shape:=stRectangle;
end;
//Эллипс
procedure TFormmenu.Ellipse1Click(Sender: TObject);
begin
  Shape1.Shape:=stEllipse;
end;
//Прямоугольник с скругленными краями
procedure TFormmenu.RondRect1Click(Sender: TObject);
begin
  Shape1.Shape:=stRoundRect;
end;
//круг
procedure TFormmenu.Circle1Click(Sender: TObject);
begin
  Shape1.Shape:=stCircle;
end;
//квадрат с скругленными краями
procedure TFormmenu.RoundSquare1Click(Sender: TObject);
begin
  Shape1.Shape:=stRoundSquare;
end;
//красный цвет
procedure TFormmenu.LightRed1Click(Sender: TObject);
begin
  BrushColor:=RGB(255,0,0);
  Shape1.Brush.Color:=BrushColor;
end;
//зелёный цвет
procedure TFormmenu.LightGreen1Click(Sender: TObject);
begin
  BrushColor:=RGB(0,255,0);
  Shape1.Brush.Color:=BrushColor;
end;
//голубой цвет
procedure TFormmenu.LightBlue1Click(Sender: TObject);
begin
  BrushColor:=RGB(0,0,255);
  Shape1.Brush.Color:=BrushColor;
end;
//заливка
procedure TFormmenu.Solid1Click(Sender: TObject);
begin
  Shape1.Brush.Color:=BrushColor;
  Shape1.Brush.Style:=bsSolid;
end;
//очистка
procedure TFormmenu.Clear1Click(Sender: TObject);
begin
  Shape1.Brush.Color:=BrushColor;
  Shape1.Brush.Style:=bsClear;
end;
//стиль в клеточку
procedure TFormmenu.Cross1Click(Sender: TObject);
begin
  Shape1.Brush.Color:=BrushColor;
  Shape1.Brush.Style:=bsCross;
end;
//клеточка в диагональ
procedure TFormmenu.DiagCross1Click(Sender: TObject);
begin
  Shape1.Brush.Color:=BrushColor;
  Shape1.Brush.Style:=bsDiagCross;
end;
//диагональный стиль
procedure TFormmenu.F1Click(Sender: TObject);
begin
  Shape1.Brush.Color:=BrushColor;
  Shape1.Brush.Style:=bsFDiagonal;
end;
//закрытие приложения
procedure TFormmenu.Exit1Click(Sender: TObject);
begin
  Close;
end;

procedure TFormmenu.clrgrd1Change(Sender: TObject);
begin
//оператор "с"
  with clrgrd1
  do
    begin
      if ForeGroundColor=BackGroundColor then
        Showmessage('так нельзя')
      else
        Begin
          Shape1.Pen.Color:=ForeGroundColor;
          Shape1.Pen.Color:=ForeGroundColor;
          Shape1.Pen.Color:=ForeGroundColor;
          Shape1.Pen.Color:=ForeGroundColor;
          Shape1.Pen.Color:=ForeGroundColor;
          Shape1.Pen.Color:=ForeGroundColor;
          Shape1.Brush.Color:=BackGroundColor;
          Shape1.Brush.Color:=BackGroundColor;
          Shape1.Brush.Color:=BackGroundColor;
          Shape1.Brush.Color:=BackGroundColor;
          Shape1.Brush.Color:=BackGroundColor;
          Shape1.Brush.Color:=BackGroundColor
        end;
    end;
end;

procedure TFormmenu.btn1Click(Sender: TObject);
begin
  if Shape1.pen.width<20
  then
    Shape1.pen.width:=shape1.pen.width+2;
    Shape1.pen.width:=shape1.pen.width+2;
    Shape1.pen.width:=shape1.pen.width+2;
    Shape1.pen.width:=shape1.pen.width+2;
    Shape1.pen.width:=shape1.pen.width+2;
    Shape1.pen.width:=shape1.pen.width+2;
end;

procedure TFormmenu.Button1Click(Sender: TObject);
begin
if Shape1.pen.width<20
  then
    Shape1.pen.width:=shape1.pen.width-2;
    Shape1.pen.width:=shape1.pen.width-2;
    Shape1.pen.width:=shape1.pen.width-2;
    Shape1.pen.width:=shape1.pen.width-2;
    Shape1.pen.width:=shape1.pen.width-2;
    Shape1.pen.width:=shape1.pen.width-2;
end;

procedure TFormmenu.RectangleExecute(Sender: TObject);
begin
  Shape1.Shape:=stRectangle;
end;

procedure TFormmenu.RoundSquareExecute(Sender: TObject);
begin
  Shape1.Shape:=stRoundSquare;
end;

procedure TFormmenu.RedExecute(Sender: TObject);
begin
  BrushColor:=RGB(255,0,0);
  Shape1.Brush.Color:=BrushColor;
end;

procedure TFormmenu.GreenExecute(Sender: TObject);
begin
   BrushColor:=RGB(0,255,0);
  Shape1.Brush.Color:=BrushColor;
end;

procedure TFormmenu.BlueExecute(Sender: TObject);
begin
   BrushColor:=RGB(0,0,255);
   Shape1.Brush.Color:=BrushColor;
end;

procedure TFormmenu.SolidExecute(Sender: TObject);
begin
   Shape1.Brush.Color:=BrushColor;
   Shape1.Brush.Style:=bsSolid;
end;

procedure TFormmenu.ClearExecute(Sender: TObject);
begin
   Shape1.Brush.Color:=BrushColor;
  Shape1.Brush.Style:=bsClear;
end;

procedure TFormmenu.CrossExecute(Sender: TObject);
begin
  Shape1.Brush.Color:=BrushColor;
  Shape1.Brush.Style:=bsCross;
end;

procedure TFormmenu.DiagCrossExecute(Sender: TObject);
begin
  Shape1.Brush.Color:=BrushColor;
  Shape1.Brush.Style:=bsDiagCross;
end;

procedure TFormmenu.EllipseExecute(Sender: TObject);
begin
  Shape1.Shape:=stEllipse;
end;

procedure TFormmenu.RoundRectExecute(Sender: TObject);
begin
  Shape1.Shape:=stRoundSquare;
end;

procedure TFormmenu.CircleExecute(Sender: TObject);
begin
  Shape1.Shape:=stCircle;
end;

procedure TFormmenu.FDiagonalExecute(Sender: TObject);
begin
   Shape1.Brush.Color:=BrushColor;
   Shape1.Brush.Style:=bsFDiagonal;
end;

procedure TFormmenu.ToolButton16Click(Sender: TObject);
begin
  Close;
end;

end.
