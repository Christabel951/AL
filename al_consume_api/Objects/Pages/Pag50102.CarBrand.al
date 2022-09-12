page 50102 " API Car Brand"
{
    APIGroup = 'cars';
    APIPublisher = 'bctech';
    APIVersion = 'v1.0';

    Caption = 'CarBrand';
    DelayedInsert = true;
    EntityName = 'carBrand';
    EntitySetName = 'carBrands';

    PageType = API;
    SourceTable = "Car Brand";
    ODataKeyFields = SystemId;
    Extensible = false;
    UsageCategory = Administration;
    ApplicationArea = All;

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field(country; Rec.Country)
                {
                    Caption = 'Country';
                }
                field(description; Rec.Description)
                {
                    Caption = 'Description';
                }
                field(name; Rec.Name)
                {
                    Caption = 'Name';
                }
                field(Id; Rec.SystemId)
                {
                    Caption = 'Id';
                    Editable = false;
                }
            }
            part(carModels; "API Car Model")
            {
                Caption = 'CarModels';
                EntityName = 'carModel';
                EntitySetName = 'carModels';
                SubPageLink = "Brand Id" = Field(SystemId);

            }
        }
    }
}
