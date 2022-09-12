page 50101 "API Car Model"
{
    APIGroup = 'cars';
    APIPublisher = 'bctech';
    APIVersion = 'v1.0';

    Caption = 'CarModel';
    DelayedInsert = true;
    EntityName = 'carModel';
    EntitySetName = 'carModels';

    PageType = API;
    SourceTable = "Car Model";
    ODataKeyFields = SystemId;
    UsageCategory = Administration;
    ApplicationArea = All;
    Editable = true;

    Extensible = false;

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field(name; Rec.Name)
                {
                    Caption = 'Name';
                }
                field(description; Rec.Description)
                {
                    Caption = 'Description';
                }
                field(brandId; Rec."Brand Id")
                {
                    Caption = 'Brand Id';
                }
                field(power; Rec.Power)
                {
                    Caption = 'Power cc';
                }
                field(fuelType; Rec."Fuel Type")
                {
                    Caption = 'Fuel Type';
                }
                field(Id; Rec.SystemId)
                {
                    Caption = 'Id';
                    Editable = false;
                }
            }
        }
    }
}
