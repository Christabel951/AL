page 50317 "Bill Visits"
{
    Caption = 'Bill Visits';
    PageType = List;
    SourceTable = "Visit Log";
    SourceTableView = where(OrderCreated = const(true));


    layout
    {
        area(content)
        {
            repeater(General)
            {
                field(Code; Rec."Visit Log ID")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Code field.';
                }
                field(Owner; Rec."Pet Owner No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Owner field.';
                }

                field(GroomingType; Rec.GroomingType)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the GroomingType field.';
                }

                field(Description; Rec."Pet Name")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Description field.';
                }
                field(Pet; Rec."Pet Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Pet field.';
                }
                field(PetType; Rec.PetType)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the PetType field.';
                }
                field(VisitDate; Rec.VisitDate)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the VisitDate field.';
                }
            }
        }
    }

}
