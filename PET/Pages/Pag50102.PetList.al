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
                field(Owner; Rec.OwnerNo)
                {
                    Caption = 'Pet Owner';
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Owner field.';
                }

                field(Height; Rec.Height)
                {
                    Caption = 'Height(Inch)';
                    ApplicationArea = All;
                }
                field(Weight; Rec.Weight)
                {
                    Caption = 'Weight(Kg)';
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
            }
        }
    }
    // actions
    // {
    //     area(Processing)
    //     {
    //         action("Pet List Report")
    //         {
    //             ApplicationArea = All;
    //             Image = Print;
    //             Promoted = true;
    //             PromotedCategory = Report;
    //             PromotedIsBig = true;
    //             Caption = 'Pet List Report ';
    //             trigger OnAction()
    //             var
    //                 PetRec: Record Pet;
    //             begin
    //                 PetRec.Reset();

    //                 PetRec.SetRange(PetNo, Rec.PetNo);
    //                 Report.Run(Report::"Pet List Report", true, true, PetRec);

    //             end;
    //         }
    //     }
    // }
}
