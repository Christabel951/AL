pageextension 50100 "Customer Card Ext" extends "Customer Card"
{
    layout
    {
        addafter("CustSalesLCY - CustProfit - AdjmtCostLCY")
        {
            field("Customer Category"; "Customer Category")
            {
                ApplicationArea = All;

            }
        }
    }
}
