pageextension 123456700 "CSD ResourceCardExt" extends "Resource Card"
// CSD1.00 - 2018-09-05 - JSJ 
{
    layout
    {
        addlast(General)
        {
            field("CSD Resource Type"; "CSD Resource Type")

            {

            }
            field("CSD Quantity Per Day"; "CSD Quantity Per Day")

            {

            }
        }
        addafter("Personal Data")
        {
            group("CSD Room")
            {
                Caption = 'Room';
                Visible = false;
                field("CSD Maximum Participants"; "CSD Maximum Participants")
                {

                }
            }
        }

    }

    actions
    {

    }

    trigger OnAfterGetRecord();
    begin
        ShowMaxField := (Type = Type::Machine);
        Currpage.Update(false);

    end;


    var
        [InDataSet]
        ShowMaxField: Boolean;

}