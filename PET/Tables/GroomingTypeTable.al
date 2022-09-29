table 50104 "Grooming Types"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; CODE; Code[50])
        {
            DataClassification = ToBeClassified;

        }
        field(2; Descritption; Text[100])
        {
            DataClassification = ToBeClassified;
        }
    }

    keys
    {
        key(Key1; CODE)
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