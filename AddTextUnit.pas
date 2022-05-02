unit AddTextUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtDlgs,AdditionalFormUnit,PathsUnit,FileOperationsUnit;

type
  TAddTextForm = class(TAdditionalForm)
    EnglishRadio: TRadioButton;
    OtherRadio: TRadioButton;
    RussianRadio: TRadioButton;
    AddButton: TButton;
    OpenDialog: TOpenTextFileDialog;
    procedure AddButtonClick(Sender: TObject);
    function CreatePath(InitialPath : String):String;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure AddText();
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  AddTextForm: TAddTextForm;

implementation

{$R *.dfm}

procedure TAddTextForm.AddButtonClick(Sender: TObject);
begin
    AddText();
end;

procedure TAddTextForm.AddText();
Var
    Path : String;
    Name : String;
    IsTextCopied : Boolean;
Begin
    if OpenDialog.Execute() then
    Begin
        Name := OpenDialog.FileName;
        Path := CreatePath(Name);
        IsTextCopied := TFileOperations.TryCopyText(Name,Path);
        if not IsTextCopied  then
            ShowMessage('File is inappropriate for lesson!');
    End;
End;

procedure TAddTextForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    FormClosePr();
end;

function TAddTextForm.CreatePath(InitialPath : String):String;
Var
    Path : String;
    Name : String;
Begin
    Name := extractfilename(InitialPath);
    if EnglishRadio.Checked then
        Path :=TPaths.GetEnglishTextsDirectory()+Name
    Else if RussianRadio.Checked then
        Path :=TPaths.GetRussianTextsDirectory()+Name
    Else
        Path :=TPaths.GetOtherTextsDirectory()+Name;
    CreatePath := Path;
End;

end.
