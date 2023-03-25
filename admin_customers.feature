Feature: Admin managing customers info

  Background:
    Given logged in as admin

    #23
  Scenario: Displaying info of customer
    Given a web browser is on "Customers" page
    When admin clicks on "Edit" button next to customer
    Then information about customer are shown


    #24
  Scenario: Editting information about customer
    Given a web browser is on page with "General" information about customer
    When admin changes "First Name" of customer
    And clicks on "Save" button
    Then message appears saying "Success: You have modified customers!"


    #25
  Scenario: Adding address to the customer
    Given admin opened section with Address
    When Admin fills information about Address
    And clicks on "Save" button
    Then message appears saying "Success: You have modified customers!"


    #26
  Scenario: Adding new Customer - clicking on button
    Given a web browser is on "Customers" page
    When admin clicks on "Add new" button
    Then "Add Customer" section will appear

    #27
  Scenario: Adding new Customer - filling out customer detail and saving
    Given "Add Customer" section is opened
    When admin fills out <required> fields
    And clicks "Save" button
    Then message appears saying "Success: You have modified customers!"
    | required  |
    | First Name|
    | Last Name |
    | E-Mail    |
    | Password  |
    | Confirm   |

  #28
  Scenario: Deleting Customer
    Given a web browser is on "Customers" page
    When admin ticks box next to customer
    And admin clicks "Remove" button
    And admin clicks "OK" button
    Then message appears saying "Success: You have modified customers!"