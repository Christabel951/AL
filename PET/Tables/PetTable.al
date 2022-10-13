table 50100 Pet
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; PetNo; Code[20])
        {
            DataClassification = ToBeClassified;
            Editable = false;

        }
        field(2; PetName; Text[50])
        {
            DataClassification = ToBeClassified;
        }
        field(3; PetType; Code[20])
        {
            DataClassification = ToBeClassified;
            TableRelation = "Pet Type";
        }
        field(4; Description; Text[100])
        {
            DataClassification = ToBeClassified;
        }
        field(5; Color; Text[50])
        {
            DataClassification = ToBeClassified;
            TableRelation = Color;
            trigger OnValidate()
            var
                myColor: Record Color;

            begin
                If myColor.Get(Color) then begin
                    ColorName := myColor.ColorName;
                end;
            end;

        }
        field(13; ColorName; Text[50])
        {
            DataClassification = ToBeClassified;
        }
        field(6; Age; Text[50])
        {
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(7; OwnerNo; Code[20])
        {
            DataClassification = ToBeClassified;
            TableRelation = Customer;
            trigger OnValidate()
            var
                CustRec: Record Customer;
            begin
                if CustRec.Get(OwnerNo) then begin
                    Owner := CustRec.Name;
                end;

            end;
        }
        field(12; Owner; Text[50])
        {
            DataClassification = ToBeClassified;
        }
        field(8; "No. Series"; Code[20])

        {
            Caption = 'No. Series';
            DataClassification = ToBeClassified;
            TableRelation = "No. Series";

        }
        field(9; Height; Decimal)
        {
            DataClassification = ToBeClassified;
        }
        field(10; Weight; Decimal)
        {
            DataClassification = ToBeClassified;
        }
        field(11; Birthday; Date)
        {
            DataClassification = ToBeClassified;
            trigger OnValidate()
            var
                Agecod: Codeunit CalcPetAge;
            begin
                Age := Agecod.DetermineAge(Birthday, Today);
                // Message(Age);
            end;
        }
    }

    keys
    {
        key(PK; PetNo)
        {
            Clustered = true;
        }
    }

    var
        myInt: Integer;

    trigger OnInsert()
    var
        NoSeriesMgt: Codeunit NoSeriesManagement;
        Setup: Record Setup;
    begin
        if PetNo = '' then begin
            Setup.Get();
            Setup.TestField("Pet No.s");
            NoSeriesMgt.InitSeries(Setup."Pet No.s", xRec.PetNo, 0D, PetNo, "No. Series");
        end;
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