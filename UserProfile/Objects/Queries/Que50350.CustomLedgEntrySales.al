query 50350 "Custom Ledg. Entry Sales"
{
    Caption = 'Custom Ledg. Entry Sales';
    QueryType = Normal;

    elements
    {
        dataitem(CustLedgEntry; "Cust. Ledger Entry")
        {
            column(SumSalesLCY; "Sales (LCY)")
            {
                Method = Sum;
            }
            filter(DocumentTypeFilter; "Document Type")
            {

            }
            filter(PostingDateFilter; "Posting Date")
            {

            }

        }
    }

    trigger OnBeforeOpen()
    begin

    end;
}
