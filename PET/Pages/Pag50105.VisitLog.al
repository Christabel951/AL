page 50305 "Visit Log"
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
                    ShowMandatory = true;
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
                    ShowMandatory = true;
                    ToolTip = 'Specifies the value of the GroomingType field.';
                }
                field(GroomTypeDesc; Rec.GroomTypeDesc)
                {
                    ApplicationArea = All;
                    Caption = 'Grooming Description';
                    ShowMandatory = true;
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
                    ShowMandatory = true;
                    ToolTip = 'Specifies the value of the VisitDate field.';

                }
            }
            part("Visit Log Lines"; "Visit Log Lines")
            {
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
                    Text002: label 'Successfully Created Sales Order No';
                    SalesOrderCard: Page "Sales Order";
                    SalesHeader: Record "Sales Header";
                    VisitManagement: Codeunit VisitManagement;
                begin
                    Rec.TestField("Pet Code");
                    Rec.TestField(GroomingType);
                    Rec.TestField(GroomTypeDesc);
                    Rec.TestField(VisitDate);

                    if Confirm(Text001, false, Rec."Visit Log ID") then begin
                        SalesOrders := VisitManagement.CreatePurchaseOrderFromVisit(Rec."Visit Log ID");
                        SalesHeader.reset();
                        SalesHeader.SetRange(VisitID, Rec."Visit Log ID");
                        if SalesHeader.FindFirst() then begin
                            Message(Text002, SalesOrders);
                            Message(SalesHeader."No.");
                        end;
                    end;
                end;
            }
            group(Reports)
            {
                action("Visit Bill Report")
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



