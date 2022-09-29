tableextension 50315 SalesHeaderExt extends "Sales Header"
{
    fields
    {
        field(50100; VisitID; Code[20])
        {
            DataClassification = ToBeClassified;
        }
        field(50103; PetNo; Code[20])
        {
            DataClassification = ToBeClassified;
        }
        field(50101; PetName; Text[50])
        {
            DataClassification = ToBeClassified;
        }
        field(50102; GroomingType; Code[20])
        {
            DataClassification = ToBeClassified;
        }
    }
}
