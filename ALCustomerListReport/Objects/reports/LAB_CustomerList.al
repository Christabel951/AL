report 50132 LAB_CustomerList
{
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    Caption = 'LAB_CustomerList';
    RDLCLayout = 'layouts/LAB_CustomerList.rdl';
    WordLayout = 'layouts/LAB_CustomerList.docx';
    //DefaultLayout = Word;
    //Prevmode:: specify how the report opens when you preview it
    //Normal:: Report opens in default mode where you can navigate between entries
    //PrintLayout:: Report opens in print layout mode shows how the report will print on paper
    PreviewMode = Normal;


    dataset
    {
        dataitem(Customer; Customer)
        {
            DataItemTableView = sorting(Name);
            column(CustomerNo; "No.")
            {
                IncludeCaption = true;
            }
            column(CustomerName; Name)
            {
                IncludeCaption = true;
            }
            column(CustomerBalance; "Balance (LCY)")
            {
                IncludeCaption = true;
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
        myInt: Integer;
}