table 50100 Reward
{
    DataClassification = ToBeClassified;

    fields
    {
        //Reward ID
        field(1; "Reward ID"; Code[30])
        {
            DataClassification = ToBeClassified;

        }
        //Reward Description
        field(2; "Description"; Text[250])
        {
            //Property - field cannot be left empty
            NotBlank = true;

        }
        //Discount Percentage
        field(3; "Discount Percentage"; Decimal)
        {
            //Min value exp. in field
            MinValue = 0;

            //Max value exp. in fied
            MaxValue = 100;

            //Decimal Places exp.
            DecimalPlaces = 2;

        }
        field(4; "Minimum Purchase"; Decimal)
        {
            MinValue = 0;
            DecimalPlaces = 2;
        }
        field(5; Rate; Integer)
        {
            MaxValue = 10;
            MinValue = 1;
        }
    }

    keys
    {
        key(PK; "Reward ID")
        {
            Clustered = true;
        }
    }

    // var
    //     myInt: Integer;

    // trigger OnInsert()
    // begin

    // end;

    // trigger OnModify()
    // begin

    // end;

    // trigger OnDelete()
    // begin

    // end;

    // trigger OnRename()
    // begin

    // end;

}