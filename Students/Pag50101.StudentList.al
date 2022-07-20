page 50101 "Student List"
{
    Caption = 'Student List';
    PageType = List;
    CardPageId = "Student Card";
    UsageCategory = Lists;
    ApplicationArea = Basic;
    SourceTable = Students;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field(ID; Rec.ID)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Student ID field.';
                }
                field(FirstName; Rec.FirstName)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the FirstName field.';
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
            }
        }
    }
}
