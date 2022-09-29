page 50310 "Setup "
{
    Caption = 'Setup ';
    PageType = Card;
    SourceTable = Setup;

    layout
    {
        area(content)
        {
            group(General)
            {
                field("Pet No.s"; Rec."Pet No.s")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Pet No.s field.';
                }
                field("Visit No.s"; Rec."Visit Log No.s")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Visit No.s field.';
                }
            }
        }
    }
}
