unit OverallStatisticUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,AdditionalFormUnit,TypeInfo,StatisticOperationsUnit,
  Vcl.ComCtrls, Vcl.ExtCtrls;

type
  TOverAllStatisticForm = class(TAdditionalForm)
    MistakesRateOverallLabel: TLabel;
    TypeSpeedOverallLabel: TLabel;
    SymbolsTypedOverallLabel: TLabel;
    TimeOverallLabel: TLabel;
    Label1: TLabel;
    BestMistakesRate: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    BestTypeSpeedLabel: TLabel;
    Label6: TLabel;
    BestSymbolsTypedLabel: TLabel;
    BestTimeLabel: TLabel;
    Label9: TLabel;
    Label2: TLabel;
    BestDateLabel: TLabel;
    StatisticListView: TListView;
    DateRadio: TRadioButton;
    SpeedRadio: TRadioButton;
    MistakesRadio: TRadioButton;
    Label5: TLabel;
    BestStatisticPanel: TPanel;
    OverallStatisticPanel: TPanel;
    Label13: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    TodayCheckBox: TCheckBox;
    constructor Create(Owner : TComponent;ClosePr : TFormClosePr;StatisticArr : TStatisticArr);reintroduce;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ShowOverallStatistic();
    procedure ShowBestStatistic();
    procedure ShowStatisticList(Var Arr : TStatisticArr);
    procedure DateRadioClick(Sender: TObject);
    procedure SpeedRadioClick(Sender: TObject);
    procedure MistakesRadioClick(Sender: TObject);
    procedure TodayCheckBoxClick(Sender: TObject);
  private
        StatisticArr : TStatisticArr;
        BestStatistic : TTypeStatistic;
        OverallStatistic : TTypeStatistic;
  public
    { Public declarations }
  end;

var
  OverAllStatisticForm: TOverAllStatisticForm;

implementation

{$R *.dfm}

constructor TOverAllStatisticForm.Create(Owner : TComponent;ClosePr : TFormClosePr;StatisticArr : TStatisticArr);
Begin
    inherited Create(Owner,ClosePr);
    self.StatisticArr := StatisticArr;
    OverallStatistic := TStatisticOperations.CalculateOverallStatistic(self.StatisticArr);
    BestStatistic := TStatisticOperations.FindBestStatistic(self.StatisticArr);
    ShowBestStatistic();
    ShowOverallStatistic();
    ShowStatisticList(StatisticArr);
End;

procedure TOverAllStatisticForm.DateRadioClick(Sender: TObject);
begin
        TStatisticOperations.SortStatistic(StatisticArr,TStatisticOperations.CompareByDate);
        ShowStatisticList(StatisticArr);
end;

procedure TOverAllStatisticForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    FormClosePr();
end;

procedure TOverAllStatisticForm.MistakesRadioClick(Sender: TObject);
begin
        TStatisticOperations.SortStatistic(StatisticArr,TStatisticOperations.CompareByMistakesRate);
        ShowStatisticList(StatisticArr);
end;

procedure TOverAllStatisticForm.ShowOverallStatistic();
Begin
    SymbolsTypedOverallLabel.Caption := IntToStr(OverallStatistic.SymbolsTyped);
    TimeOverallLabel.Caption := IntToStr(OverallStatistic.TypingTimeInSeconds)+' s';
    TypeSpeedOverallLabel.Caption := IntToStr(OverallStatistic.TypeSpeed)+' cpm';
    MistakesRateOverallLabel.Caption := OverallStatistic.GetMistakesRateString()+' %';
End;


procedure TOverAllStatisticForm.ShowBestStatistic();
Begin
    BestSymbolsTypedLabel.Caption := IntToStr(BestStatistic.SymbolsTyped);
    BestTimeLabel.Caption := IntToStr(BestStatistic.TypingTimeInSeconds)+' s';
    BestTypeSpeedLabel.Caption := IntToStr(BestStatistic.TypeSpeed)+' cpm';
    BestMistakesRate.Caption := BestStatistic.GetMistakesRateString()+' %';
    BestDateLabel.Caption := DateToStr(BestStatistic.Date);
End;


procedure TOverAllStatisticForm.ShowStatisticList(Var Arr : TStatisticArr);
Var
    Item : TListItem;
    I : Integer;
begin
    StatisticListView.Items.Clear();
    for I := 0 to High(Arr) do
    Begin
        Item := StatisticListView.Items.Add();
        Item.Caption := DateToStr(Arr[I].Date);
        Item.SubItems.Add(IntToStr(Arr[I].TypeSpeed)+'   ');
        Item.SubItems.Add(Arr[I].GetMistakesRateString()+'      ');
        Item.SubItems.Add(IntToStr(Arr[I].TypingTimeInSeconds)+'  ');
    End;
End;

procedure TOverAllStatisticForm.SpeedRadioClick(Sender: TObject);
begin
        TStatisticOperations.SortStatistic(StatisticArr,TStatisticOperations.CompareByTypeSpeed);
        ShowStatisticList(StatisticArr);
end;

procedure TOverAllStatisticForm.TodayCheckBoxClick(Sender: TObject);
Var
    CurrentStatistic : TStatisticArr;
begin
    if TodayCheckBox.Checked then
    Begin
        CurrentStatistic := TStatisticOperations.FilterStatistic(StatisticArr,TStatisticOperations.FilterToday);
        ShowStatisticList(CurrentStatistic);
    End
    Else
        ShowStatisticList(StatisticArr);
end;

end.
