object Formgame: TFormgame
  Left = 495
  Top = 177
  Width = 478
  Height = 378
  Caption = 'Snake'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnPaint = FormPaint
  PixelsPerInch = 96
  TextHeight = 13
  object tmr1: TTimer
    Interval = 300
    OnTimer = tmr1Timer
    Left = 32
    Top = 16
  end
end
