codeunit 50111 Validations
{
    trigger OnRun()
    begin
    end;

    local procedure CheckForPlusSign(TextToVerify: Text)       //StrPos: determine the first position/index of the passed parameter value i.e
                                                               //StrPos(The_string_being_examined, 'the_letter_being_checked_from_string)
    begin
        if StrPos(TextToVerify, '+') > 0 then begin
            Message('Address contains plus (+) sign !!');
        end;
    end;

    [EventSubscriber(ObjectType::Page, Page::"Customer Card", 'OnAfterValidateEvent', 'Address', false, false)]
    local procedure OnAfterValidateAddress(Rec: Record Customer; xRec: Record Customer)

    begin
        CheckForPlusSign(Rec.Address);
    end;


    var
        myInt: Integer;
}