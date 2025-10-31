// Automated test for the Customer Mgmt codeunit.
codeunit 50102 "Customer Mgmt Test"
{
    Subtype = Test;

    // Test 1: Verify a Gold customer IS high priority.
    [Test]
    procedure Test_IsHighPriority_GoldCustomer()
    var
        Customer: Record Customer;
        CustomerMgmt: Codeunit "Customer Mgmt";
    begin
        // [ARRANGE] Setup the test data
        Customer.Init();
        Customer."Customer Priority" := Customer."Customer Priority"::Gold;

        // [ACT] Run the function

        // [ASSERT] Verify the result is correct
        Assert.IsTrue(CustomerMgmt.IsHighPriority(Customer), 'A Gold customer should return TRUE for IsHighPriority.');
    end;

    // Test 2: Verify a Standard customer is NOT high priority.
    [Test]
    procedure Test_IsHighPriority_StandardCustomer()
    var
        Customer: Record Customer;
        CustomerMgmt: Codeunit "Customer Mgmt";
    begin
        // [ARRANGE]
        Customer.Init();
        Customer."Customer Priority" := Customer."Customer Priority"::Standard;

        // [ACT]

        // [ASSERT]
        Assert.IsFalse(CustomerMgmt.IsHighPriority(Customer), 'A Standard customer should return FALSE for IsHighPriority.');
    end;
}