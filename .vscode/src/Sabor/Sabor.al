table 50101 "Sabor"
{
    DataClassification = ToBeClassified;
    LookupPageId = "Sabor List";
    Caption = 'Sabor Table';
    fields
    {
        field(1; "Codigo"; Text[3])
        {
            DataClassification = ToBeClassified;

        }
        field(2; " Descripcion Sabor"; Text[100])
        {
            DataClassification = ToBeClassified;

        }
        field(3; "Productos Sabor"; Integer)
        {
            //FieldClass=FlowField;
            //CalcFormula
            DataClassification = ToBeClassified;
            BlankZero = true;

        }

    }

    keys
    {
        key(PK; Codigo)
        {
            Clustered = true;
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