table 50119 "Customer Overview"
{
    //DataClassification: specifies the classification to be applied on the data contained in the table
    //CustomerContent: Content directly provided or created by admins and users. Also the default value of property

    DataClassification = CustomerContent;
    Caption = 'Customer Overview';

    fields
    {
        field(1; "Entry No."; Integer)
        {
            DataClassification = CustomerContent;
            Caption = 'Entry No.';
        }
        field(2; "Customer No."; Code[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'Customer No.';
        }
        field(3; "Customer Name"; Text[50])
        {
            DataClassification = CustomerContent;
            Caption = 'Customer Name';
        }
        field(4; "Source Code"; Code[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'Source Code';
        }
        field(5; Amount; Decimal)
        {
            DataClassification = CustomerContent;
            Caption = 'Amount';

        }
        field(6; LastRunDate; DateTime)
        {
            DataClassification = ToBeClassified;
            Caption = 'LastRunDate';
        }
    }

    keys
    {
        key(Key1; "Entry No.")
        {
            //Clustered = true: Attribute cannot be used in table ext
            //Determines the physical order in which records are sored in the table
            //There can only be one clustered key (Key used to order/organize records in a table) which does not have to necessarily be the PK
            //Improves retrieval speed of records
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