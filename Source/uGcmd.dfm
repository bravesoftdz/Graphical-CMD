object Form1: TForm1
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Graphical CMD'
  ClientHeight = 520
  ClientWidth = 580
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -19
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 23
  object mmo1: TMemo
    Left = 0
    Top = 121
    Width = 580
    Height = 365
    Align = alClient
    Color = clWindowFrame
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    ScrollBars = ssBoth
    TabOrder = 0
  end
  object pnl1: TPanel
    Left = 0
    Top = 0
    Width = 580
    Height = 121
    Align = alTop
    TabOrder = 1
    object edtfile: TEdit
      Left = 8
      Top = 10
      Width = 497
      Height = 31
      TabOrder = 0
      TextHint = 'Path of batch file to execute'
    end
    object btn1: TButton
      Left = 511
      Top = 10
      Width = 58
      Height = 31
      Caption = '***'
      TabOrder = 1
      OnClick = btn1Click
    end
    object btn2: TButton
      Left = 8
      Top = 61
      Width = 97
      Height = 42
      Caption = 'Execute'
      TabOrder = 2
      OnClick = btn2Click
    end
    object btn3: TButton
      Left = 232
      Top = 61
      Width = 89
      Height = 42
      Caption = 'Clear'
      TabOrder = 3
      OnClick = btn3Click
    end
    object btn4: TButton
      Left = 336
      Top = 61
      Width = 89
      Height = 42
      Caption = 'Export'
      TabOrder = 4
      OnClick = btn4Click
    end
    object btn5: TButton
      Left = 119
      Top = 61
      Width = 97
      Height = 42
      Caption = 'Stop'
      TabOrder = 5
      OnClick = btn5Click
    end
    object btn7: TButton
      Left = 440
      Top = 61
      Width = 129
      Height = 42
      Caption = 'Batch Creator'
      TabOrder = 6
      OnClick = btn7Click
    end
  end
  object pnl2: TPanel
    Left = 0
    Top = 486
    Width = 580
    Height = 34
    Align = alBottom
    TabOrder = 2
    object lbl1: TLabel
      Left = 8
      Top = 6
      Width = 268
      Height = 19
      Caption = 'Made by Adriaan Boshoff (Inforcer25)'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object btn6: TButton
      Left = 486
      Top = 6
      Width = 83
      Height = 25
      Caption = 'GitHub'
      TabOrder = 0
      OnClick = btn6Click
    end
  end
  object dscmnd1: TDosCommand
    InputToOutput = False
    MaxTimeAfterBeginning = 0
    MaxTimeAfterLastOutput = 0
    Left = 336
    Top = 224
  end
  object flpndlg1: TFileOpenDialog
    FavoriteLinks = <>
    FileTypes = <>
    OkButtonLabel = 'Select File'
    Options = [fdoShareAware]
    Title = 'Select a Batch file'
    Left = 432
    Top = 232
  end
end
