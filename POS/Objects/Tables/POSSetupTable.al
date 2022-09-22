table 50600 "POS Setup"
{
    Caption = 'POS Setup';

    fields
    {
        field(1; POSKEY; Code[10])
        {
            DataClassification = SystemMetadata;

        }
        field(2; "Cash Customer"; Code[20])
        {
            Caption = 'Cash Customer';
            TableRelation = Customer."No.";
        }
    }

}