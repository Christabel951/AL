codeunit 50101 CalcPetAge
{
    procedure GetPetAge(noPeriod: Integer): Text[50]
    var
        textPeriod: Text[20];
    begin
        if noPeriod < 90 then begin
            Error('Invalid/ Ineligible Age for Grooming');
        end;
        if (noPeriod > 90) AND (noPeriod < 365) then begin
            noPeriod := noPeriod / 12;
            textPeriod := Format(noPeriod);
            exit(textPeriod + 'M');
        end
        else begin
            noPeriod := noPeriod / 365;
            textPeriod := Format(noPeriod);
            exit(textPeriod + 'Y');
        end;

    end;

}
