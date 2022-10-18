table 50322 ActivitiesCues
{
    Caption = 'Activities Cues';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; PK; Code[10])
        {
        }

        field(2; "Ongoing Sales Invoices"; Integer)
        {
            CalcFormula = count("Sales Header" where("Document Type" = filter(Invoice)));
            FieldClass = FlowField;
        }
        field(3; "Ongoing Purchase Invoices"; Integer)
        {
            FieldClass = FlowField;
            CalcFormula = count("Purchase Header" where("Document Type" = filter(Invoice)));

        }
        field(4; "Sales This Month"; Decimal)
        {

        }
        field(5; "Top 10 Customer Sales YTD"; Decimal)
        {

        }
        field(6; "Ongoing Sales Quote"; Integer)
        {
            FieldClass = FlowField;
            CalcFormula = count("Sales Header" where("Document Type" = filter(Quote)));
        }
        // field(7; "Requests to Approve"; Integer)
        // {
        //     Caption = 'Requests to Approve';
        //     FieldClass = FlowField;
        //     CalcFormula = count("Approval Entry" where("Approver ID" = field("User ID Filter"), Status = filter(Open)));
        // }

    }
    keys
    {
        key(PK; PK)
        {
            Clustered = true;
        }
    }
}
