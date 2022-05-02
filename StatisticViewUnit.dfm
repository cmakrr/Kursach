object TypeStatisticForm: TTypeStatisticForm
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'Pause'
  ClientHeight = 358
  ClientWidth = 310
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCloseQuery = FormCloseQuery
  PixelsPerInch = 96
  TextHeight = 13
  object NameLabel: TLabel
    Left = 0
    Top = 0
    Width = 321
    Height = 41
    Alignment = taCenter
    AutoSize = False
    Caption = 'Pause'
    Color = clMenuHighlight
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    Transparent = False
    Layout = tlCenter
  end
  object TimeLabel: TLabel
    Left = 147
    Top = 111
    Width = 51
    Height = 26
    Caption = '100 s'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object TimeLabelInfo: TLabel
    Left = 80
    Top = 111
    Width = 66
    Height = 26
    Caption = 'Time :'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object SymbolsTypedLabel: TLabel
    Left = 147
    Top = 66
    Width = 36
    Height = 26
    Caption = '100'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object SymbolsTypedInfoLabel: TLabel
    Left = 70
    Top = 66
    Width = 76
    Height = 26
    Caption = 'Typed :'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object OkButton: TButton
    Left = 190
    Top = 294
    Width = 75
    Height = 40
    Caption = 'Ok'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    OnClick = OkButtonClick
  end
  object FinishButton: TButton
    Left = 34
    Top = 294
    Width = 75
    Height = 40
    Caption = 'Finish'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    OnClick = FinishButtonClick
  end
  object MainInfoPanel: TPanel
    Left = 48
    Top = 152
    Width = 201
    Height = 121
    BevelOuter = bvNone
    Color = clSkyBlue
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentFont = False
    TabOrder = 2
    object SpeedLabel: TLabel
      Left = 99
      Top = 22
      Width = 85
      Height = 26
      Caption = '100 cpm'
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object NameLabelInfo: TLabel
      Left = 23
      Top = 22
      Width = 75
      Height = 26
      Caption = 'Speed :'
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object MistakesRateLabel: TLabel
      Left = 99
      Top = 70
      Width = 67
      Height = 26
      Caption = '100 %'
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object MistakeLabelInfo: TLabel
      Left = 14
      Top = 70
      Width = 84
      Height = 26
      Caption = 'Errors :'
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
end
