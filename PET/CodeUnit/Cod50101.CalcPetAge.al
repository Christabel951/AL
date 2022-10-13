codeunit 50101 CalcPetAge
{
    procedure GetPetAge(noPeriod: Integer): Decimal
    var
        textPeriod: Text[20];
    begin
        if noPeriod < 90 then begin
            Error('Invalid/ Ineligible Age for Grooming');
        end;
        if (noPeriod > 90) AND (noPeriod < 365) then begin
            noPeriod := noPeriod / 12;
            // textPeriod := Format(noPeriod);
            // exit(textPeriod + 'M');
            exit(noPeriod)
        end
        else begin
            noPeriod := noPeriod / 365;
            // textPeriod := Format(noPeriod);
            // exit(textPeriod + 'Y');
            exit(noPeriod)
        end;

    end;

    procedure DetermineAge(StartDate: Date; EndDate: Date) AgeString: Text[150]
    var
        dayB: Integer;
        monthB: Integer;
        yearB: Integer;

        dayJ: Integer;

        monthJ: Integer;

        yearJ: Integer;

        Year: Integer;

        Month: Integer;

        Day: Integer;

        monthsToBirth: Integer;

        D: Date;

        DateCat: Integer;

    begin

        if StartDate > EndDate then
            exit;

        DetermineAgeDuration(StartDate, EndDate, Year, Month, Day);

        AgeString := '%1  Years, %2  Months and #3## Days';

        AgeString := StrSubstNo(AgeString, Year, Month, Day);

    end;


    procedure DetermineAgeDuration(StartDate: Date; EndDate: Date; var Year: Integer; var Month: Integer; var Day: Integer)
    var
        dayB: Integer;
        monthB: Integer;
        yearB: Integer;
        dayJ: Integer;
        monthJ: Integer;
        yearJ: Integer;
        monthsToBirth: Integer;
        D: Date;
        DateCat: Integer;
    begin
        if StartDate > EndDate then
            exit;
        if ((StartDate <> 0D) and (EndDate <> 0D)) then begin
            dayB := Date2dmy(StartDate, 1);
            monthB := Date2dmy(StartDate, 2);
            yearB := Date2dmy(StartDate, 3);
            dayJ := Date2dmy(EndDate, 1);
            monthJ := Date2dmy(EndDate, 2);
            yearJ := Date2dmy(EndDate, 3);
            Day := 0;
            Month := 0;
            Year := 0;
            DateCat := DateCategory(dayB, dayJ, monthB, monthJ, yearB, yearJ);
            case (DateCat) of
                1:
                    begin
                        Year := yearJ - yearB;
                        if monthJ >= monthB then
                            Month := monthJ - monthB
                        else begin
                            Month := (monthJ + 12) - monthB;
                            Year := Year - 1;
                        end;

                        if (dayJ >= dayB) then
                            Day := dayJ - dayB
                        else
                            if (dayJ < dayB) then begin
                                Day := (DetermineDaysInMonth(monthJ, yearJ) + dayJ) - dayB;
                                Month := Month - 1;
                            end;

                    end;

                2, 3, 7:
                    begin
                        if (monthJ <> monthB) then begin
                            if monthJ >= monthB then
                                Month := monthJ - monthB
                            //  ELSE ERROR('The wrong date category!');
                        end;

                        if (dayJ <> dayB) then begin
                            if (dayJ >= dayB) then
                                Day := dayJ - dayB
                            else
                                if (dayJ < dayB) then begin
                                    Day := (DetermineDaysInMonth(monthJ, yearJ) + dayJ) - dayB;
                                    Month := Month - 1;
                                end;
                        end;

                    end;
                4:
                    begin
                        Year := yearJ - yearB;
                    end;
                5:
                    begin
                        if (dayJ >= dayB) then
                            Day := dayJ - dayB
                        else
                            if (dayJ < dayB) then begin
                                Day := (DetermineDaysInMonth(monthJ, yearJ) + dayJ) - dayB;
                                monthJ := monthJ - 1;
                                Month := (monthJ + 12) - monthB;
                                yearJ := yearJ - 1;
                            end;

                        Year := yearJ - yearB;
                    end;
                6:
                    begin
                        if monthJ >= monthB then
                            Month := monthJ - monthB
                        else begin
                            Month := (monthJ + 12) - monthB;
                            yearJ := yearJ - 1;
                        end;
                        Year := yearJ - yearB;
                    end;

            end;
        end else
            Message('For Date Calculation Enter All Applicable Dates!');
        exit;

    end;

    procedure DateCategory(BDay: Integer; EDay: Integer; BMonth: Integer; EMonth: Integer; BYear: Integer; EYear: Integer) Category: Integer
    var
        TEXTDATE1: label 'The Start date cannot be Greater then the end Date.';

    begin
        if ((EYear > BYear) and (EMonth <> BMonth) and (EDay <> BDay)) then
            Category := 1
        else
            if ((EYear = BYear) and (EMonth <> BMonth) and (EDay = BDay)) then
                Category := 2
            else
                if ((EYear = BYear) and (EMonth = BMonth) and (EDay <> BDay)) then
                    Category := 3
                else
                    if ((EYear > BYear) and (EMonth = BMonth) and (EDay = BDay)) then
                        Category := 4
                    else
                        if ((EYear > BYear) and (EMonth = BMonth) and (EDay <> BDay)) then
                            Category := 5
                        else
                            if ((EYear > BYear) and (EMonth <> BMonth) and (EDay = BDay)) then
                                Category := 6
                            else
                                if ((EYear = BYear) and (EMonth <> BMonth) and (EDay <> BDay)) then
                                    Category := 7
                                else
                                    if ((EYear = BYear) and (EMonth = BMonth) and (EDay = BDay)) then
                                        Category := 3
                                    else
                                        if ((EYear < BYear)) then
                                            Error(TEXTDATE1)
                                        else begin
                                            Category := 0;
                                            //ERROR('The start date cannot be after the end date.');
                                        end;
        exit;
    end;

    procedure DetermineDaysInMonth(Month: Integer; Year: Integer) DaysInMonth: Integer
    begin
        case (Month) of
            1:
                DaysInMonth := 31;
            2:
                begin
                    if (LeapYear(Year)) then
                        DaysInMonth := 29
                    else
                        DaysInMonth := 28;
                end;
            3:
                DaysInMonth := 31;
            4:
                DaysInMonth := 30;
            5:
                DaysInMonth := 31;
            6:
                DaysInMonth := 30;
            7:
                DaysInMonth := 31;
            8:
                DaysInMonth := 31;
            9:
                DaysInMonth := 30;
            10:
                DaysInMonth := 31;
            11:
                DaysInMonth := 30;
            12:
                DaysInMonth := 31;
            else
                Message('Not valid date. The month must be between 1 and 12');
        end;

        exit;
    end;

    procedure LeapYear(Year: Integer) LY: Boolean
    var
        CenturyYear: Boolean;
        DivByFour: Boolean;
    begin
        CenturyYear := Year MOD 100 = 0;
        DivByFour := Year MOD 4 = 0;
        if ((not CenturyYear and DivByFour) or (Year MOD 400 = 0)) then
            LY := true
        else
            LY := false;
    end;

}