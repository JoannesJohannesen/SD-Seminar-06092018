table 123456704 "CSD Seminar Comment Line"
{
    Caption = 'Seminar Comment Line';
    
    LookupPageId = "CSD Seminar Comment List";
    DrillDownPageId = "CSD Seminar Comment List";
    
    fields
    {
        field(10;"Table Name"; Option)
        {
            Caption = 'Table Name';
            OptionMembers ="Seminar", "Seminar Registration", "Posted Seminar Registration";
                        OptionCaption ='Seminar, Seminar Registration, Posted Seminar Registration';
        }
        field(20; "Document Line No."; Integer)
        {
            Caption = 'Document Line No."';
        }
        field(30;"No."; Code[20])
        {
            TableRelation = IF("Table Name" = const(Seminar)) "CSD Seminar";
        }
        field(40;"Line No."; Integer)
        {
            
        }
        field(50; "Date"; Date)
        {
            
        }
        field(60; "Code"; Code[10])
        {
            
        }
        field(70; "Comment"; Text[80])
        {
            
        }
    }

    keys
    {
        key(PK;"Table Name", "Document Line No.", "No.", "Line No.")
        {
            Clustered = true;
        }
    }
    
}