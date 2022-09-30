page 50107 "Pet Grooming"
{
    Caption = 'Pet Grooming';
    PageType = RoleCenter;
    layout
    {
        area(rolecenter)
        {
            part(Control102; "Headline RC Project Manager")
            {
                ApplicationArea = All;
                Caption = 'Headline RC Project Manager';
            }
            part("User Tasks Activities"; "User Tasks Activities")
            {
                ApplicationArea = Suite;
                Caption = 'User Tasks Activities';
            }
            // part("Emails"; "Email Activities")
            // {
            //     ApplicationArea = Basic, Suite;
            //     Caption = 'Email Activities';
            // }
            // part(ApprovalsActivities; "Approvals Activities")
            // {
            //     ApplicationArea = Suite;
            //     Caption = 'Approvals Activities';
            // }
            // part("Power BI Report Spinner Part"; "Power BI Report Spinner Part")
            // {
            //     AccessByPermission = TableData "Power BI User Configuration" = I;
            //     ApplicationArea = Basic, Suite;
            //     Caption = 'Power BI Report Spinner Part';
            // }
        }
    }
    actions
    {
        area(Sections)
        {
            group(Pets)
            {
                Caption = 'Pets';
                action(Pet)
                {
                    ApplicationArea = Basic;
                    Caption = 'Pets';
                    Promoted = true;
                    PromotedCategory = Process;
                    RunObject = Page "PetList";
                }
                action(Owners)
                {
                    ApplicationArea = Basic;
                    Caption = ' Pet Owners';
                    Promoted = true;
                    PromotedCategory = Process;
                    RunObject = Page "Customer List";
                }

            }
            group(PetTypes)
            {
                Caption = 'Pet Type';
                action("Pet Types")
                {
                    ApplicationArea = Basic;
                    Caption = 'Pet Type';
                    Promoted = true;
                    PromotedCategory = Process;
                    RunObject = Page "Pet Type";
                }

            }
            group(Color)
            {
                Caption = 'Pet Colors';
                action("Pet Color")
                {
                    ApplicationArea = Basic;
                    Caption = 'Colors';
                    Promoted = true;
                    PromotedCategory = Process;
                    RunObject = Page "Color List";
                }

            }
            group(GroomingTypes)
            {
                Caption = 'Grooming Types';
                action(GroomingType)
                {
                    ApplicationArea = Basic;
                    Caption = 'Grooming Types';
                    Promoted = true;
                    PromotedCategory = Process;
                    RunObject = Page "Grooming Types";
                }
            }
            group(Reports)
            {
                Caption = 'Reports';
                action("Pets Report")
                {
                    ApplicationArea = Basic;
                    Caption = 'Pet List Report';
                    Promoted = true;
                    PromotedCategory = Process;
                    RunObject = Report "Pet List Report";
                }

            }
            group(VisitLog)
            {
                Caption = 'Visit Logs';
                action("Visit Log")
                {
                    ApplicationArea = Basic;
                    Caption = 'Visit Logs';
                    Promoted = true;
                    PromotedCategory = Process;
                    RunObject = Page "Visit Log List";
                }
                action("Billed Visits")
                {
                    ApplicationArea = Basic;
                    Caption = 'Billed Visits';
                    Promoted = true;
                    PromotedCategory = Process;
                    RunObject = Page "Bill Visits";
                }

            }
            group(Setup)
            {
                Caption = 'Setups';
                action(Setups)
                {
                    ApplicationArea = Basic;
                    Caption = 'Setups';
                    Promoted = true;
                    PromotedCategory = Process;
                    RunObject = Page "Setup ";
                }
            }
        }
    }
}
