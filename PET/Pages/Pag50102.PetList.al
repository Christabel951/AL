page 50302 PetList
{
    Caption = 'PetList';
    PageType = List;
    CardPageId = Pet;
    SourceTable = Pet;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field(ID; Rec.PetNo)
                {
                    Caption = 'Pet Code';
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the ID field.';
                }
                field(Name; Rec.PetName)
                {
                    Caption = 'Pet Name';
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Name field.';
                }
                field(PetType; Rec.PetType)
                {
                    Caption = 'Pet Type';
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the PetType field.';
                }
                field(Description; Rec.Description)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Description field.';
                }
                field(Birthday; Rec.Birthday)
                {
                    ApplicationArea = All;
                    Caption = 'Pet Birth Date';
                }
                field(Owner; Rec.Owner)
                {
                    Caption = 'Pet Owner';
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Owner field.';
                }

                field(Height; Rec.Height)
                {
                    ApplicationArea = All;
                }
                field(Weight; Rec.Weight)
                {
                    ApplicationArea = All;
                }
                field(Age; Rec.Age)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Age field.';
                }
                field(Color; Rec.Color)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Color field.';
                }
                field(CreatedAt; Rec.SystemCreatedAt)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the time the record was created.';
                }
                // field(CreatedBy; Rec.SystemCreatedBy)
                // {
                //     ApplicationArea = All;
                //     ToolTip = 'Specifies the user who created the record.';
                // }
            }
        }
    }
}
