Feature: Registration and History of orders for admin
  Background:
    Given admin is logged in through admin page

  #15
  Scenario: Display all orders
    Given a web browser is on homepage
    When admin clicks on ORDERS's "view more" button
    Then "Orders" page is presented

  #16
  Scenario: Display order details
    Given a web browser is on "Oders" page
    When admin clicks on "View" button next to order
    Then a page with order details is shown

  #17
  Scenario: Getting to Add new order page
    Given a web browser is on "Orders" page
    When admin clicks on "Add New" button
    Then "Add Order" section appears



  #18
  Scenario: Adding new order
    Given "Add Oder" section is opened
    And <required> fields are filled
    When admin clicks on "Confirm" button
    Then new order is created

  #19
  Scenario: Deleting order
    Given a web browser is on "Oders" page
    When admin selects order he wants to delte
    And clicks on "Delete" button
    And clicks on "OK" button
    Then selected order will be deleted

  #20
  Scenario: Adding item to existing order
    Given a web browser is on page with details of order
    When admin clicks on "Add Item" button and selects Product he wants to add
    And clicks on "Save" button
    Then item will be added to the order

  #21
  Scenario: Deleting item from existing order
    Given a web browser is on page with details of order
    When admin clicks on "Remove" button
    Then item will be deleted from the order

  #22
  Scenario: Changing shipping name of customer
    Given a web browser is on page with details of order
    When admin clicks on button next to shipping address
    And changes "First Name"
    And clicks on "Save" button
    Then message appears saying: "Success: Shipping address has been set!"