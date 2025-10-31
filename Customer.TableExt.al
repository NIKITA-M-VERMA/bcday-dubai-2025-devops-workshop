// Extends the Customer table to add a new Priority field.
tableextension 50100 CustomerExt extends Customer
{
    fields
    {
        field(50100; "Customer Priority"; Enum "Customer Priority")
        {
            DataClassification = CustomerContent;
            Caption = 'Customer Priority';
            ToolTip = 'Specifies the priority level of the customer (Standard, Silver, Gold).';
        }
    }
}

// Enum to define the priority options
enum 50100 "Customer Priority"
{
    Extensible = true;

    value(0; "Standard") { Caption = 'Standard'; }
    value(1; "Silver") { Caption = 'Silver'; }
    value(2; "Gold") { Caption = 'Gold'; }
}