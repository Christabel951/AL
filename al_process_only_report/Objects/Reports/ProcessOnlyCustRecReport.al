report 50134 CustProcessingOnlyReport
{
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    Caption = 'Customer Processing-Only Report';
    AdditionalSearchTerms = 'Customer Processing-Only Report';
    ProcessingOnly = true;

    dataset
    {
        dataitem(Customer; Customer)
        {
            trigger OnPreDataItem()
            begin

            end;

            trigger OnAfterGetRecord()
            begin
                counter += 1;
            end;

            trigger OnPostDataItem()
            begin

            end;
        }
    }
    trigger OnInitReport()
    begin
        Clear(counter);
    end;

    trigger OnPreReport()
    begin

    end;

    trigger OnPostReport()
    begin
        Message('Records Processed: %1 for : %2', counter, Customer.GetFilters());

    end;
    // requestpage
    // {
    //     layout
    //     {
    //         area(Content)
    //         {
    //             group(GroupName)
    //             {
    //                 // field(Name; SourceExpression)
    //                 // {
    //                 //     ApplicationArea = All;

    //                 // }
    //             }
    //         }
    //     }

    //     actions
    //     {
    //         area(processing)
    //         {
    //             action(ActionName)
    //             {
    //                 ApplicationArea = All;

    //             }
    //         }
    //     }
    // }

    // rendering
    // {
    //     layout(LayoutName)
    //     {
    //         Type = RDLC;
    //         LayoutFile = 'mylayout.rdl';
    //     }
    // }

    var
        counter: Integer;
}