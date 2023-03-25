Feature: Registration and History of orders for customer
  Background:
    Given customer is logged in

  #9
  Scenario: Confirming order
    Given Shopping cart is not empty
    And a web browser is on checkout page
    And shipping adress is chosen
    When customer clicks on confirm order
    Then message is shown "Your order has been placed!"
    And order is saved

  #10
  Scenario: Order history
    Given customer clicked on "My Account" button
    When customer clicks on "Order History" button
    Then "Order History" page is presented

  #11
  Scenario: Order details
    Given a web browser is on "Order History" page
    When customer clicks on "View" button next to order
    Then a page with order details is presented

  #12
  Scenario: Return Order Page
    Given a web browser is on details page of order
    When customer clicks on "Return" button
    Then "Product Returns" page is presented

  #13
  Scenario: Product return - required fields not filled
    Given a web browser is on "Product Returns" page
    And <required> fields are not filled
    When customer clicks on "Submit" button
    Then Error messages are raised next to <required> fields and boxes
    | required          |
    | First Name        |
    | Last Name         |
    | E-Mail            |
    | Telephone         |
    | Order ID          |
    | Product name      |
    | Product Code      |
    | Reason for Return |
    | Product is opened |

  #14
  Scenario: Product return - valid
    Given a web browser is on "Product Return" page
    And required fields are filled
    When customer clicks on "Submit" button
    Then customer is presented new page "Product Return"
    And Return Request is successfully submitted