page 50604 "Point of sale"
{
    Caption = 'Point of Sale';
    ApplicationArea = All;
    UsageCategory = Tasks;
    SourceTable = "Sales Header";
    SourceTableView = where("Document Type" = const(Invoice));
    PageType = Document;
    InsertAllowed = false;

    layout
    {
        area(Content)
        {
            field(Status; PosStatus)
            {
                ApplicationArea = All;
                Caption = 'Status';
                Editable = false;

            }
            field("No."; Rec."No.")
            {
                ApplicationArea = All;
            }
            field("Sell-to Customer Name"; Rec."Sell-to Customer Name")
            {
                ApplicationArea = All;
            }
            part(Lines; "POS Lines")
            {
                SubPageLink = "Document Type" = field("Document Type"), "Document No." = field("No.");
                ApplicationArea = All;
            }
        }
        area(FactBoxes)
        {
            part(Total; "POS Receit Total")
            {
                SubPageLink = "Document Type" = field("Document Type"), "No." = field("No.");
                ApplicationArea = All;
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(NewReceiptAction)
            {
                Caption = 'New Receipt';
                ApplicationArea = All;
                Image = NewReceipt;
                Promoted = true;
                PromotedCategory = Process;
                PromotedIsBig = true;
                PromotedOnly = true;
                trigger OnAction()
                begin
                    NewReceipt();
                end;
            }
        }
    }
    trigger OnOpenPage()
    begin
        Rec.SetFilter(Rec."No.", '%1', '');
        PosStatus := PosStatus::"Awaiting new Receipt";

    end;

    procedure NewReceipt()
    var
        Setup: Record "POS Setup";
        SH: Record "Sales Header";
    begin
        Setup.Get();
        SH.Init();
        SH."Document Type" := SH."Document Type"::Invoice;
        SH.Insert(true);
        Rec.SetFilter("No.", SH."No.");
        Rec.FindFirst();
        Rec.Validate("Sell-to Customer No.", Setup."Cash Customer");
        Rec.Validate("Posting Date", Today());
        Rec.Modify(true);
        PosStatus := PosStatus::"Receipt Active";


    end;


    var
        PosStatus: Option "Awaiting new Receipt","Receipt Active";
}