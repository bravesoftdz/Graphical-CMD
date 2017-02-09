object frmbatchcreator: Tfrmbatchcreator
  Left = 0
  Top = 0
  Caption = 'Batch Creator'
  ClientHeight = 593
  ClientWidth = 881
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 19
  object pnl1: TPanel
    Left = 0
    Top = 0
    Width = 881
    Height = 57
    Align = alTop
    TabOrder = 0
    ExplicitTop = -6
    DesignSize = (
      881
      57)
    object img1: TImage
      Left = 22
      Top = 12
      Width = 33
      Height = 32
      Cursor = crHandPoint
      Picture.Data = {
        0954506E67496D61676589504E470D0A1A0A0000000D49484452000000200000
        00200806000000737A7AF40000002B744558744372656174696F6E2054696D65
        0053756E20322041756720323031352031373A30353A3430202D30363030AB9D
        78EE0000000774494D4507DF0802160936B3167602000000097048597300002E
        2300002E230178A53F760000000467414D410000B18F0BFC61050000003B4944
        415478DAEDD3310100200C0341EA5F3454020BA1C3BD81DC925A9F2B00809180
        DD3D19EB00AE00C9000066BE00201900C0CC1700240300003859BE2421B37CDF
        370000000049454E44AE426082}
      OnClick = img1Click
    end
    object lbl3: TLabel
      Left = 82
      Top = 14
      Width = 493
      Height = 29
      Caption = 'Batch Creator By Adriaan Boshoff (Inforcer25)'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object btn1: TButton
      Left = 782
      Top = 12
      Width = 89
      Height = 39
      Anchors = [akTop, akRight]
      Caption = 'Hide'
      TabOrder = 0
      OnClick = btn1Click
      ExplicitLeft = 576
    end
  end
  object synm1: TSynMemo
    Left = 200
    Top = 57
    Width = 681
    Height = 536
    Align = alClient
    Color = clHighlightText
    ActiveLineColor = clSilver
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
    WantTabs = True
    FontSmoothing = fsmClearType
    ExplicitLeft = 0
    ExplicitWidth = 675
  end
  object SplitView1: TSplitView
    Left = 0
    Top = 57
    Width = 200
    Height = 536
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Tahoma'
    Font.Style = []
    OpenedWidth = 200
    ParentFont = False
    Placement = svpLeft
    TabOrder = 2
    ExplicitLeft = 304
    ExplicitTop = 248
    ExplicitHeight = 41
    object lbl1: TLabel
      Left = 45
      Top = 280
      Width = 44
      Height = 25
      Caption = 'Size:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object lbl2: TLabel
      Left = 22
      Top = 230
      Width = 156
      Height = 33
      Caption = 'Font Settings'
    end
    object btnsave: TButton
      Left = 47
      Top = 32
      Width = 105
      Height = 41
      Caption = 'Save'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -27
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = btnsaveClick
    end
    object btnclear: TButton
      Left = 47
      Top = 96
      Width = 105
      Height = 41
      Caption = 'Clear'
      TabOrder = 1
      OnClick = btnclearClick
    end
    object btnundo: TButton
      Left = 47
      Top = 160
      Width = 105
      Height = 41
      Caption = 'Undo'
      TabOrder = 2
      OnClick = btnundoClick
    end
    object se1: TSpinEdit
      Left = 95
      Top = 279
      Width = 61
      Height = 33
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      MaxValue = 75
      MinValue = 5
      ParentFont = False
      TabOrder = 3
      Value = 10
      OnChange = se1Change
    end
    object chk2: TCheckBox
      Left = 33
      Top = 329
      Width = 134
      Height = 33
      Caption = 'Syntax Highlight'
      Checked = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      State = cbChecked
      TabOrder = 4
      OnClick = chk2Click
    end
    object chk1: TCheckBox
      Left = 12
      Top = 360
      Width = 182
      Height = 26
      Caption = 'Highlight Current line '
      Checked = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      State = cbChecked
      TabOrder = 5
      OnClick = chk1Click
    end
  end
  object synbtsyn1: TSynBatSyn
    Options.AutoDetectEnabled = True
    Options.AutoDetectLineLimit = 0
    Options.Visible = False
    CommentAttri.Foreground = clBlue
    KeyAttri.Foreground = clBlue
    Left = 672
    Top = 8
  end
end
