page 50603 "POS Lines"
{
    PageType = ListPart;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "Sales Line";
    Caption = 'Lines';
    Editable = true;
    InsertAllowed = false;

    layout
    {
        area(Content)
        {
            repeater(Rep)
            {
                field("No."; Rec."No.")
                {
                    ApplicationArea = All;

                }
                field(Description; Rec.Description)
                {
                    ApplicationArea = All;
                }
                field(Quantity; Rec.Quantity)
                {
                    ApplicationArea = All;
                    ToolTip = 'If you scan the same item twicce it should update the existing line with a larger quantity instead of adding a new line';
                }
                field(Amount; Rec.Amount)
                {
                    ApplicationArea = All;
                }


            }
        }
        // area(Factboxes)
        // {

        // }
    }

    actions
    {
        area(Processing)
        {
            action(VIP)
            {
                Caption = 'VIP';
                ApplicationArea = All;
                Promoted = true;
                PromotedOnly = true;
                ToolTip = 'Specify if this is a VIP customer!';
                trigger OnAction();
                begin
                    Message('VIP Customer');
                end;
            }
        }
    }
}