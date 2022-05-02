unit PathsUnit;

interface

uses
    System.SysUtils,Vcl.Forms;

Type
    TPaths = class
        CurrentPath : String;
        class function GetEnglishTextsDirectory():String;static;
        class function GetRussianTextsDirectory():String;static;
        class function GetOtherTextsDirectory():String;static;
        class function GetProjectFolder():String;static;
        class function GetMusicFolder():String;static;
        class function GetSavePath():String;static;
        class function GetDefaultTextPath():String;static;
        class function GetSettingsPath():String;static;
    end;

implementation


class function TPaths.GetProjectFolder():String;
Begin
    GetProjectFolder:=ExtractFileDir(Application.ExeName)+'\';
End;

class function TPaths.GetEnglishTextsDirectory():String;
Begin
    GetEnglishTextsDirectory := TPaths.GetProjectFolder()+'Texts\English\';
End;

class function TPaths.GetRussianTextsDirectory():String;
Begin
    GetRussianTextsDirectory :=TPaths.GetProjectFolder()+'Texts\Russian\';
End;


class function TPaths.GetOtherTextsDirectory():String;
Begin
    GetOtherTextsDirectory:=TPaths.GetProjectFolder()+'Texts\Other\';
End;

class function TPaths.GetMusicFolder():String;
Begin
    GetMusicFolder :=TPaths.GetProjectFolder()+'Music\';
End;

class function TPaths.GetSavePath():String;
Begin
    GetSavePath := GetProjectFolder() + 'Statistic\Statistic.txt';
End;

class function TPaths.GetDefaultTextPath():String;
Begin
    GetDefaultTextPath := TPaths.GetProjectFolder()+'Texts\Default.txt';
End;

class function TPaths.GetSettingsPath():String;
Begin
    GetSettingsPath := TPaths.GetProjectFolder()+'Settings\Settings.txt';
End;

end.
