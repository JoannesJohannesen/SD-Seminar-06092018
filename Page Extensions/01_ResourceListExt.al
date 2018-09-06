pageextension 123456701 "CSD ResourceListExt" extends "Resource List"
// CSD1.00 - 2018-09-05 - JSJ
{
    layout
    {

        modify(Type)
        {
            Visible = Showtype;
        }
        addafter(Type)
        {
            field("CSD Resource Type"; "CSD Resource Type")
            {
            }
            field("CSD Maximum Participants"; "CSD Maximum Participants")
            {
                Visible = ShowMaxField;
            }
        }
    }

    trigger OnOpenPage();

    begin
        FilterGroup(3);
        Showtype := (GetFilter(Type) = '');
        ShowMaxField := (GetFilter(Type) =
                        format(Type::Machine));
        FilterGroup(0);
    end;

    var
        [InDataSet]
        ShowMaxField: Boolean;
        [InDataSet]
        Showtype: Boolean;
}