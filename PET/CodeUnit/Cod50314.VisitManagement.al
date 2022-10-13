codeunit 50314 VisitManagement
{
    var
        VisitLog: Record "Visit Log";
        VisitLine: Record "Visit lines";

    procedure CreatePurchaseOrderFromVisit(DocNo: Code[20]) SalesOrders: Text
    var
        SalesSetup: Record "Sales & Receivables Setup";
        SalesHeader: Record "Sales Header";
        SalesLine: Record "Sales Line";
        Item: Record Item;
        LineNo: Integer;
    begin
        if not VisitLog.Get(DocNo) then
            exit;

        SalesSetup.get;
        SalesSetup.TestField("Order Nos.");
        SalesSetup.TestField("Invoice Nos.");
        SalesSetup.TestField("Posted Invoice Nos.");
        SalesSetup.TestField("Posted Shipment Nos.");

        VisitLog.Reset();
        VisitLog.SetRange("Visit Log ID", DocNo);//
        VisitLog.SetRange(OrderCreated, false);
        if VisitLog.FindFirst() then
            repeat
                SalesHeader.Init();
                SalesHeader."No." := '';
                SalesHeader.Validate("Document Type", SalesHeader."Document Type"::Order);
                SalesHeader."Document Date" := Today;
                SalesHeader."Posting Date" := Today;
                SalesHeader."Due Date" := Today;
                SalesHeader."Posting Description" := VisitLog."Pet Name";//
                SalesHeader.VisitID := DocNo;
                SalesHeader.PetNo := VisitLog."Pet Code";
                SalesHeader.PetName := Visitlog."Pet Name";
                SalesHeader.GroomingType := Visitlog.GroomingType;
                SalesHeader.Validate("Sell-to Customer No.", VisitLog."Pet Owner No.");
                //Message(VisitLog.Owner);
                SalesHeader.Insert(true);

                VisitLine.reset();
                VisitLine.Setrange("Document No.", DocNo);
                if VisitLine.FindFirst() then
                    repeat
                        LineNo += 10000;
                        SalesLine.Init();
                        SalesLine."Document Type" := SalesHeader."Document Type";
                        SalesLine."Document No." := SalesHeader."No.";
                        SalesLine."Line No." := LineNo;
                        if Item.Get(VisitLine."No.") then begin
                            SalesLine."No." := VisitLine."No.";
                            SalesLine.Description := Item.Description;
                            SalesLine."Unit of Measure Code" := VisitLine."Unit of Measure";
                        end;
                        SalesLine.Type := SalesLine.Type::Item;
                        SalesLine."Sell-to Customer No." := VisitLog."Pet Owner No.";
                        //Message(SalesLine."No.");
                        SalesLine.Validate(Quantity, VisitLine.Quantity);
                        SalesLine.Validate("Unit Price", VisitLine."Approx. Unit Cost");
                        SalesLine.Insert(true);

                    //VisitLine.Modify();
                    until VisitLine.Next() = 0;
                VisitLine."Order Created" := true;
                VisitLine.Modify();
            until VisitLog.Next() = 0;

        VisitLog.OrderCreated := true;
        VisitLog.Modify();
    end;
}

