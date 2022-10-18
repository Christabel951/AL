table 50103 "Visit Log"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Visit Log ID"; Code[20])
        {
            DataClassification = ToBeClassified;
            Editable = false;

        }
        field(2; "Pet Code"; Text[50])
        {
            DataClassification = ToBeClassified;
            TableRelation = Pet;

            trigger OnValidate()
            var
                PetRec: Record Pet;
                CustRec: Record Customer;
            begin
                if PetRec.Get("Pet Code") then begin
                    "Pet Name" := PetRec.PetName;
                    PetType := PetRec.PetType;
                    "Pet Owner No." := PetRec.OwnerNo;

                end;
                if CustRec.Get("Pet Owner No.") then begin
                    "Pet Owner Name" := CustRec.Name;
                end;


            end;
        }
        field(3; "Pet Name"; Text[50])
        {
            DataClassification = ToBeClassified;
            TableRelation = Pet;
            Editable = false;

        }
        field(4; PetType; Code[20])
        {
            DataClassification = ToBeClassified;
            TableRelation = "Pet Type";
            Editable = false;
        }
        field(5; VisitDate; Date)
        {
            DataClassification = ToBeClassified;
        }
        field(6; "Pet Owner No."; Code[20])
        {
            DataClassification = ToBeClassified;
            Editable = false;

        }

        field(11; "Pet Owner Name"; Text[50])
        {
            DataClassification = ToBeClassified;
            Editable = false;

        }
        field(7; GroomingType; Code[50])
        {
            DataClassification = ToBeClassified;
            TableRelation = "Grooming Types";
        }
        field(8; "No. Series"; Code[20])

        {
            DataClassification = ToBeClassified;
            TableRelation = "No. Series";

        }
        field(9; OrderCreated; Boolean)
        {
            DataClassification = ToBeClassified;
        }
        field(10; GroomTypeDesc; Text[250])
        {
            DataClassification = ToBeClassified;

        }
    }

    keys
    {
        key(Key1; "Visit Log ID")
        {
            Clustered = true;
        }
    }
    trigger OnInsert()
    var
        NoSeriesMgt: Codeunit NoSeriesManagement;
        Setup: Record Setup;
    begin
        if "Visit Log ID" = '' then begin
            Setup.Get();
            Setup.TestField("Visit Log No.s");
            NoSeriesMgt.InitSeries(Setup."Visit Log No.s", xRec."Visit Log ID", 0D, "Visit Log ID", "No. Series");
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