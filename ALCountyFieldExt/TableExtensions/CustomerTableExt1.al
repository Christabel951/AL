tableextension 50110 CustomerTableExt extends Customer
{
    fields
    {
        // Add changes to table fields here
        field(50110; "Customer County"; Enum Counties)
        {
            DataClassification = ToBeClassified;
        }
    }

}