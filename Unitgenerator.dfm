object Form1: TForm1
  Left = 223
  Top = 149
  Width = 696
  Height = 480
  Caption = 'Icon collector'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object bvl1: TBevel
    Left = 0
    Top = 0
    Width = 680
    Height = 50
    Align = alTop
    Shape = bsFrame
  end
  object strngrd1: TStringGrid
    Left = 0
    Top = 50
    Width = 680
    Height = 391
    Align = alClient
    ColCount = 4
    DefaultColWidth = 144
    DefaultRowHeight = 64
    FixedCols = 0
    FixedRows = 0
    TabOrder = 0
    OnDrawCell = strngrd1DrawCell
  end
  object btn1: TButton
    Left = 88
    Top = 16
    Width = 75
    Height = 25
    Caption = '&Gater icons'
    TabOrder = 1
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 208
    Top = 16
    Width = 75
    Height = 25
    Caption = '&Save icons'
    TabOrder = 2
    OnClick = btn2Click
  end
  object dlgOpen1: TOpenDialog
    Filter = #1048#1082#1086#1085#1082#1080'|*.ico|'#1055#1088#1080#1083#1086#1078#1077#1085#1080#1103'|*.exe|'#1042#1089#1077' '#1092#1072#1081#1083#1099'|*.*'
    Title = #1047#1072#1075#1088#1091#1079#1082#1072' '#1080#1082#1086#1085#1082#1080
    Left = 624
    Top = 64
  end
  object dlgSave1: TSaveDialog
    DefaultExt = 'ico'
    InitialDir = 'C:\WINDOWS'
    Title = #1057#1086#1093#1088#1072#1085#1077#1085#1080#1077' '#1080#1082#1086#1085#1082#1080
    Left = 624
    Top = 128
  end
end
