page 50101 "Reward Card"
{
    //Page will be of type 'Card' and will render as a card
    PageType = Card;

    ApplicationArea = All;

    //Page will be part of the 'Tasks' group of search results
    UsageCategory = Tasks;

    //The SourceTable will show data from the 'Reward' Table
    SourceTable = Reward;


    //Layout describes the visual parts of the page
    layout
    {
        area(Content)
        {
            group(Reward)
            {
                field("Reward ID"; Rec."Reward ID")
                {
                    //ApplicationArea - sets the application area that applies to the page field and action control
                    //All - control will always appear in the UI
                    ApplicationArea = All;

                }
                field(Description; Rec.Description)
                {
                    ApplicationArea = All;

                }
                field("Discount Percentage"; Rec."Discount Percentage")
                {
                    ApplicationArea = All;
                }
                field("Minimum Purchase"; Rec."Minimum Purchase")
                {
                    ApplicationArea = All;
                }
                field(Rate; Rec.Rate)
                {
                    ApplicationArea = All;

                }

            }
        }
    }

    //     actions
    //     {
    //         area(Processing)
    //         {
    //             action(ActionName)
    //             {
    //                 ApplicationArea = All;

    //                 trigger OnAction()
    //                 begin

    //                 end;
    //             }
    //         }
    //     }

    //     var
    //         myInt: Integer;
}