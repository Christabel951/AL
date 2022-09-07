pageextension 50131 CustList_Report_Page extends "Customer List"
{
    layout
    {

    }
    trigger OnOpenPage()
    begin
        report.Run(Report::LAB_CustomerList);
    end;
}