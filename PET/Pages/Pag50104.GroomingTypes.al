page 50304 "Grooming Types"
{
    Caption = 'Grooming Types';
    PageType = List;
    SourceTable = "Grooming Types";

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("Code"; Rec."CODE")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the CODE field.';
                }
                field(Descritption; Rec.Descritption)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Descritption field.';
                }
            }
        }
    }
}
