pageextension 50100 CustomerPageExt extends "Customer Card"
{
    layout
    {
        // Add changes to page layout here
        addafter(City)
        {
            field("Customer County"; Rec."Customer County")
            {

            }
        }
    }

}