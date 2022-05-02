object OverAllStatisticForm: TOverAllStatisticForm
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'Statistic'
  ClientHeight = 595
  ClientWidth = 651
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Label5: TLabel
    Left = 24
    Top = 53
    Width = 41
    Height = 21
    Caption = 'Sort :'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object StatisticListView: TListView
    Left = 24
    Top = 80
    Width = 325
    Height = 466
    Columns = <
      item
        Caption = 'Date'
        MaxWidth = 230
        MinWidth = 230
        Width = 210
      end
      item
        AutoSize = True
        Caption = 'Speed'
        MaxWidth = 130
        MinWidth = 130
      end
      item
        AutoSize = True
        Caption = 'Errors'
        MaxWidth = -1
        MinWidth = 85
      end
      item
        AutoSize = True
        Caption = 'Time'
        MaxWidth = -1
        MinWidth = 70
      end>
    ColumnClick = False
    DoubleBuffered = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ReadOnly = True
    ParentDoubleBuffered = False
    ParentFont = False
    TabOrder = 0
    ViewStyle = vsReport
  end
  object DateRadio: TRadioButton
    Left = 88
    Top = 53
    Width = 65
    Height = 17
    Caption = 'Date'
    Checked = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    TabStop = True
    OnClick = DateRadioClick
  end
  object SpeedRadio: TRadioButton
    Left = 159
    Top = 53
    Width = 74
    Height = 21
    Caption = 'Speed'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnClick = SpeedRadioClick
  end
  object MistakesRadio: TRadioButton
    Left = 244
    Top = 53
    Width = 105
    Height = 17
    Caption = 'Mistakes'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    OnClick = MistakesRadioClick
  end
  object BestStatisticPanel: TPanel
    Left = 393
    Top = 80
    Width = 230
    Height = 231
    BorderWidth = 9
    BorderStyle = bsSingle
    Caption = 'BestStatisticPane'
    Color = clWindow
    ParentBackground = False
    ShowCaption = False
    TabOrder = 4
    object BestDateLabel: TLabel
      Left = 111
      Top = 180
      Width = 7
      Height = 24
      Caption = '-'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object BestMistakesRate: TLabel
      Left = 111
      Top = 150
      Width = 7
      Height = 24
      Caption = '-'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object BestSymbolsTypedLabel: TLabel
      Left = 111
      Top = 60
      Width = 7
      Height = 24
      Caption = '-'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object BestTimeLabel: TLabel
      Left = 111
      Top = 120
      Width = 7
      Height = 24
      Caption = '-'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object BestTypeSpeedLabel: TLabel
      Left = 111
      Top = 90
      Width = 7
      Height = 24
      Caption = '-'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label1: TLabel
      Left = 15
      Top = 150
      Width = 91
      Height = 24
      Caption = 'Mistakes :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 15
      Top = 180
      Width = 55
      Height = 24
      Caption = 'Date :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 90
      Top = 16
      Width = 50
      Height = 31
      Caption = 'Best'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -27
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 15
      Top = 90
      Width = 66
      Height = 24
      Caption = 'Speed :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 15
      Top = 60
      Width = 65
      Height = 24
      Caption = 'Typed :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label9: TLabel
      Left = 15
      Top = 120
      Width = 57
      Height = 24
      Caption = 'Time :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object OverallStatisticPanel: TPanel
    Left = 393
    Top = 341
    Width = 230
    Height = 205
    BorderWidth = 9
    BorderStyle = bsSingle
    Caption = 'BestStatisticPane'
    Color = clWindow
    ParentBackground = False
    ShowCaption = False
    TabOrder = 5
    object Label13: TLabel
      Left = 15
      Top = 150
      Width = 91
      Height = 24
      Caption = 'Mistakes :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label15: TLabel
      Left = 70
      Top = 16
      Width = 89
      Height = 31
      Caption = 'Overall'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -27
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label16: TLabel
      Left = 15
      Top = 90
      Width = 66
      Height = 24
      Caption = 'Speed :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label17: TLabel
      Left = 15
      Top = 60
      Width = 65
      Height = 24
      Caption = 'Typed :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label18: TLabel
      Left = 15
      Top = 120
      Width = 57
      Height = 24
      Caption = 'Time :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object SymbolsTypedOverallLabel: TLabel
      Left = 120
      Top = 58
      Width = 7
      Height = 24
      Caption = '-'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object TimeOverallLabel: TLabel
      Left = 120
      Top = 120
      Width = 7
      Height = 24
      Caption = '-'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object TypeSpeedOverallLabel: TLabel
      Left = 120
      Top = 90
      Width = 7
      Height = 24
      Caption = '-'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object MistakesRateOverallLabel: TLabel
      Left = 120
      Top = 150
      Width = 7
      Height = 24
      Caption = '-'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object TodayCheckBox: TCheckBox
    Left = 24
    Top = 10
    Width = 185
    Height = 29
    Caption = 'today statistic only'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
    OnClick = TodayCheckBoxClick
  end
end
