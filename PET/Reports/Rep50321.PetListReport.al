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
            column(Owner_Pet; Owner)
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
            dataitem("Company Information"; "Company Information")
            {

                column(PhoneNo2_CompanyInformation; "Phone No. 2")
                {
                }
                column(Picture_CompanyInformation; Picture)
                {
                }
                column(Address_CompanyInformation; Address)
                {
                }
                column(Name_CompanyInformation; Name)
                {
                }
                column(City_CompanyInformation; City)
                {
                }
                column(CountryRegionCode_CompanyInformation; "Country/Region Code")
                {
                }
                column(County_CompanyInformation; County)
                {
                }
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
