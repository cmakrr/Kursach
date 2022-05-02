object AudioSettingsForm: TAudioSettingsForm
  Left = 0
  Top = 0
  Caption = 'AudioSettingsForm'
  ClientHeight = 157
  ClientWidth = 234
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 32
    Top = 32
    Width = 105
    Height = 21
    Caption = 'Music volume'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 32
    Top = 96
    Width = 114
    Height = 21
    Caption = 'Mistake sound '
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object SpinEdit1: TSpinEdit
    Left = 160
    Top = 29
    Width = 49
    Height = 31
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = []
    MaxValue = 0
    MinValue = 0
    ParentFont = False
    TabOrder = 0
    Value = 0
  end
  object SpinEdit2: TSpinEdit
    Left = 160
    Top = 93
    Width = 49
    Height = 31
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = []
    MaxValue = 0
    MinValue = 0
    ParentFont = False
    TabOrder = 1
    Value = 0
  end
end
