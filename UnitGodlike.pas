unit UnitGodlike;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, MPlayer, jpeg, ExtCtrls, Buttons;

type
  TFormGodlike = class(TForm)
    mp1: TMediaPlayer;
    btn1: TButton;
    img1: TImage;
    lbl1: TLabel;
    btn2: TButton;
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormGodlike: TFormGodlike;

implementation

{$R *.dfm}
//Загрузка аудиофайла и проигрывание его в медиа-плеере
procedure TFormGodlike.btn1Click(Sender: TObject);
begin
  mp1.FileName:='C:\Users\1\Desktop\картинки\1.mp3';
  mp1.Open;
  mp1.Play;
end;
//закрыть форму
procedure TFormGodlike.btn2Click(Sender: TObject);
begin
  FormGodlike.Close;
end;

end.
