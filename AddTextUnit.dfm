object AddTextForm: TAddTextForm
  Left = 0
  Top = 0
  Caption = 'Add text'
  ClientHeight = 221
  ClientWidth = 250
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
  object EnglishRadio: TRadioButton
    Left = 70
    Top = 30
    Width = 110
    Height = 25
    Caption = 'English'
    Checked = True
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    TabStop = True
  end
  object OtherRadio: TRadioButton
    Left = 70
    Top = 110
    Width = 110
    Height = 25
    Caption = 'Other'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
  end
  object RussianRadio: TRadioButton
    Left = 70
    Top = 70
    Width = 110
    Height = 25
    Caption = 'Russian'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
  end
  object AddButton: TButton
    Left = 60
    Top = 156
    Width = 130
    Height = 57
    Caption = 'Add text'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    OnClick = AddButtonClick
  end
  object OpenDialog: TOpenTextFileDialog
    Filter = 'text files|*.txt'
    Left = 16
    Top = 168
  end
end
