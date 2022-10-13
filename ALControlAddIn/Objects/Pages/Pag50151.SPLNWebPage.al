page 50151 "SPLN WebPage"
{
    Caption = 'SPLN WebPage';
    PageType = CardPart;
    SourceTable = Customer;

    layout
    {
        area(content)
        {
            // group(General)
            // {
            // }
            usercontrol(ExternalControl; "SPLN Demo")
            {
                ApplicationArea = All;

            }
        }
    }
}