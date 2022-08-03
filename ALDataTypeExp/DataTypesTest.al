page 50114 "Test DataType Card"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Documents; //This object will be listed under documents in the research and analysis category
    Caption = 'Data Types Test Page';

    layout
    {
        area(Content)
        {
            group(GroupName)
            {

            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(Execute)
            {
                Caption = 'Run Program';
                ApplicationArea = All;

                trigger OnAction()
                begin
                    Message('The value of %1 is %2', 'YesOrNo', YesOrNo); //Display values in a message box
                    Message('The value of %1 is %2', 'Amount', Amount);
                    Message('The value of %1 is %2', 'When Was It', "When Was It");
                    Message('The value of %1 is %2', 'What Time', "What Time");
                end;
            }
            action(ExecuteRemainder)
            {
                Caption = 'Run The Rest';
                ApplicationArea = All;
                trigger OnAction()
                begin
                    Message('The value of %1 is %2', 'Description', Description);
                    Message('The value of %1 is %2', 'Code Number', "Code Number");
                    Message('The value of %1 is %2', 'Ch', Ch);
                    Message('The value of %1 is %2', 'Color', Color);
                end;
            }
        }
    }

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
}