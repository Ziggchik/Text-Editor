unit Uniticon;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ShellAPI, Grids, ExtCtrls, StdCtrls;

type
  TFormicon = class(TForm)
    dlgOpen1: TOpenDialog;
    dlgSave1: TSaveDialog;
    bvl1: TBevel;
    strngrd1: TStringGrid;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    btn4: TButton;
    procedure FormCreate(Sender: TObject);
    procedure strngrd1DrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure strngrd1SelectCell(Sender: TObject; ACol, ARow: Integer;
      var CanSelect: Boolean);
  private
    CurItem:LongInt;//хранит кол-во заполненных €чеек
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Formicon: TFormicon;

implementation

{$R *.dfm}
//запуск приложени€ дл€ настройки
procedure TFormicon.FormCreate(Sender: TObject);
begin
  //при создании нет объектов
  CurItem:=0;
end;

procedure TFormicon.strngrd1DrawCell(Sender: TObject; ACol, ARow: Integer;
  Rect: TRect; State: TGridDrawState);
begin
  //если объекты в €чейках €вл€ют€ иконками тогда
  if strngrd1.Objects[ACol,ARow] is TIcon then
  // сместитьс€ и нарисовать иконку
  strngrd1.Canvas.Draw(Rect.Left+56,Rect.Top+24,TIcon(strngrd1.Objects[ACol,ARow]));
end;

procedure TFormicon.btn1Click(Sender: TObject);
var
PNAme:array[0..255] of char;//хранение пути доступа к файлу
FName:string[13];//»м€ файла с расширением
N:word;//счЄтчик иконок
iconH:Hicon;//сама иконка
//генераци€ иконки
begin
 begin
  //открытие иконки
  with dlgOpen1 do
    begin
      if not execute then Exit;//выход из процедуры
      Fname:=ExtractFileNAme(Filename);//извлекаем из выбранного файла его им€
      StrPCopy(Pname,FileNAme);//копирование пути и имени файла
    end;
  n:=0;//обнуление счЄтчика
 with strngrd1 do
  //ќтображение всей информации в €чейке
  repeat//входим в бесконечный цикл
    iconH:=Extracticon(Hinstance,Pname,n);//иконку извлекаем и записываем в переменную
    if iconH<=1 then break;//если иконки нет то прервать цикл
    col:=CurItem mod ColCount;//узнаем столбец
    if (CurItem div ColCount)>=RowCount then //если кол-во заполненных €чеек не вмещаетс€ в кол-во строк то добавл€ем новую строку
    RowCount:=RowCount+1;
    row:=CuriTem div ColCount;//узнаем строку
    Cells[Col,Row]:=Fname+'#'+inttostr(n);//присвоить им€ файла и номер
    Objects[Col,Row]:=Ticon.Create;//загрузить саму иконку
    //работа с текущей иконкой
    with Objects[Col,Row] as Ticon do
    Handle:=iconH;//отображение иконки на мониторе
    CurItem:=CurItem+1;//увеличение кол-ва заполненных €чеек
    n:=n+1;//увеличение счЄтчика
    until false;
  end;
end;

procedure TFormicon.btn2Click(Sender: TObject);
// сохранение иконки
begin
  if dlgSave1.Execute then
  with strngrd1 do
    with Objects[Col,Row] as TIcon do
      SaveToFile(dlgSave1.FileName);
end;

procedure TFormicon.btn3Click(Sender: TObject);
var
  c,r:Integer;
begin
   Formicon.Icon:=strngrd1.objects[c,r] as Ticon
end;

procedure TFormicon.btn4Click(Sender: TObject);
var
  c,r:Integer;
begin
   Application.Icon:=strngrd1.objects[C,R] as Ticon
end;

procedure TFormicon.strngrd1SelectCell(Sender: TObject; ACol,
  ARow: Integer; var CanSelect: Boolean);
var
  c,r:Integer;
begin
  c:=Acol;
  r:=ARow;
end;

end.
