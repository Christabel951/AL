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

                    // trigger OnValidate()
                    // begin
                    //     GetSuggestion();
                    // end;
                }
                field(ColorSprectrum; ColorSprectrum)
                {
                    Caption = 'Choose Color range [1 - 7]';
                    ApplicationArea = All;
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
                field(Color; Color)
                {
                    Caption = 'Your Color: ';
                    ApplicationArea = All;
                    Editable = false;
                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(AlternativeRun)
            {
                Caption = 'Process All';
                ApplicationArea = All;

                trigger OnAction()
                begin
                    GetSuggestion();
                    GetColor();

                end;
            }
        }
    }

    var
        Level: Text[30];
        Suggestion: Text[80];
        Difficulty: Integer;
        ColorSprectrum: Integer;
        Color: Text[50];

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
            else begin
                    Message('Value Invalid, Please choose Difficulty Levels 1 - 10: ');
                end;
        end;
    end;

    procedure GetColor()
    begin
        Color := '';
        case ColorSprectrum of
            1:
                begin
                    Color := 'Red';
                end;
            2:
                begin
                    Color := 'Orange';
                end;
            3:
                begin
                    Color := 'Yellow';
                end;
            4:
                begin
                    Color := 'Green';
                end;
            5:
                begin
                    Color := 'Blue';
                end;
            6:
                begin
                    Color := 'Indigo';
                end;
            7:
                begin
                    Color := 'Violet';
                end;
            else begin
                    Message('Invalid Range , Please enter Color Range of 1 - 7 :  ');
                end;

        end;
    end;
}
