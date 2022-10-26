page 50350 "Sales Invoice Activities"
{
    Caption = 'Sales Invoice Activities';
    PageType = CardPart;
    SourceTable = "Sales Invoice Cue";

    layout
    {
        area(content)
        {
            cuegroup(SalesInvoice)
            {
                Caption = 'Sales Invoice';
                field("Sales Invoice - Open"; Rec."Sales Invoice - Open")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Sales Invoice - Open field.';
                }
                field("Sales Invoice - Released"; Rec."Sales Invoice - Released")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Sales Invoice - Open field.';
                }
                field("Sales This Month"; Rec."Sales This Month")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Sales This Month field.';
                }
            }
        }
    }
    trigger OnOpenPage()
    begin
        if not Rec.Get() then begin
            Rec.Init();
            Rec.Insert();
        end;

    end;
}
