pageextension 50600 "Payment Method" extends "Payment Methods"
{
    layout
    {
        addafter("Bal. Account No.")
        {
            field("POS Payment"; Rec."POS Payment")
            {
                ApplicationArea = All;
            }
        }
    }
}