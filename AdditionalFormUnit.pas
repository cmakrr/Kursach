unit AdditionalFormUnit;

interface
Uses
Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

Type
    TFormClosePr = procedure() of object;
    TAdditionalForm = class(TForm)
        constructor  Create(Owner : TComponent;ClosePr : TFormClosePr);reintroduce;
        public
            FormClosePr : TFormClosePr;
    end;


implementation

constructor  TAdditionalForm.Create(Owner : TComponent;ClosePr : TFormClosePr);
Begin
    inherited Create(Owner);
    self.FormClosePr := ClosePr;
End;


end.
