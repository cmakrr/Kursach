unit AudioSettingsUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Samples.Spin;

type
  TAudioSettingsForm = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    SpinEdit1: TSpinEdit;
    SpinEdit2: TSpinEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  AudioSettingsForm: TAudioSettingsForm;

implementation

{$R *.dfm}

end.
