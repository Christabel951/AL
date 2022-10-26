table 50350 "Sales Invoice Cue"
{
    Caption = 'Sales Invoice Cue';
    DataClassification = CustomerContent;

    fields
    {
        field(1; "Primary Key"; Code[10])
        {
            Caption = 'Primary Key';
            DataClassification = CustomerContent;
        }
        field(2; "Sales Invoice - Open"; Integer)
        {
            Caption = 'Sales Invoice - Open';
            FieldClass = FlowField;
            CalcFormula = count("Sales Header" where("Document Type" = const(Invoice), Status = const(Open)));
        }
        field(3; "Sales Invoice - Released"; Integer)
        {
            Caption = 'Sales Invoice - Open';
            FieldClass = FlowField;
            CalcFormula = count("Sales Header" where("Document Type" = const(Invoice), Status = const(Released)));

        }
        field(4; "Sales This Month"; Decimal)
        {
            Caption = 'Sales This Month';
            DataClassification = CustomerContent;
        }


    }
    keys
    {
        key(PK; "Primary Key")
        {
            Clustered = true;
        }
    }
}
