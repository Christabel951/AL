report 50133 "Customer Info"
{
    UsageCategory = ReportsAndAnalysis;
    Caption = 'Customer Info Report';
    ApplicationArea = All;
    RDLCLayout = 'objects/reports/CustomerInfo.rdl';

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
            column(Customer_Balance; "Balance (LCY)")
            {

            }
            dataitem(CustomerLedger; "Cust. Ledger Entry")
            {
                DataItemLinkReference = Customer;
                DataItemLink = "Customer No." = field("No.");
                DataItemTableView = sorting("Customer No.");

                column(CustomerLedgersCustomerNo; "Customer No.")
                {

                }
                column(CustomerLedgersAmount; "Amount (LCY)")
                {

                }
            }
            trigger OnPreDataItem()
            begin
                if HideBlockedCustomers then
                    Customer.SetRange(Blocked, Blocked::" ");
            end;
        }
    }

    requestpage
    {
        SaveValues = true;
        layout
        {
            area(Content)
            {
                group(Options)
                {
                    field(HideBlockedCustomers; HideBlockedCustomers)
                    {
                        ApplicationArea = All;
                        Caption = 'Hide Blocked Customers ?';

                    }
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
        HideBlockedCustomers: Boolean;
}