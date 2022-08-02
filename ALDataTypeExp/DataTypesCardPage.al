page 50110 "Data Types Card"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Documents; //page is listed as Documents Under Reports & Analysis Category
    Caption = 'Data Types Card'; //string used to identify this object in UI


    var
        LoopNo: Integer;
        YesOrNo: Boolean;  //False
        Amount: Decimal; //0
        "When Was It": Date; //empty string
        "What Time": Time; //empty string
        Description: Text[30];  //empty string
        "Code Number": Code[10];  //empty string
        Ch: Char;   //some square symbol
        Color: Option Red,Orange,Yellow,Green,Blue,Violet;  // Red

    trigger OnOpenPage()
    begin
        Message('The value of %1 is %2', 'YesOrNo', YesOrNo); //Display values in a message box
        Message('The value of %1 is %2', 'Amount', Amount);
        Message('The value of %1 is %2', 'When Was It', "When Was It");
        Message('The value of %1 is %2', 'What Time', "What Time");
        Message('The value of %1 is %2', 'Description', Description);
        Message('The value of %1 is %2', 'Code Number', "Code Number");
        Message('The value of %1 is %2', 'Ch', Ch);
        Message('The value of %1 is %2', 'Color', Color);

    end;

}