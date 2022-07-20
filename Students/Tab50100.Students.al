table 50100 Students
{
    Caption = 'Students';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; ID; Code[20])
        {
            Caption = 'Student ID';
            DataClassification = ToBeClassified;
        }
        field(2; "FirstName"; Text[20])
        {
            DataClassification = ToBeClassified;
        }
        field(3; LastName; Text[20])
        {
            DataClassification = ToBeClassified;
        }
        field(4; Marks; Integer)
        {
            DataClassification = ToBeClassified;
        }
    }
    keys
    {
        key(PK; ID)
        {
            Clustered = true;
        }
    }
}
