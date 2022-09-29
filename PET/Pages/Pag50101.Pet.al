page 50301 Pet
{
    Caption = 'Pet';
    PageType = Card;
    SourceTable = Pet;

    layout
    {
        area(content)
        {
            group(General)
            {
                field(Code; Rec.PetNo)
                {
                    Caption = 'Pet Code';
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of each Pet unique Code number.';
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
                    ToolTip = 'Specifies the type of Pet.';
                }
                field(Description; Rec.Description)
                {
                    Caption = 'Pet Description';
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Description field.';
                }
                field(Birthday; Rec.Birthday)
                {
                    Caption = 'Pet Birth Date';
                    ApplicationArea = All;
                }

                field(OwnerNo; Rec.OwnerNo)
                {
                    Caption = 'Pet Owner No.';
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Owner field.';
                }
                field(Owner; Rec.Owner)
                {
                    Caption = 'Pet Owner';
                    ApplicationArea = All;
                }

            }
            group("Pet Attributes & More")
            {
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
                field(Height; Rec.Height)
                {
                    ApplicationArea = All;
                    Caption = 'Height(Inch)';
                    ToolTip = 'Specifies the measured pet height';
                }
                field(Weight; Rec.Weight)
                {
                    ApplicationArea = All;
                    Caption = 'Weight(Kg)';
                    ToolTip = 'Specifies the measured pet weight';
                }

                field(SystemCreatedAt; Rec.SystemCreatedAt)
                {
                    Caption = 'Created At';
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the SystemCreatedAt field.';
                }

                // field(SystemCreatedBy; Rec.SystemCreatedBy)
                // {
                //     ApplicationArea = All;
                //     ToolTip = 'Specifies the value of the SystemCreatedBy field.';
                // }
            }
        }
    }
}
