pageextension 50150 "SPLN Customer Card" extends "Customer Card"
{
    layout
    {
        addfirst(factboxes)
        {
            part(SPLNWebPage; "SPLN WebPage")
            {
                SubPageLink = "No." = field("No.");
                Caption = 'Industry Insights';
                ApplicationArea = All;
            }

        }

        // addafter(General)
        // {
        //     // group(AddInTest)
        //     // {
        //     //     Caption = 'Color AddIn';
        //     //     usercontrol(ExtAddIn; "SPLN Demo")
        //     //     {
        //     //         ApplicationArea = All;
        //     //     }
        //     // }
        // }


    }
}
