page 50324 "My Headline"
{
    Caption = 'My Headline';
    PageType = HeadlinePart;

    layout
    {
        area(content)
        {
            group(General)
            {
                ShowCaption = false;
                field(Welcome; Welcome)
                {
                    ApplicationArea = All;

                }
                field(AwesomePart; BusinessCentralIsAwesome)
                {
                    ApplicationArea = All;
                    trigger OnDrillDown()
                    var
                        myInt: Integer;
                    begin
                        Hyperlink('https://go.microsoft.com/fwlink/?linkid=867580');
                    end;
                }

            }
        }
    }
    trigger OnOpenPage()
    begin
        Welcome := StrSubstNo(WelcomeLabel1, UserId())
    end;

    var
        WelcomeLabel1: Label 'Weclome %1';
        BusinessCentralIsAwesome: Label '<qualifier>Pet Grooming Basic</qualifier><payload>Pet Grooming Salon<emphasize> all Services available</emphasize> Come all!</payload>';
        Welcome: Text;

}
