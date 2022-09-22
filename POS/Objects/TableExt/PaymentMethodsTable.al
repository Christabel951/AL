tableextension 50600 "Payment Method" extends "Payment Method"
{
    fields
    {
        field(50600; "POS Payment"; Boolean)
        {
            Caption = 'POS Payment';
            DataClassification = SystemMetadata;
        }
    }
    keys
    {
        key(POS; "POS Payment")
        {

        }
    }

}