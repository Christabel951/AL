table 50205 "Visit lines"
{
    DataClassification = ToBeClassified;
    Caption = 'Visit Lines';

    fields
    {
        field(1; "Document No."; Code[20])
        {
            DataClassification = ToBeClassified;
            Editable = false;
            TableRelation = "Visit Log";
            Caption = 'Document No.';
        }
        field(2; "Line No."; Integer)
        {
            DataClassification = ToBeClassified;
            Editable = true;
            Caption = 'Line No.';
        }
        field(3; "Line Type"; Enum VisitLine)
        {
            DataClassification = ToBeClassified;
            Caption = 'Line Type';
        }
        field(4; "No."; Code[20])
        {
            DataClassification = ToBeClassified;
            TableRelation = if ("Line Type" = const("Inventory Item")) Item where(Blocked = const(false));
            Caption = 'No.';
            trigger OnValidate()
            var
                Items: Record Item;
                GLAccount: Record "G/L Account";
                LineType: Enum "Purchase Line Type";
            begin
                case "Line Type" of
                    "Line Type"::"Inventory Item":
                        begin
                            if Items.get("No.") then begin
                                Description := Items.Description;
                                "unit of Measure" := Items."Base Unit of Measure";
                            end;
                        end;

                end;


            end;


        }
        field(5; Description; Text[100])
        {
            DataClassification = ToBeClassified;
            Editable = false;
            Caption = 'Description';
        }
        field(6; "Description 2"; Text[150])
        {
            Caption = 'Description 2';
        }
        field(7; "Unit of Measure"; code[10])
        {
            Editable = false;
            Caption = 'Unit of Measure';
        }
        field(8; Quantity; Decimal)
        {
            DataClassification = ToBeClassified;
            Caption = 'Quantity';
            trigger OnValidate()
            begin
                Validate(Amount);
            end;
        }
        field(9; "Approx. Unit Cost"; Decimal)
        {
            DataClassification = ToBeClassified;
            Caption = 'Approx. Unit Cost';
            trigger OnValidate()
            begin
                Validate(Amount);
            end;
        }
        field(10; Amount; Decimal)
        {
            DataClassification = ToBeClassified;
            Editable = false;
            Caption = 'Amount';
            trigger OnValidate()
            begin
                Amount := "Approx. Unit Cost" * Quantity;
            end;
        }



        field(22; "Order Created"; Boolean)
        {
            DataClassification = ToBeClassified;
            Editable = false;
            Caption = 'Order Created';
        }





    }

    keys
    {
        key(Key1; "Document No.", "Line No.")
        {
            Clustered = true;
        }
    }

}