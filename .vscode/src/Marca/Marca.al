table 50100 "Marca"
{

    DataClassification = ToBeClassified;
    LookupPageId = "Marca List";
    Caption = 'Marca Table';


    fields
    {
        field(1; "Codigo"; Text[20])
        {
            DataClassification = ToBeClassified;
            //TableRelation="No. Series";

        }
        field(2; "Descripcion Marca"; Text[100])
        {
            DataClassification = ToBeClassified;

        }
        field(3; "Productos Marca"; Integer)
        {
            DataClassification = ToBeClassified;
            BlankZero = true;

        }
        field(4; "Bloqueado"; Boolean)
        {
            DataClassification = ToBeClassified;

        }
        field(5; "Fecha Bloqueo"; Date)
        {
            DataClassification = ToBeClassified;

        }
    }

    keys
    {
        key(PK; Codigo)
        {
            Clustered = true;
        }
        key(Bloqueado; "Bloqueado")
        {

        }
    }

    fieldgroups
    {
        // Add changes to field groups here
    }

    var
        myInt: Integer;

    trigger OnInsert()
    begin

    end;

    trigger OnModify()
    begin

    end;

    trigger OnDelete()
    begin

    end;

    trigger OnRename()
    begin

    end;

}