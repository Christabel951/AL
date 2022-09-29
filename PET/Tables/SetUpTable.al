table 50309 Setup
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; PK; Code[10])
        {
            DataClassification = ToBeClassified;

        }
        field(2; "Pet No.s"; Code[10])
        {
            DataClassification = ToBeClassified;
            TableRelation = "No. Series".Code;
        }
        field(3; "Visit Log No.s"; Code[10])
        {
            DataClassification = ToBeClassified;
            TableRelation = "No. Series".Code;
        }


    }

    keys
    {
        key(PK; PK)
        {
            Clustered = true;
        }
    }

    var
        myInt: Integer;

    trigger OnInsert()
    begin

    end;

    trigger OnModify()
    begin

    end;

    trigger OnDelete()
    begin

    end;

    trigger OnRename()
    begin

    end;

}