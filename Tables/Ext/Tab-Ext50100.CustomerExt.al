tableextension 50100 "Customer Ext" extends Customer
{
    fields
    {
        field(50100; "Student No"; Code[20])
        {
            DataClassification = ToBeClassified;
            TableRelation = "Student Master"."No.";
            trigger
            OnValidate()
            var
                Student: Record "Student Master";
            begin
                Student.Get("Student No");
                "Student Name" := Student.Name;
            end;
        }
        field(50101; "Student Name"; Text[150])
        {

        }
    }

}