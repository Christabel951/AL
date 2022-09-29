table 50319 Color
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; ColorCode; Code[20])
        {
            DataClassification = ToBeClassified;

        }
        field(2; ColorName; Text[50])
        {
            DataClassification = ToBeClassified;
        }
    }

    keys
    {
        key(Key1; ColorCode)
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