report 50321 "Pet List Report"
{
    ApplicationArea = All;
    Caption = 'Pet List Report';
    UsageCategory = ReportsAndAnalysis;
    DefaultLayout = RDLC;
    RDLCLayout = './Reports/Rep50321PetListReport.rdl';
    dataset
    {
        dataitem(Pet; Pet)
        {
            column(Age; Age)
            {
            }
            column(Birthday; Birthday)
            {
            }
            column(Color; Color)
            {
            }
            column(Description; Description)
            {
            }
            column(Height; Height)
            {
            }
            column(NoSeries; "No. Series")
            {
            }
            column(OwnerNo; OwnerNo)
            {
            }
            column(PetName; PetName)
            {
            }
            column(PetNo; PetNo)
            {
            }
            column(PetType; PetType)
            {
            }
            column(SystemCreatedAt; SystemCreatedAt)
            {
            }
            column(Weight; Weight)
            {
            }
        }
    }
    requestpage
    {
        layout
        {
            area(content)
            {
                group(GroupName)
                {
                }
            }
        }
        actions
        {
            area(processing)
            {
            }
        }
    }
}
