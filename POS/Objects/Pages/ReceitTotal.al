page 50602 "POS Receit Total"
{
    PageType = CardPart;
    ApplicationArea = All;
    UsageCategory = ReportsAndAnalysis;
    SourceTable = "Sales Header";
    Editable = false;

    layout
    {
        area(Content)
        {
            field(Amount; Rec.Amount)
            {
                ApplicationArea = All;

            }
            field("Amount Including VAT"; Rec."Amount Including VAT")
            {
                ApplicationArea = All;
            }

        }
    }
}