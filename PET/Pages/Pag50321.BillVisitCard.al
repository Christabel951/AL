page 50321 "Bill Visit Card"
{
    Caption = 'Visit Log';
    PageType = Card;
    SourceTable = "Visit Log";

    layout
    {
        area(content)
        {
            group(General)
            {
                Editable = false;

                field(Code; Rec."Visit Log ID")
                {
                    Caption = 'Visit Log Code';
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the ID field.';
                }
                field(Pet; Rec."Pet Code")
                {
                    Caption = 'Pet Code';
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Pet field.';
                }
                field(PetType; Rec.PetType)
                {
                    Caption = 'Pet Type';
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the PetType field.';
                }



                field(PetName; Rec."Pet Name")
                {
                    ApplicationArea = All;
                    Caption = 'Pet Name';
                    ToolTip = 'Specifies the value of the Name field.';
                }
                field(GroomingType; Rec.GroomingType)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the GroomingType field.';
                }
                field(GroomTypeDesc; Rec.GroomTypeDesc)
                {
                    ApplicationArea = All;
                    Caption = 'Grooming Description';
                    ToolTip = 'Specifies the value of the GroomTypeDesc field.';
                }
                field(Owner; Rec."Pet Owner No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Owner field.';
                }
                field("Pet Owner Name"; Rec."Pet Owner Name")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Pet Owner Name field.';
                }

                field(CreatedAt; Rec.SystemCreatedAt)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the SystemCreatedAt field.';
                }

                field(VisitDate; Rec.VisitDate)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the VisitDate field.';
                }
            }
            part("Visit Log Lines"; "Visit Log Lines")
            {
                Editable = false;
                ApplicationArea = All;
                SubPageLink = "Document No." = field("Visit Log ID");
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action("Bill")
            {
                Visible = Rec.OrderCreated = false;
                ApplicationArea = All;
                Image = NewOrder;
                Promoted = true;
                PromotedCategory = Process;
                PromotedIsBig = true;
                Caption = 'Bill';

                trigger OnAction()
                var
                    SalesOrders: Text;
                    Text001: label 'Are you sure you want to Bill for %1?';
                    Text002: label 'Sales Order(s) %1 successfully Created.';
                    SalesOrderCard: Page "Sales Order";
                    VisitManagement: Codeunit VisitManagement;
                begin
                    if Confirm(Text001, false, Rec."Visit Log ID") then begin
                        SalesOrders := VisitManagement.CreatePurchaseOrderFromVisit(Rec."Visit Log ID");
                        Message(Text002, SalesOrders);
                    end;
                end;
            }
            group(Reports)
            {
                action("Purchase Requisition")
                {
                    ApplicationArea = All;
                    Image = Print;
                    Promoted = true;
                    PromotedCategory = Report;
                    PromotedIsBig = true;
                    Caption = 'Visit Bill Report';
                    trigger OnAction()
                    var
                        VisitLog: Record "Visit Log";
                    begin
                        VisitLog.Reset();

                        VisitLog.SetRange("Visit Log ID", Rec."Visit Log ID");
                        Report.Run(Report::"Bill Reports", true, true, VisitLog);

                    end;
                }
            }

        }



    }
}




