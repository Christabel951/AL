page 50323 "Frequent Customers"
{
    Caption = 'Frequent Customers';
    PageType = ListPart;
    SourceTable = "Frequent Customer";

    layout
    {
        area(content)
        {
            repeater(Control1)
            {
                // field("User ID"; Rec."User ID")
                // {
                //     ApplicationArea = All;
                //     ToolTip = 'Specifies the value of the User ID field.';
                // }
                field("Customer No."; Rec."Customer No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Customer No. field.';
                }
                field(Name; Rec.Name)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Name field.';
                }
                field("Phone No."; Rec."Phone No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Phone No. field.';
                }

                field("Balance (LCY)"; Rec."Balance (LCY)")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Balance (LCY) field.';
                }
            }
        }
    }
    actions
    {
        area(Processing)
        {
            action(OpenCustomerDetails)
            {
                ApplicationArea = All;
                RunObject = Page "Customer Card";
                RunPageLink = "No." = field("Customer No.");
                RunPageMode = View;
                RunPageView = sorting("No.");

            }
        }

    }
    trigger OnAfterGetRecord()
    begin
        SyncFieldWithCustomer();
    end;

    trigger OnNewRecord(BelowxRec: Boolean)
    begin
        Clear(CustomerRec);
    end;

    trigger OnOpenPage()
    var
        myInt: Integer;
    begin
        Rec.SetRange("User ID", UserId());
    end;

    var
        CustomerRec: Record Customer;

    local procedure SyncFieldWithCustomer()
    var
        FrequentCustomer: Record "Frequent Customer";
    begin
        Clear(CustomerRec);
        if CustomerRec.Get(Rec."Customer No.") then begin
            if (Rec.Name <> CustomerRec.Name) or
            (Rec."Phone No." <> CustomerRec."Phone No.") then begin
                Rec.Name := CustomerRec.Name;
                Rec."Phone No." := CustomerRec."Phone No.";
                if FrequentCustomer.Get(Rec."User ID", Rec."Customer No.") then
                    Rec.Modify();
            end;
        end;
    end;
}
