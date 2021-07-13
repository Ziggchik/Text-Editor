unit Unitdisplay;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, ExtCtrls;

type
  TFormdisplay = class(TForm)
    bvl1: TBevel;
    drwgrd1: TDrawGrid;
    cbb1: TComboBox;
    pnl1: TPanel;
    procedure drwgrd1DrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure cbb1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure drwgrd1SelectCell(Sender: TObject; ACol, ARow: Integer;
      var CanSelect: Boolean);
    procedure drwgrd1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure pnl1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Formdisplay: TFormdisplay;

implementation

uses Unitcarry;

{$R *.dfm}

procedure TFormdisplay.drwgrd1DrawCell(Sender: TObject; ACol, ARow: Integer;
  Rect: TRect; State: TGridDrawState);
begin
   //работа с холстом(изобр на DrawGrid1)
 with drwgrd1.Canvas do
  begin
    //размер шрифта
    Font.Size:=drwgrd1.DefaultRowHeight div 2;
    //текст внутри rect(пр€моугольник) внутри рисуем символ
    TextRect( Rect, Rect.Left, Rect.Top,Char((ARow+1)*drwgrd1.ColCount+aCol));
  end;
end;

procedure TFormdisplay.cbb1Click(Sender: TObject);
begin
  //передача шрифта в DrawGrid1
  drwgrd1.Font.Name:=cbb1.Text;
  pnl1.Font.Name:=cbb1.Text;
  //если им€ пропущены обращени€ к форме
  Caption:='Font Display-'+Drwgrd1.Font.Name;
end;

procedure TFormdisplay.FormCreate(Sender: TObject);
begin
// работа с cbb1
  With cbb1 do
  begin
  //экранные шрифты
  Items:=Screen.Fonts;
  ItemIndex:=Items.IndexOf(Font.Name);
  end;
   Caption:='Font Display-'+ Font.Name;
  //OnPaint=Cbb1Click
end;

procedure TFormdisplay.FormResize(Sender: TObject);
begin
// высота строки дл€ DG1
  drwgrd1.DefaultRowHeight:=ClientHeight div (drwgrd1.RowCount+2)-1;
  pnl1.Height:= drwgrd1.DefaultRowHeight*3;
  pnl1.Width:=  drwgrd1.DefaultRowHeight*4;
  pnl1.Font.size:=drwgrd1.DefaultRowHeight;
 // Ўирина каждой €чейки DG1
  drwgrd1.DefaultColWidth:=ClientWidth div (drwgrd1.ColCount+1);
 // ќбновить
  Refresh;
end;

procedure TFormdisplay.drwgrd1SelectCell(Sender: TObject; ACol, ARow: Integer;
  var CanSelect: Boolean);
begin
  // отоброжение символа на панели
 pnl1.Caption:=Char((ARow+1)*drwgrd1.ColCount+aCol);
 pnl1.left:=Acol*drwgrd1.DefaultColWidth;
 pnl1.Top:=ARow*drwgrd1.DefaultRowHeight;
 pnl1.Visible:=True;
end;
//закрытие панельки по кнопке Enter
procedure TFormdisplay.drwgrd1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = vk_Return then
 pnl1.Visible:=False;
end;
//отображение выбранного символа на основной форме
procedure TFormdisplay.pnl1Click(Sender: TObject);
begin
  Formcarry.mmo1.selAttributes.Name:=cbb1.Text;
  Formcarry.mmo1.seltext :=pnl1.caption;
end;

end.
