page 50102 "Reward List"
{
    //This page will be of type List
    PageType = List;

    ApplicationArea = All;

    //The page will be part of the 'Lists' group of search results
    UsageCategory = Lists;

    //Data from this page is inferenced from 'Reward' Table
    SourceTable = Reward;

    //The 'CardPageId' is set to the Reward Card prev created
    //This allows users to open records from the list in the 'Reward Card' page

    CardPageId = "Reward Card";

    layout
    {
        area(Content)
        {
            repeater(Rewards)
            {
                field("Reward ID"; Rec."Reward ID")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the level of reward the customer has as at this point';

                }
                field(Description; Rec.Description)
                {
                    ApplicationArea = All;

                }
                field("Discount Percentage"; Rec."Discount Percentage")
                {
                    ApplicationArea = All;

                }
            }
        }
        area(Factboxes)
        {

        }
    }

    actions
    {
        area(Processing)
        {
            action(ActionName)
            {
                ApplicationArea = All;

                trigger OnAction();
                begin

                end;
            }
        }
    }
}