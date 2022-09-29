page 50303 "Pet Type"
{
    Caption = 'Pet Type';
    PageType = List;
    SourceTable = "Pet Type";

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field(Code; Rec.TypeID)
                {
                    Caption = 'Pet Code';
                    ApplicationArea = All;
                    ToolTip = 'Specifies the unique code values to ID pet types.';
                }
                field(Description; Rec.Description)
                {
                    ApplicationArea = All;
                    ToolTip = 'Gives more information of the specified pet type category.';
                }
            }
        }
    }
}
