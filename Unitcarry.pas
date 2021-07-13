unit Unitcarry;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ActnList, StdActns, ExtActns, StdCtrls, ComCtrls, ToolWin,
  ColorGrd, ExtCtrls, Spin, Menus, Clipbrd, Printers, ImgList;

type
  TFormcarry = class(TForm)
    actlst1: TActionList;
    FileOpen1: TFileOpen;
    FileSaveAs1: TFileSaveAs;
    FilePrintSetup1: TFilePrintSetup;
    FileExit1: TFileExit;
    actFileCreate: TAction;
    actStatistik: TAction;
    EditCut1: TEditCut;
    EditCopy1: TEditCopy;
    EditPaste1: TEditPaste;
    EditSelectAll1: TEditSelectAll;
    EditUndo1: TEditUndo;
    EditDelete1: TEditDelete;
    actAboutApplication: TAction;
    RichEditBold1: TRichEditBold;
    RichEditItalic1: TRichEditItalic;
    RichEditUnderline1: TRichEditUnderline;
    RichEditStrikeOut1: TRichEditStrikeOut;
    RichEditAlignLeft1: TRichEditAlignLeft;
    RichEditAlignRight1: TRichEditAlignRight;
    RichEditAlignCenter1: TRichEditAlignCenter;
    actApplicationAdmin: TAction;
    SearchFind1: TSearchFind;
    SearchReplace1: TSearchReplace;
    actPasteLetters: TAction;
    actIcons: TAction;
    actApplications: TAction;
    Action1: TAction;
    Action2: TAction;
    Action3: TAction;
    actFirstForm1: TAction;
    HelpContents1: THelpContents;
    HelpTopicSearch1: THelpTopicSearch;
    HelpOnHelp1: THelpOnHelp;
    HelpContextAction1: THelpContextAction;
    Action4: TAction;
    Action5: TAction;
    FontDialog1: TFontDialog;
    tlb1: TToolBar;
    btn1: TToolButton;
    btn2: TToolButton;
    btn3: TToolButton;
    dlgSave1: TSaveDialog;
    dlgOpen1: TOpenDialog;
    btn4: TToolButton;
    btn5: TToolButton;
    mmo1: TRichEdit;
    clrgrd1: TColorGrid;
    clrbx1: TColorBox;
    se1: TSpinEdit;
    cbb1: TComboBox;
    btn6: TToolButton;
    btn7: TToolButton;
    btn8: TToolButton;
    btn9: TToolButton;
    PopupMenu1: TPopupMenu;
    Copy1: TMenuItem;
    Cut1: TMenuItem;
    Delete1: TMenuItem;
    Paste1: TMenuItem;
    SelectAll1: TMenuItem;
    Undo1: TMenuItem;
    dlgFind1: TFindDialog;
    dlgReplace1: TReplaceDialog;
    btn10: TToolButton;
    btn11: TToolButton;
    Statistik1: TMenuItem;
    btn12: TToolButton;
    btn13: TToolButton;
    btn14: TToolButton;
    btn15: TToolButton;
    btn16: TToolButton;
    btn17: TToolButton;
    mm1: TMainMenu;
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
    N12: TMenuItem;
    N13: TMenuItem;
    N14: TMenuItem;
    N15: TMenuItem;
    N16: TMenuItem;
    N17: TMenuItem;
    N18: TMenuItem;
    N19: TMenuItem;
    N20: TMenuItem;
    N21: TMenuItem;
    N22: TMenuItem;
    N23: TMenuItem;
    N24: TMenuItem;
    N25: TMenuItem;
    N26: TMenuItem;
    N27: TMenuItem;
    N28: TMenuItem;
    N29: TMenuItem;
    N30: TMenuItem;
    N31: TMenuItem;
    N32: TMenuItem;
    N33: TMenuItem;
    N34: TMenuItem;
    btn18: TToolButton;
    btn19: TToolButton;
    btn23: TToolButton;
    btn24: TToolButton;
    btn22: TToolButton;
    btn20: TToolButton;
    btn21: TToolButton;
    btn25: TToolButton;
    btn26: TToolButton;
    btn27: TToolButton;
    il1: TImageList;
    btn28: TToolButton;
    N11: TMenuItem;
    N35: TMenuItem;
    N36: TMenuItem;
    N37: TMenuItem;
    N38: TMenuItem;
    btn29: TToolButton;
    btn30: TToolButton;
    btn31: TToolButton;
    btn32: TToolButton;
    btn33: TToolButton;
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure clrgrd1Change(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure clrbx1Change(Sender: TObject);
    procedure se1Change(Sender: TObject);
    procedure cbb1Change(Sender: TObject);
    procedure btn6Click(Sender: TObject);
    procedure btn7Click(Sender: TObject);
    procedure btn8Click(Sender: TObject);
    procedure btn9Click(Sender: TObject);
    procedure EditCut1Execute(Sender: TObject);
    procedure EditCopy1Execute(Sender: TObject);
    procedure EditPaste1Execute(Sender: TObject);
    procedure EditSelectAll1Execute(Sender: TObject);
    procedure EditUndo1Execute(Sender: TObject);
    procedure EditDelete1Execute(Sender: TObject);
    procedure PopupMenu1Popup(Sender: TObject);
    procedure btn10Click(Sender: TObject);
    procedure btn11Click(Sender: TObject);
    procedure dlgFind1Find(Sender: TObject);
    procedure dlgReplace1Find(Sender: TObject);
    procedure dlgReplace1Replace(Sender: TObject);
    procedure mmo1Enter(Sender: TObject);
    procedure Statistik1Click(Sender: TObject);
    procedure btn12Click(Sender: TObject);
    procedure btn13Click(Sender: TObject);
    procedure btn14Click(Sender: TObject);
    procedure btn15Click(Sender: TObject);
    procedure btn16Click(Sender: TObject);
    procedure btn17Click(Sender: TObject);
    procedure N34Click(Sender: TObject);
    procedure N7Click(Sender: TObject);
    procedure N8Click(Sender: TObject);
    procedure N9Click(Sender: TObject);
    procedure N10Click(Sender: TObject);
    procedure N12Click(Sender: TObject);
    procedure N13Click(Sender: TObject);
    procedure N15Click(Sender: TObject);
    procedure N14Click(Sender: TObject);
    procedure N16Click(Sender: TObject);
    procedure N17Click(Sender: TObject);
    procedure N22Click(Sender: TObject);
    procedure N24Click(Sender: TObject);
    procedure N23Click(Sender: TObject);
    procedure N18Click(Sender: TObject);
    procedure N19Click(Sender: TObject);
    procedure N20Click(Sender: TObject);
    procedure N21Click(Sender: TObject);
    procedure N27Click(Sender: TObject);
    procedure N28Click(Sender: TObject);
    procedure N30Click(Sender: TObject);
    procedure N31Click(Sender: TObject);
    procedure N32Click(Sender: TObject);
    procedure N33Click(Sender: TObject);
    procedure N25Click(Sender: TObject);
    procedure N26Click(Sender: TObject);
    procedure N29Click(Sender: TObject);
    procedure btn29Click(Sender: TObject);
    procedure btn30Click(Sender: TObject);
    procedure btn31Click(Sender: TObject);
    procedure btn32Click(Sender: TObject);
  private
  fgIndex,bgIndex:byte;//��� � ���� ������
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Formcarry: TFormcarry;
  SPos:Integer//�������;
implementation

uses Unitsupport,Unitstat, Unitdisplay, Unitgenerator, Uniticon, Unitmenu,
  Unitthanks, UnitGodlike, Unitsnake;

{$R *.dfm}
//����� ������
procedure TFormcarry.btn1Click(Sender: TObject);
begin
  FontDialog1.Font:=mmo1.Font;//���������� ����� � �������
  if FontDialog1.Execute then//���� ������������ ������ �����
  mmo1.SelAttributes.Assign(FontDialog1.Font);//���������� ��������� �����
  mmo1.SetFocus;
end;
//����������
procedure TFormcarry.btn2Click(Sender: TObject);
begin
  if dlgSave1.Execute then
  mmo1.Lines.SaveToFile('dlgSave1.FileName');
end;
//��������
procedure TFormcarry.btn3Click(Sender: TObject);
begin
  if dlgOpen1.Execute then
  mmo1.Lines.LoadFromFile('dlgOpen1.FileName');
end;
//���������� ��������� ������ � ������ �����
procedure TFormcarry.btn4Click(Sender: TObject);
begin
  mmo1.Lines.insert(0,'��������� ������� ������ ����������');
end;
//���������� ��������� ������ � ��������� ������ ������
procedure TFormcarry.btn5Click(Sender: TObject);
begin
   mmo1.Lines.Add('��� ����� � ������');
end;
//������� ��������
procedure TFormcarry.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Formsupport.Close;
end;
//�������� ������ � ����
procedure TFormcarry.clrgrd1Change(Sender: TObject);
begin
   if clrgrd1.ForegroundColor=clrgrd1.BackgroundColor then
    //������������ ������ ����������� ����� ���� � ������
    begin
      MessageDlg('����� �� ������ ���������',mtError,mbOKCancel,0);
      clrgrd1.ForegroundIndex:=fgIndex;
      clrgrd1.BackgroundIndex:=bgIndex;
    end
   else
   //���� ����� ������ ����� ������
   begin
      mmo1.Font.Color:=clrgrd1.ForegroundColor;
      mmo1.Color:=clrgrd1.BackgroundColor;
      fgIndex:=clrgrd1.ForegroundIndex;
      bgIndex:=clrgrd1.BackgroundIndex;
   end;
end;
//����, �����, ��� ������ � ������ ������
procedure TFormcarry.FormShow(Sender: TObject);
begin
  fgIndex:=clrgrd1.ForegroundIndex;
  bgIndex:=clrgrd1.BackgroundIndex;
  cbb1.Items:=Screen.Fonts;
  cbb1.ItemIndex:=cbb1.Items.IndexOf(mmo1.Font.Name);
end;
//�������� ������ � ������� ColorBox
procedure TFormcarry.clrbx1Change(Sender: TObject);
begin
  mmo1.SelAttributes.Color:=clrbx1.Selected;
end;
//��������� ������� ������ � Spin Edit
procedure TFormcarry.se1Change(Sender: TObject);
begin
  if se1.Text<>'' then
    mmo1.SelAttributes.Size:=se1.Value
  else
    mmo1.SelAttributes.Size:=se1.MinValue;
end;
//����� ������ ����� �����-����
procedure TFormcarry.cbb1Change(Sender: TObject);
begin
  mmo1.SelAttributes.Name:=cbb1.Text;
end;
//������ �����
procedure TFormcarry.btn6Click(Sender: TObject);
begin
  if fsBold in mmo1.SelAttributes.Style then
    mmo1.SelAttributes.Style:=mmo1.SelAttributes.Style-[fsBold]
  else
    mmo1.SelAttributes.Style:=mmo1.SelAttributes.Style+[fsBold];
end;
//��������� �����
procedure TFormcarry.btn7Click(Sender: TObject);
begin
  if fsItalic in mmo1.SelAttributes.Style then
    mmo1.SelAttributes.Style:=mmo1.SelAttributes.Style-[fsItalic]
  else
    mmo1.SelAttributes.Style:=mmo1.SelAttributes.Style+[fsItalic]
end;
//������������ �����
procedure TFormcarry.btn8Click(Sender: TObject);
begin
  if fsUnderline in mmo1.SelAttributes.Style then
    mmo1.SelAttributes.Style:=mmo1.SelAttributes.Style-[fsUnderline]
  else
    mmo1.SelAttributes.Style:=mmo1.SelAttributes.Style+[fsUnderline];
end;
//����������� �����
procedure TFormcarry.btn9Click(Sender: TObject);
begin
  if fsStrikeOut in mmo1.SelAttributes.Style then
    mmo1.SelAttributes.Style:=mmo1.SelAttributes.Style-[fsStrikeOut]
  else
    mmo1.SelAttributes.Style:=mmo1.SelAttributes.Style+[fsStrikeOut];
end;
//��������
procedure TFormcarry.EditCut1Execute(Sender: TObject);
begin
  mmo1.CutToClipboard;
end;
//����������
procedure TFormcarry.EditCopy1Execute(Sender: TObject);
begin
  mmo1.CopyToClipboard;
end;
//��������
procedure TFormcarry.EditPaste1Execute(Sender: TObject);
begin
  mmo1.PasteFromClipboard;
end;
//�������� ��
procedure TFormcarry.EditSelectAll1Execute(Sender: TObject);
begin
  mmo1.SelectAll;
end;
//�������� ��������� ��������
procedure TFormcarry.EditUndo1Execute(Sender: TObject);
begin
  mmo1.Undo;
end;
//�������� ���������
procedure TFormcarry.EditDelete1Execute(Sender: TObject);
begin
  mmo1.ClearSelection;
end;
//������� ��� ������� �������� �����������, ���������, ������� � �.�.
procedure TFormcarry.PopupMenu1Popup(Sender: TObject);
begin
  EditCopy1.Enabled:=mmo1.SelLength>0;//if mmo1.SelLength>0 then EditCopy1.Enabled:=true;
  EditPaste1.Enabled:= EditCopy1.Enabled;//if EditCopy1.Enabled then EditPaste1.Enabled=True else  EditPaste1.Enabled=false;
  EditCut1.Enabled:=Clipboard.HasFormat(CF_Text);
  EditSelectAll1.Enabled:=Length(mmo1.Text)>0;
  EditDelete1.Enabled:=EditCut1.Enabled;
  EditUndo1.Enabled:=mmo1.CanUndo;
end;
//����� �����
procedure TFormcarry.btn10Click(Sender: TObject);
begin
  dlgFind1.Execute;
end;
//�������� �����
procedure TFormcarry.btn11Click(Sender: TObject);
begin
  dlgReplace1.Execute;
end;
//���������� ������ ������
procedure TFormcarry.dlgFind1Find(Sender: TObject);
begin
with dlgFind1 do
 begin
  if frMatchCase in Options
   {����� � ������ ��������}
  then Mmo1.SelStart := Pos(FindText,
    Copy(Mmo1.Lines.Text, SPos + 1,
    Length(Mmo1.Lines.Text))) + Spos - 1
   {����� ��� ����� ��������}
  else Mmo1.SelStart := Pos(AnsiLowerCase(FindText),
    AnsiLowerCase(Copy(Mmo1.Lines.Text, SPos + 1,
    Length(Mmo1.Lines.Text)))) + Spos - 1;
  if Mmo1.SelStart >= Spos
  then
    begin
     {��������� ���������� ������}
     Mmo1.SelLength := Length(FindText);
     {��������� ��������� ������� ������}
     SPos := Mmo1.SelStart + Mmo1.SelLength + 1;
    end
  else

  if MessageDlg(
    '����� "'+FindText+'" �� ������. ���������� ������?',
    mtConfirmation, mbYesNoCancel, 0) <> mrYes
  then CloseDialog;
 end;
 Mmo1.SetFocus;
end;
//���������� ������ ������
procedure TFormcarry.dlgReplace1Find(Sender: TObject);
begin
with dlgReplace1 do
 begin
  if frMatchCase in Options
   {����� � ������ ��������}
  then Mmo1.SelStart := Pos(FindText,
    Copy(Mmo1.Lines.Text, SPos + 1,
    Length(Mmo1.Lines.Text))) + Spos - 1
   {����� ��� ����� ��������}
  else Mmo1.SelStart := Pos(AnsiLowerCase(FindText),
    AnsiLowerCase(Copy(Mmo1.Lines.Text, SPos + 1,
    Length(Mmo1.Lines.Text)))) + Spos - 1;
  if Mmo1.SelStart >= Spos
  then
    begin
     {��������� ���������� ������}
     Mmo1.SelLength := Length(FindText);
     {��������� ��������� ������� ������}
     SPos := Mmo1.SelStart + Mmo1.SelLength + 1;
    end
  else

  if MessageDlg(
    '����� "'+FindText+'" �� ������. ���������� ������?',
    mtConfirmation, mbYesNoCancel, 0) <> mrYes
  then CloseDialog;
 end;
 Mmo1.SetFocus;
end;
//������� ��� ������ ������
procedure TFormcarry.dlgReplace1Replace(Sender: TObject);
begin
  if Mmo1.SelText <> ''
   then Mmo1.SelText := dlgReplace1.ReplaceText;
  if frReplaceAll in dlgReplace1.Options
    then dlgReplace1Find(Self);
end;
//������� �� ����� �������
procedure TFormcarry.mmo1Enter(Sender: TObject);
begin
  SPos:=1;
end;
//����������� ����������
procedure TFormcarry.Statistik1Click(Sender: TObject);
var lat,rus,chisla,punc,pr:word;//���������,�������,�����,����� ����������,������
    i,j:word;//������,�������
begin
  lat:=0;rus:=0;chisla:=0;punc:=0;pr:=0;
  for i:=0 to mmo1.Lines.Count-1 do
  for j:=0 to Length(mmo1.Lines[i]) do
    if mmo1.Lines[i][j] in ['0'..'9'] then inc (chisla)
    else
    if mmo1.Lines[i][j] in ['a'..'Z'] then inc (lat)
    else
    if mmo1.Lines[i][j] in ['�'..'�'] then inc (rus)
    else
    if mmo1.Lines[i][j] in [',','.',':','!','?'] then inc (punc)
    else
    inc(pr);
  Formstat.Cht1.series[0];
  Formstat.Cht1.series[0].add(chisla,'�����',clGray);
  Formstat.Cht1.series[0].add(rus,'�������',clRed);
  Formstat.Cht1.series[0].add(punc,'����������',clGreen);
  Formstat.Cht1.series[0].add(lat,'���������',clBlue);
  Formstat.Cht1.series[0].add(pr,'������',clYellow);
  Formstat.Show;
end;
//����� Formdisplay
procedure TFormcarry.btn12Click(Sender: TObject);
begin
  Formdisplay.show;
end;
//����� Formicon
procedure TFormcarry.btn13Click(Sender: TObject);
begin
  Formicon.show;
end;
//������ ������
procedure TFormcarry.btn14Click(Sender: TObject);
begin
  Formcarry.Print;
end;
//����������� ������
procedure TFormcarry.btn15Click(Sender: TObject);
var b:TBitmap;
begin
  b:=TBitmap.Create;
  b.LoadFromFile('C:\Users\1\Desktop\��������\Bitmap2.bmp');
  Formcarry.Canvas.Draw(300,10,b);
  b.Free;
end;
//����������� ������
procedure TFormcarry.btn16Click(Sender: TObject);
var b:TBitmap;
begin
  {b:=TBitmap.Create;
  b.LoadFromFile('C:\Users\1\Desktop\��������\Bitmap2.bmp');
  Printer.BeginDoc;
  Printer.Canvas.Draw(20,10,b);
  Printer.EndDoc;
  b.Free;}
  Thanks.Show;
end;
//��������� ������
procedure TFormcarry.btn17Click(Sender: TObject);
var
Toprinter:TextFile;
begin
  AssignPrn(Toprinter);
  Rewrite(Toprinter);
  Writeln(Toprinter,'Printer in Text Mode');
  CloseFile(Toprinter);
end;

//�����
procedure TFormcarry.N34Click(Sender: TObject);
begin
  Close;
end;
//�������
procedure TFormcarry.N7Click(Sender: TObject);
begin
  mmo1.Clear;
end;
//C���������
procedure TFormcarry.N8Click(Sender: TObject);
begin
  if dlgSave1.Execute then
  mmo1.Lines.SaveToFile('dlgSave1.FileName');
end;
//�������
procedure TFormcarry.N9Click(Sender: TObject);
begin
  if dlgOpen1.Execute then
  mmo1.Lines.LoadFromFile('dlgOpen1.FileName');
end;
//������ ������
procedure TFormcarry.N10Click(Sender: TObject);
begin
  Formcarry.Print;
end;
//������ ���������� ��������
procedure TFormcarry.N12Click(Sender: TObject);
begin
  mmo1.Undo;
end;
//����������
procedure TFormcarry.N13Click(Sender: TObject);
begin
  mmo1.CopyToClipboard;
end;
//��������
procedure TFormcarry.N15Click(Sender: TObject);
begin
  mmo1.PasteFromClipboard;
end;
//��������
procedure TFormcarry.N14Click(Sender: TObject);
begin
  mmo1.CutToClipboard;
end;
//�������� ��������� �������
procedure TFormcarry.N16Click(Sender: TObject);
begin
  mmo1.ClearSelection;
end;
//�������� ��
procedure TFormcarry.N17Click(Sender: TObject);
begin
   mmo1.SelectAll;
end;
//������������ �� ������
procedure TFormcarry.N22Click(Sender: TObject);
begin
   Mmo1.Paragraph.Alignment:=taLeftJustify;
end;
//������������ �� �������
procedure TFormcarry.N24Click(Sender: TObject);
begin
  Mmo1.Paragraph.Alignment:=taRightJustify;
end;
//������������ �� ������
procedure TFormcarry.N23Click(Sender: TObject);
begin
  Mmo1.Paragraph.Alignment:=taCenter;
end;
//����������� �����
procedure TFormcarry.N18Click(Sender: TObject);
begin
  if fsStrikeOut in mmo1.SelAttributes.Style then
    mmo1.SelAttributes.Style:=mmo1.SelAttributes.Style-[fsStrikeOut]
  else
    mmo1.SelAttributes.Style:=mmo1.SelAttributes.Style+[fsStrikeOut];
end;
//������ �����
procedure TFormcarry.N19Click(Sender: TObject);
begin
  if fsBold in mmo1.SelAttributes.Style then
    mmo1.SelAttributes.Style:=mmo1.SelAttributes.Style-[fsBold]
  else
    mmo1.SelAttributes.Style:=mmo1.SelAttributes.Style+[fsBold];
end;
//���������
procedure TFormcarry.N20Click(Sender: TObject);
begin
  if fsItalic in mmo1.SelAttributes.Style then
    mmo1.SelAttributes.Style:=mmo1.SelAttributes.Style-[fsItalic]
  else
    mmo1.SelAttributes.Style:=mmo1.SelAttributes.Style+[fsItalic]
end;
//������������
procedure TFormcarry.N21Click(Sender: TObject);
begin
  if fsUnderline in mmo1.SelAttributes.Style then
    mmo1.SelAttributes.Style:=mmo1.SelAttributes.Style-[fsUnderline]
  else
    mmo1.SelAttributes.Style:=mmo1.SelAttributes.Style+[fsUnderline];
end;
//�����
procedure TFormcarry.N27Click(Sender: TObject);
begin
   dlgFind1.Execute;
end;
//��������
procedure TFormcarry.N28Click(Sender: TObject);
begin
   dlgReplace1.Execute;
end;
//����������
procedure TFormcarry.N30Click(Sender: TObject);
var lat,rus,chisla,punc,pr:word;//���������,�������,�����,����� ����������,������
    i,j:word;//������,�������
begin
  lat:=0;rus:=0;chisla:=0;punc:=0;pr:=0;
  for i:=0 to mmo1.Lines.Count-1 do
  for j:=0 to Length(mmo1.Lines[i]) do
    if mmo1.Lines[i][j] in ['0'..'9'] then inc (chisla)
    else
    if mmo1.Lines[i][j] in ['a'..'Z'] then inc (lat)
    else
    if mmo1.Lines[i][j] in ['�'..'�'] then inc (rus)
    else
    if mmo1.Lines[i][j] in [',','.',':','!','?'] then inc (punc)
    else
    inc(pr);
  Formstat.Cht1.series[0];
  Formstat.Cht1.series[0].add(chisla,'�����',clGray);
  Formstat.Cht1.series[0].add(rus,'�������',clRed);
  Formstat.Cht1.series[0].add(punc,'����������',clGreen);
  Formstat.Cht1.series[0].add(lat,'���������',clBlue);
  Formstat.Cht1.series[0].add(pr,'������',clYellow);
  Formstat.Show;
end;
//����� ���������� ������
procedure TFormcarry.N31Click(Sender: TObject);
begin
  Formicon.Show;
end;
//����� ������ ��������
procedure TFormcarry.N32Click(Sender: TObject);
begin
  Formdisplay.Show;
end;
//����� ������
procedure TFormcarry.N33Click(Sender: TObject);
begin
  FontDialog1.Font:=mmo1.Font;//���������� ����� � �������
  if FontDialog1.Execute then//���� ������������ ������ �����
  mmo1.SelAttributes.Assign(FontDialog1.Font);//���������� ��������� �����
  mmo1.SetFocus;
end;
//����������
procedure TFormcarry.N25Click(Sender: TObject);
begin
  ShowMessage('��� ���������� ������� ��� �������������� ������');
end;
//��������� �����
procedure TFormcarry.N26Click(Sender: TObject);
begin
  ShowMessage('������� ������� ���������� ��������'#13#10'�������� ����� ��������');
end;
//������
procedure TFormcarry.N29Click(Sender: TObject);
begin
   FormGodlike.show;
end;
//��������/�������� ���������
procedure TFormcarry.btn29Click(Sender: TObject);
begin
  ShowHint:=not ShowHint;
end;
//���� "������"
procedure TFormcarry.btn30Click(Sender: TObject);
begin
  Formgame.show;
end;
//��������� �� ������� ����
procedure TFormcarry.btn31Click(Sender: TObject);
begin
  LoadKeyboardLayout('00000419', KLF_ACTIVATE);
end;
//��������� �� ���������� ����
procedure TFormcarry.btn32Click(Sender: TObject);
begin
  LoadKeyboardLayout('00000409', KLF_ACTIVATE);
end;

end.

