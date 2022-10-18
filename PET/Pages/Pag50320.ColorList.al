page 50320 "Color List"
{
    ApplicationArea = All;
    Caption = 'Color List';
    PageType = List;
    SourceTable = Color;
    UsageCategory = Lists;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field(ColorCode; Rec.ColorCode)
                {
                    Caption = 'Code';
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the ColorCode field.';
                }
                field(ColorName; Rec.ColorName)
                {
                    Caption = 'RGB Code';
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the ColorName field.';
                }
            }
        }
    }
}
