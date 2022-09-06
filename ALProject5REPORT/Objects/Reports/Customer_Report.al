report 50130 CustomerOrders
{   //Report object is listed as Reports and Analysis in the Report and Analysis category
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    WordLayout = 'CustOverviewWORD.docx';
    DefaultLayout = Word;
    dataset
    {
        dataitem(Customer; Customer)
        {
            column(CustomerNumber; "No.")
            {

            }
            column(CustomerName; Name)
            {

            }
            column(City; City)
            {

            }
            column(Balance__LCY_; "Balance (LCY)")
            {

            }
            column(myCompanyName; myCompany.Name)
            {

            }
            column(myCompanyLogo; myCompany.Picture)
            {

            }
        }
    }

    requestpage
    {
        layout
        {
            area(Content)
            {
                group(GroupName)
                {
                    // field(Name; SourceExpression)
                    // {
                    //     ApplicationArea = All;

                    // }
                }
            }
        }

        actions
        {
            area(processing)
            {
                action(ActionName)
                {
                    ApplicationArea = All;

                }
            }
        }
    }

    // rendering
    // {
    //     layout(LayoutName)
    //     {
    //         Type = RDLC;
    //         LayoutFile = 'mylayout.rdl';
    //     }
    // }

    var
        myCompany: Record "Company Information";
}