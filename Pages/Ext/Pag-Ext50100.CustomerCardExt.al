pageextension 50100 "Customer Card Ext" extends "Customer Card"
{
    layout
    {
        addafter(Blocked)
        {
            field("Student No"; "Student No")
            {
                ApplicationArea = All;
            }
            field("Student Name"; "Student Name")
            {
                ApplicationArea = All;
                Editable = false;
            }
        }
    }

}