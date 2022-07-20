page 50100 "Student Card"
{

    Caption = 'Student Card';
    PageType = Card;
    SourceTable = Students;

    layout
    {
        area(content)
        {
            group(General)
            {
                field(ID; Rec.ID)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Student ID field.';
                }
                field(Name; FirstName)
                {
                    ApplicationArea = All;
                    Caption = 'First Name';
                }

                field(LastName; Rec.LastName)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the LastName field.';
                }
                field(Marks; Rec.Marks)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Marks field.';
                }
                field(SystemCreatedAt; Rec.SystemCreatedAt)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the SystemCreatedAt field.';
                }

            }
        }
    }
}
