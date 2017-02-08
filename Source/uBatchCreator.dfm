object frmbatchcreator: Tfrmbatchcreator
  Left = 0
  Top = 0
  Caption = 'Batch Creator'
  ClientHeight = 593
  ClientWidth = 675
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 19
  object pnl1: TPanel
    Left = 0
    Top = 0
    Width = 675
    Height = 57
    Align = alTop
    TabOrder = 0
    DesignSize = (
      675
      57)
    object btn1: TButton
      Left = 576
      Top = 12
      Width = 89
      Height = 39
      Anchors = [akTop, akRight]
      Caption = 'Hide'
      TabOrder = 0
      OnClick = btn1Click
    end
    object btn2: TButton
      Left = 8
      Top = 12
      Width = 89
      Height = 39
      Caption = 'Save'
      TabOrder = 1
      OnClick = btn2Click
    end
    object btn3: TButton
      Left = 120
      Top = 12
      Width = 89
      Height = 39
      Caption = 'Clear'
      TabOrder = 2
      OnClick = btn3Click
    end
    object btn4: TButton
      Left = 232
      Top = 12
      Width = 89
      Height = 39
      Caption = 'Undo'
      TabOrder = 3
      OnClick = btn4Click
    end
  end
  object synm1: TSynMemo
    Left = 0
    Top = 57
    Width = 675
    Height = 536
    Align = alClient
    Color = clHighlightText
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Courier New'
    Font.Pitch = fpFixed
    Font.Style = []
    TabOrder = 1
    Gutter.Font.Charset = DEFAULT_CHARSET
    Gutter.Font.Color = clWindowText
    Gutter.Font.Height = -11
    Gutter.Font.Name = 'Courier New'
    Gutter.Font.Style = []
    Highlighter = synbtsyn1
    Lines.Strings = (
      '@echo off'
      'echo Hello World')
    SearchEngine = syndtsrch1
    FontSmoothing = fsmNone
  end
  object synbtsyn1: TSynBatSyn
    Options.AutoDetectEnabled = True
    Options.AutoDetectLineLimit = 0
    Options.Visible = False
    Left = 536
    Top = 8
  end
  object syndtsrch1: TSynEditSearch
    Left = 464
    Top = 16
  end
end
