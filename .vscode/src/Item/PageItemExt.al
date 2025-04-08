pageextension 50104 "Item Page Extension" extends "Item Card"
{
    Caption = 'Ext item card';
    layout
    {
        addafter(VariantMandatoryDefaultNo)
        {
            field(Sabor; Rec.Sabor)
            {
                ApplicationArea = all;
                Caption = 'Sabor';
                Description = 'Su registro de la tabla sabor, tipo de sabor del poducto';
                ToolTip = 'Apunta a Sabor';
            }
            field("Descripcion Sabor"; Rec."Descripcion Sabor")
            {
                ApplicationArea = all;
                Description = 'Desc. sabor';
                ToolTip = 'Apunta a descripcion sabor';
                Caption = 'Descripcion sabor';
                Editable = false;

            }
            field(Marca; Rec.Marca)
            {
                ApplicationArea = all;
                Caption = 'Marca';
                Description = 'Su registro de la tabla marca, tipo de marca del poducto';
                ToolTip = 'Apunta a Marca';
            }
            field("Descripcion Marca"; Rec."Descripcion Marca")
            {
                ApplicationArea = all;
                Description = 'Desc. marca';
                ToolTip = 'Apunta a descripcion marca';
                Caption = 'Descripcion marca';
                Editable = false;
            }
            field(Nutriscore; Rec.Nutriscore)
            {
                ApplicationArea = all;
                Description = 'Nutriscore';
                ToolTip = 'Apunta a nutriscore';
                Caption = 'Nutriscore';
            }
        }
    }
    actions
    {
        addlast(Processing)
        {
            group(Navegabilidad)
            {
                Caption = 'Acciones Personalizadas';

                action("Datos del sabor")
                {
                    ApplicationArea = All;
                    Image = Navigate;
                    RunObject = page "Sabor Card";
                    RunPageLink = "Codigo" = field(Sabor);
                    RunPageMode = View;
                }
                action("Datos de la Marca")
                {
                    ApplicationArea = all;
                    Image = Navigate;
                    RunObject = page "Marca Card";
                    RunPageLink = "Codigo" = field(Marca);
                    RunPageMode = "View";
                }
            }
        }
    }


}