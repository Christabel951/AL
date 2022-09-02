report 50128 "Customer Number Report"
{
    //the report object is listed as Reports and Analysis under the Reports and Analysis category
    UsageCategory = ReportsAndAnalysis;
    //the report object is visible in the BC UI
    ApplicationArea = All;

    //sets the filename and the RDLC layout used on the report. The filename is generated and saved on the report object folder
    RDLCLayout = 'Example_RDLCLayout.rdl';
    //Specifies the default built in report layout used
    DefaultLayout = RDLC;

    dataset
    {
        dataitem(Customer; Customer)
        {
            column(Customer_No; "No.")
            {

            }
            column(Customer_Name; Name)
            {

            }
            column(City; City)
            {

            }
            column(BalanceLCY; "Balance (LCY)")
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

        // actions
        // {
        //     area(processing)
        //     {
        //         action(ActionName)
        //         {
        //             ApplicationArea = All;

        //         }
        //     }
        // }
    }

    // rendering
    // {
    //     layout(LayoutName)
    //     {
    //         Type = RDLC;
    //         LayoutFile = 'mylayout.rdl';
    //     }
    // }

    // var
    //     myInt: Integer;
}