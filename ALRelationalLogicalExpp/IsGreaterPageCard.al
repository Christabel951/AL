page 50111 "Expressions Card"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Documents;
    Caption = 'Expressions Card';


    layout
    {
        area(Content)
        {
            group(Input)
            {
                Caption = 'Input';
                field(Input1; valueA)
                {
                    ApplicationArea = All;
                    Caption = 'Value A';

                }
                field(Input2; valueB)
                {
                    ApplicationArea = All;
                    Caption = 'Value B';
                }
            }
            group(Output)
            {
                Caption = 'Output';
                field(Result; Result)
                {
                    ApplicationArea = All;
                    Editable = false;
                    Caption = 'The Result = ';
                }
                field(Result1; Result1)
                {
                    ApplicationArea = All;
                    Editable = false;
                    Caption = 'SumCode = ';
                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(Excecute)
            {
                ApplicationArea = All;
                Caption = 'Execute';
                //Image = ExecuteBatch;

                trigger OnAction()
                begin
                    Result := valueA > valueB;
                    Result1 := 'SURVEY';
                end;
            }
        }
    }

    var
        valueA: Integer;
        valueB: Integer;
        Result: Boolean;
        Result1: Code[6];
}