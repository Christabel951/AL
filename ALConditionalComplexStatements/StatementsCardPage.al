page 50112 "Statements Card"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Documents;  //lists page as document under Reports and Analysis Category
    Caption = 'Statements Card';

    layout
    {
        area(Content)
        {
            group(Input)
            {
                Caption = 'Input';
                field("Difficulty Level"; Difficulty)
                {
                    ApplicationArea = All;
                    Caption = 'Degree of Dificulty';

                    trigger OnValidate()
                    begin
                        GetSuggestion();
                    end;
                }
            }
            group(Output)
            {
                Caption = 'Output';
                field(Suggestion; Suggestion)
                {
                    ApplicationArea = All;
                    Caption = 'Your Suggestion';
                    Editable = false;
                }
                field(Level; Level)
                {
                    ApplicationArea = All;
                    Caption = 'Level';
                    Editable = false;
                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(ActionName)
            {
                ApplicationArea = All;

                trigger OnAction()
                begin

                end;
            }
        }
    }

    var
        Level: Text[30];
        Suggestion: Text[80];
        Difficulty: Integer;

    procedure GetSuggestion()
    begin
        Level := '';
        Suggestion := '';

        case Difficulty of
            1 .. 5:
                begin
                    Level := 'Beginner';
                    Suggestion := 'Take e-Learning or remote training';
                end;
            6 .. 8:
                begin
                    Level := 'Intermediate';
                    Suggestion := 'Attend Instructor-Led;'
                end;
            9 .. 10:
                begin
                    Level := 'Advanced';
                    Suggestion := 'Attend instructor -Led and self study';
                end;
        end;
    end;
}
