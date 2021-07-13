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
    CurItem:LongInt;//������ ���-�� ����������� �����
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Formicon: TFormicon;

implementation

{$R *.dfm}
//������ ���������� ��� ���������
procedure TFormicon.FormCreate(Sender: TObject);
begin
  //��� �������� ��� ��������
  CurItem:=0;
end;

procedure TFormicon.strngrd1DrawCell(Sender: TObject; ACol, ARow: Integer;
  Rect: TRect; State: TGridDrawState);
begin
  //���� ������� � ������� ������� �������� �����
  if strngrd1.Objects[ACol,ARow] is TIcon then
  // ���������� � ���������� ������
  strngrd1.Canvas.Draw(Rect.Left+56,Rect.Top+24,TIcon(strngrd1.Objects[ACol,ARow]));
end;

procedure TFormicon.btn1Click(Sender: TObject);
var
PNAme:array[0..255] of char;//�������� ���� ������� � �����
FName:string[13];//��� ����� � �����������
N:word;//������� ������
iconH:Hicon;//���� ������
//��������� ������
begin
 begin
  //�������� ������
  with dlgOpen1 do
    begin
      if not execute then Exit;//����� �� ���������
      Fname:=ExtractFileNAme(Filename);//��������� �� ���������� ����� ��� ���
      StrPCopy(Pname,FileNAme);//����������� ���� � ����� �����
    end;
  n:=0;//��������� ��������
 with strngrd1 do
  //����������� ���� ���������� � ������
  repeat//������ � ����������� ����
    iconH:=Extracticon(Hinstance,Pname,n);//������ ��������� � ���������� � ����������
    if iconH<=1 then break;//���� ������ ��� �� �������� ����
    col:=CurItem mod ColCount;//������ �������
    if (CurItem div ColCount)>=RowCount then //���� ���-�� ����������� ����� �� ��������� � ���-�� ����� �� ��������� ����� ������
    RowCount:=RowCount+1;
    row:=CuriTem div ColCount;//������ ������
    Cells[Col,Row]:=Fname+'#'+inttostr(n);//��������� ��� ����� � �����
    Objects[Col,Row]:=Ticon.Create;//��������� ���� ������
    //������ � ������� �������
    with Objects[Col,Row] as Ticon do
    Handle:=iconH;//����������� ������ �� ��������
    CurItem:=CurItem+1;//���������� ���-�� ����������� �����
    n:=n+1;//���������� ��������
    until false;
  end;
end;

procedure TFormicon.btn2Click(Sender: TObject);
// ���������� ������
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
