unit TypeControllerUnit;

interface

Uses
    QueueUnit,TypeInfo;

Type
    TOnSymbolsFinished = procedure() of object;
    TTypeController = class
        Symbols : TTextQueue;
        Printed : TTextQueue;
        CurrentStatistic : TTypeStatistic;
        OnFinished : TOnSymbolsFinished;
        PrintedLength : Integer;
        procedure Initialize();
        procedure FillPrintedWithSpaces();
        procedure ReInitialize();
        procedure FreeVariablesMem();
        procedure SetText(Str : String);
        function TakeTextPart(Size : Integer):String;
        function TryTypeSymbol(Ch : Char):Boolean;
        function TakeTypedString():String;
        constructor Create(OnFinished:TOnSymbolsFinished);reintroduce;
    end;

implementation

constructor TTypeController.Create(OnFinished: TOnSymbolsFinished);
Begin
    self.PrintedLength:=PrintedLength;
    self.OnFinished := OnFinished;
    Initialize();
End;

procedure TTypeController.Initialize();
Begin
    Symbols := TTextQueue.Create();
    Printed := TTextQueue.Create();
End;

procedure TTypeController.FreeVariablesMem();
Begin
    if Printed<>nil then
        Printed.Clear();
    if Symbols<>nil then
        Symbols.Clear;
End;


function TTypeController.TakeTypedString():String;
Begin
    TakeTypedString := Printed.ToString(PrintedLength);
End;

procedure TTypeController.SetText(Str : String);
Begin
    Symbols.SetString(Str);
End;


function TTypeController.TakeTextPart(Size : Integer):String;
Begin
    TakeTextPart := Symbols.ToString(Size);
End;

procedure TTypeController.ReInitialize();
Begin
    FreeVariablesMem();
    CurrentStatistic.Clear;
    FillPrintedWithSpaces();
End;

procedure TTypeController.FillPrintedWithSpaces();
Var
    I : Integer;
Begin
    Printed.Clear();
    for I := 1 to PrintedLength do
        Printed.Enqueue(' ');
End;


function TTypeController.TryTypeSymbol(Ch : Char):Boolean;
Var
    IsCorrect : Boolean;
Begin
    if Ch=Symbols.Peek then
    Begin
        IsCorrect := True;
        Printed.Dequeue();
        Printed.Enqueue(Symbols.Dequeue());
        Inc(CurrentStatistic.SymbolsTyped);
        if Symbols.IsEmpty then
            OnFinished();
    End
    Else
    Begin
        IsCorrect := False;
        Inc(CurrentStatistic.MistakesCount);
    End;
    TryTypeSymbol := IsCorrect;
End;

end.
