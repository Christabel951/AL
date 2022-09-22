page 50601 "POS Setup"
{
    Caption = 'POS Setup';
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "POS Setup";

    layout
    {
        area(Content)
        {
            field("Cash Customer"; Rec."Cash Customer")
            {
                ApplicationArea = All;

            }
        }
    }

    trigger OnOpenPage()

    begin
        if Rec.IsEmpty() then
            Rec.Insert();

    end;

}