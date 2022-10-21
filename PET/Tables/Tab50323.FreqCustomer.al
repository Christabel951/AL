table 50323 "Frequent Customer"
{
    Caption = 'Frequent Customer(s)';

    fields
    {
        field(1; "User ID"; Code[50])
        {
            Caption = 'User ID';
            TableRelation = User."User Name";
        }
        field(2; "Customer No."; Code[20])
        {
            NotBlank = true;
            TableRelation = Customer;
            trigger OnValidate()
            begin
                SetCustomerFields();
            end;
        }
        field(3; Name; Text[100])
        {
            Editable = false;
            DataClassification = ToBeClassified;
        }
        field(4; "Phone No."; Text[30])
        {
            Editable = false;
            DataClassification = ToBeClassified;
        }
        field(5; "Balance (LCY)"; Decimal)
        {
            Editable = false;
            CalcFormula = Sum("Detailed Cust. Ledg. Entry"."Amount (LCY)" where("Customer No." = field("Customer No.")));
            FieldClass = FlowField;
        }
    }
    keys
    {
        key(Key1; "User ID", "Customer No.")
        {
            Clustered = true;
        }
    }
    procedure SetCustomerFields()
    var
        Customer: Record Customer;
    begin
        if Customer.Get("Customer No.") then begin
            Name := Customer.Name;
            "Phone No." := Customer."Phone No.";
        end;
    end;
}
