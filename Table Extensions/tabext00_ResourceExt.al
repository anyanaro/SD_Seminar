tableextension 50100 "CSD ResourceExt" extends Resource
// CSD1.00 - 2019-03-25 - A.  N  . Veloper
{
    fields
    {
        modify("Profit %")
{
    trigger OnAfterValidate()
    begin
     Rec.TestField("Unit Cost"); 
    end;
}
        modify(Type)
        {
            
        }
    }
    
    var
        myInt: Integer;
}