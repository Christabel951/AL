pageextension 50314 "Sales Header Extension" extends "Sales Order"
{
    layout
    {
        addafter("Due Date")
        {

            field(VisitID; Rec.VisitID)
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the VisitID field.';
                Editable = false;
            }
            field(PetNo; Rec.PetNo)
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the PetNo field.';
                Editable = false;

            }
            field(PetName; Rec.PetName)
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the PetName field.';
                Editable = false;

            }
            field(GroomingType; Rec.GroomingType)
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the GroomingType field.';
                Editable = false;
            }
        }
    }
}
