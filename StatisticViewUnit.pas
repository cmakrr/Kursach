unit StatisticViewUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs,TypeInfo, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TOnCloseProcedure =  procedure() of object;
  TTypeStatisticForm = class(TForm)
    NameLabel: TLabel;
    SpeedLabel: TLabel;
    MistakesRateLabel: TLabel;
    TimeLabel: TLabel;
    OkButton: TButton;
    NameLabelInfo: TLabel;
    MistakeLabelInfo: TLabel;
    TimeLabelInfo: TLabel;
    SymbolsTypedLabel: TLabel;
    SymbolsTypedInfoLabel: TLabel;
    FinishButton: TButton;
    MainInfoPanel: TPanel;
    procedure OkButtonClick(Sender: TObject);
    procedure FinishButtonClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
  private
         procedure ShowStatistic();
  public
     TypeStatistic : TTypeStatistic;
     OnClosePr : TOnCloseProcedure;
     OnOkButtonClick : TOnCloseProcedure;
     OnFinishButtonClick : TOnCloseProcedure;
     constructor Create(Owner : TComponent;Statistic : TTypeStatistic;OnOkButtonClick,OnFinishButtonClick : TOnCloseProcedure);reintroduce;
  end;

var
  TypeStatisticForm: TTypeStatisticForm;

implementation

{$R *.dfm}


constructor TTypeStatisticForm.Create(Owner : TComponent;Statistic : TTypeStatistic;OnOkButtonClick,OnFinishButtonClick : TOnCloseProcedure);
Begin
    inherited Create(Owner);
    if not Assigned(OnOkButtonClick) then
    Begin
        OkButton.Enabled := false;
        OnClosePr :=  OnFinishButtonClick;
    End
    Else
        OnClosePr :=  OnOkButtonClick;
    self.OnOkButtonClick := OnOkButtonClick;
    self.OnFinishButtonClick := OnFinishButtonClick;
    TypeStatistic := Statistic;
    ShowStatistic();
End;

procedure TTypeStatisticForm.ShowStatistic();
Begin
    TypeStatistic.CalculateTypeSpeed();
    SpeedLabel.Caption :=IntToStr(TypeStatistic.TypeSpeed)+' cpm';
    TypeStatistic.CalculateMistakesRate();
    MistakesRateLabel.Caption :=  TypeStatistic.GetMistakesRateString()+' %';
    SymbolsTypedLabel.Caption := IntToStr(TypeStatistic.SymbolsTyped);
    TimeLabel.Caption := IntToStr(TypeStatistic.TypingTimeInSeconds) + ' s';
End;


procedure TTypeStatisticForm.FinishButtonClick(Sender: TObject);
begin
    OnClosePr:=OnFinishButtonClick;
    self.Close();
end;


procedure TTypeStatisticForm.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
    OnClosePr();
    CanClose := True;
end;

procedure TTypeStatisticForm.OkButtonClick(Sender: TObject);
begin
    OnClosePr:=OnOkButtonClick;
    self.Close();
end;

end.