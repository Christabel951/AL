tableextension 50100 "Customer Table Ext" extends Customer
{
    fields
    {
        field(50100; "Customer Category"; Text[20])
        {
            Caption = 'Customer Category';
            DataClassification = ToBeClassified;
        }
    }
}
