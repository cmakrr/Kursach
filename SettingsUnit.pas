unit SettingsUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Samples.Spin,AdditionalFormUnit,
  Vcl.ExtCtrls;

type
    TSettings = Record
        Size : Integer;
        MusicVolume : Integer;
        TextColor : TColor;
        PrintedTextColor : TColor;
    End;
  TSettingsForm = class(TAdditionalForm)
    TextSizeLabel: TLabel;
    MusicVolumeEdit: TSpinEdit;
    TextColor: TColorBox;
    PrintedTextColor: TColorBox;
    MusicLabel: TLabel;
    TextColorLabel: TLabel;
    PrintedTextLabel: TLabel;
    SizeEdit: TSpinEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    constructor  Create(Owner : TComponent;ClosePr : TFormClosePr;Settings : TSettings);reintroduce;
  private
    { Private declarations }
  public
    Settings : TSettings;
  end;

var
  SettingsForm: TSettingsForm;


implementation

Uses
    FileOperationsUnit;

{$R *.dfm}

procedure TSettingsForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    Settings.Size := SizeEdit.Value;
    Settings.MusicVolume := MusicVolumeEdit.Value;
    Settings.TextColor := TextColor.Selected;
    Settings.PrintedTextColor := PrintedTextColor.Selected;
    TFileOperations.TrySaveSettings(Settings );
    FormClosePr();
end;


constructor  TSettingsForm.Create(Owner : TComponent;ClosePr : TFormClosePr;Settings : TSettings);
Begin
    inherited Create(Owner,ClosePr);
    self.Settings := Settings;
    TextColor.Selected := Settings.TextColor;
    PrintedTextColor.Selected := Settings.PrintedTextColor;
    MusicVolumeEdit.Value := Settings.MusicVolume;
    SizeEdit.Value := Settings.Size;
End;

end.
