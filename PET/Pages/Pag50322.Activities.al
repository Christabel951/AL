page 50322 Activities
{
    Caption = 'Activities';
    PageType = CardPart;
    SourceTable = ActivitiesCues;

    layout
    {
        area(content)
        {
            cuegroup(General)
            {
                CuegroupLayout = Wide;
                ShowCaption = false;
                field("Sales This Month"; Rec."Sales This Month")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Sales This Month field.';
                }
            }
            cuegroup("Ongoing Sales")
            {
                Caption = 'Ongoing Sales';
                field("Ongoing Sales Invoices"; Rec."Ongoing Sales Invoices")
                {
                    ApplicationArea = All;
                    DrillDownPageId = "Sales Invoice List";
                    ToolTip = 'Specifies the value of the Ongoing Sales Invoices field.';
                }
                field("Ongoing Sales Quote"; Rec."Ongoing Sales Quote")
                {
                    ApplicationArea = All;
                    DrillDownPageId = "Sales Quotes";
                    ToolTip = 'Specifies the value of the Ongoing Sales Quote field.';
                }
            }
            cuegroup("Ongoing Purchases")
            {
                field("Ongoing Purchase Invoices"; Rec."Ongoing Purchase Invoices")
                {
                    ApplicationArea = All;
                    DrillDownPageId = "Purchase Invoices";
                    ToolTip = 'Specifies the value of the Ongoing Purchase Invoices field.';
                }


                // field("Top 10 Customer Sales YTD"; Rec."Top 10 Customer Sales YTD")
                // {
                //     ApplicationArea = All;
                //     ToolTip = 'Specifies the value of the Top 10 Customer Sales YTD field.';
                // }
            }
        }
    }
    trigger OnOpenPage()
    begin
        //Implementing the Singeton Design Pattern
        If not Rec.Get() then begin
            Rec.Init();
            Rec.Insert();
        end;
    end;
}
