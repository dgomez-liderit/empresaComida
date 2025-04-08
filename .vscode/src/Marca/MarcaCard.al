page 50116 "Marca Card"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "Marca";

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field(Codigo; Rec.Codigo)
                {
                    ApplicationArea = all;
                }
                field("Descripcion Marca"; Rec."Descripcion Marca")
                {
                    ApplicationArea = all;
                }
                field("Productos Marca"; Rec."Productos Marca")
                {
                    ApplicationArea = all;
                }
                field(Bloqueado; Rec.Bloqueado)
                {
                    ApplicationArea = all;
                }
                field("Fecha Bloqueo"; Rec."Fecha Bloqueo")
                {
                    ApplicationArea = all;
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