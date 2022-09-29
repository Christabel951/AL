report 50318 "Bill Reports"
{
    ApplicationArea = All;
    Caption = 'Bill Reports';
    UsageCategory = ReportsAndAnalysis;
    DefaultLayout = RDLC;
    RDLCLayout = './Reports/Rep50318BillReports.rdl';
    dataset
    {
        dataitem(VisitLog; "Visit Log")
        {
            column(ID_VisitLog; "Visit Log ID")
            {
            }
            column(GroomingType_VisitLog; GroomingType)
            {
            }
            column(Name_VisitLog; "Pet Name")
            {
            }
            column(PetType_VisitLog; PetType)
            {
            }
            column(Pet_VisitLog; "Pet Code")
            {
            }
            column(Owner_VisitLog; "Pet Owner No.")
            {
            }
            column(PetOwnerName_VisitLog; "Pet Owner Name")
            {
            }
            dataitem("Visit lines"; "Visit lines")
            {
                DataItemLink = "Document No." = field("Visit Log ID");
                column(No_Visitlines; "No.")
                {
                }
                column(Description_Visitlines; Description)
                {
                }
                column(Quantity_Visitlines; Quantity)
                {
                }
                column(ApproxUnitCost_Visitlines; "Approx. Unit Cost")
                {
                }
                column(Amount_Visitlines; Amount)
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
