// Business logic related to Customer Management.
codeunit 50101 "Customer Mgmt"
{
    // Simple function to check if a customer is high priority.
    // This is the function we will test in our CI pipeline.
    procedure IsHighPriority(Cust: Record Customer): Boolean
    begin
        // Gold customers are considered high priority.
        exit(Cust."Customer Priority" = Cust."Customer Priority"::Gold);
    end;
}