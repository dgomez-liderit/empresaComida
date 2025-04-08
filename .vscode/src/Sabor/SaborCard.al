page 50115 "Sabor Card"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "Sabor";

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field(Name; Rec.Codigo)
                {
                    ApplicationArea = All;
                }
                field(" Descripcion Sabor"; Rec." Descripcion Sabor")
                {
                    ApplicationArea = All;
                }
                field("Productos Sabor"; Rec."Productos Sabor")
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

                trigger OnAction()
                begin

                end;
            }
        }
    }
}