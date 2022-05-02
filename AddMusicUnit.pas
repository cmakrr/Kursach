unit AddMusicUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls;

type
  TAddMusicForm = class(TForm)
    AddNewSong: TButton;
    RemoveSong: TButton;
    SongBox: TListBox;
    OpenSong: TOpenDialog;
    procedure AddNewSongClick(Sender: TObject);
    procedure RemoveSongClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  AddMusicForm: TAddMusicForm;

implementation

{$R *.dfm}

procedure TAddMusicForm.AddNewSongClick(Sender: TObject);
begin
    if OpenSong.Execute() then
    Begin

    End;
end;

procedure TAddMusicForm.RemoveSongClick(Sender: TObject);
begin
    if SongBox.ItemIndex>-1 then
    Begin
        SongBox.DeleteSelected();
        DeleteFile(SongBox.Items[SongBox.ItemIndex]);
    End;

end;

end.
