pageextension 50101 "CSD ResourceListExt" extends "Resource List"
{
    layout
    {
        // Add changes to page layout here
        addafter(Type)
        {
            field("CSD Resource Type"; "CSD Resource Type") { }
            field("CSD Maximum Participants"; "CSD Maximum Participants") { }
        }

    }

    actions
    {
        // Add changes to page actions here
    }
    trigger OnOpenPage()

    begin
        ShowType := (GetFilter(Type) = '');
        ShowMaxField := (GetFilter(Type) = format(Type::Machine));
    end;

    var
        [InDataSet]
        ShowType: Boolean;
        [InDataSet]
        ShowMaxField: Boolean;

}