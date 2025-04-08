tableextension 50104 "Table Item Extension" extends "Item"
{
    fields
    {
        field(1003; "Sabor"; Code[3])
        {
            Caption = 'Sabor producto';
            DataClassification = ToBeClassified;
            TableRelation = "Sabor";
        }
        field(1004; "Descripcion Sabor"; Text[100])
        {
            Caption = 'Descripcion Sabor';
            DataClassification = ToBeClassified;
            TableRelation = "Sabor";
            trigger OnValidate()
            var
                SaborRec: Record "Sabor";
            begin
                if "Sabor" <> '' then begin
                    if SaborRec.Get("Sabor") then
                        "Descripcion Sabor" := SaborRec." Descripcion Sabor";
                end;
            end;


        }
        field(1005; "Marca"; Code[20])
        {
            Caption = 'Marca Producto';
            DataClassification = ToBeClassified;
            TableRelation = "Marca";



        }
        field(1006; "Descripcion Marca"; Text[100])
        {
            Caption = 'Descripcion Marca';
            DataClassification = ToBeClassified;
            TableRelation = "Marca";
            Editable = false;
            trigger OnValidate()
            var
                MarcaRec: Record "Marca";
            begin
                if "Marca" <> '' then begin
                    if MarcaRec.Get("Marca") then
                        "Descripcion Marca" := MarcaRec."Descripcion Marca";
                end;
            end;

        }

        field(1007; "Nutriscore"; Enum "Nutriscore Enum")
        {
            DataClassification = ToBeClassified;
            Caption = 'Nutriscore';


        }
    }

    keys
    {
        key(Sabor; "Sabor")
        {

        }
        key(Marca; "Marca")
        {

        }
    }

    fieldgroups
    {
        // Add changes to field groups here
    }

    var
        myInt: Integer;
}