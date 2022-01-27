Feature: Create a customer

  Scenario Outline: Create a customer at guru 99 bank successfully

    Given Login into application to verify the scenario "<Scenario>"
    Then Click on "Create Customer" Button
    Then fill "Customer details" form

    Examples:
    |Scenario|
    |Add Customer|