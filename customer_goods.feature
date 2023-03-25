Feature: Buy and Search goods
  Customer searching or buying goods
  Background:
    Given Customer is logged in

  #1
  Scenario: Clicking on item on featured page
    Given a web browser is on homepage
    When customer clicks on "Featured" item
    Then customer is took to items page

  #2
  Scenario: Putting item into shopping cart
    Given a web browser is on items page
    When customer clicks on "Add to Cart"
    Then item is put to shopping cart
    And message is shown containing "Success: You have added ... to your shopping cart!"

  #3
  Scenario: Searching for item
    Given a web browser is on homepage
    When customer types in keyword into the "Search" bar
    And clicks on search button
    Then is shown items containing searched keyword



  #4
  Scenario: Putting item into shopping cart in catalog
    Given a web browser is on "Mac" page
    When customer clicks on shopping cart icon on "iMac"
    Then "iMac" is put into shopping cart
    And and message is shown containing "Success: You have added iMac to your shopping cart!"


  #5
  Scenario: Get to shopping cart through "Shopping Cart" button
    Given a web browser is on homepage
    When customer clicks on "Shopping Cart" button
    Then Shopping Cart page is shown

  #6
  Scenario: Checkout from shopping cart
    Given a web browser is on "Shopping Cart" page
    When customer clicks on "Checkout" button
    Then Checkout page is presented

  #7
  Scenario: Filling Shipping Address - Required fields not filled in checkout
    Given a web browser is on "checkout" page
    When <required> fields are not filled
    And customer clicks "Continue" button
    Then Error messages are shown nexto <required> fields
    | required    |
    | First Name  |
    | Last Name   |
    | Adress 1    |
    | City        |
    | Country     |
    | Region/State|

  #8
  Scenario: Filling Shipping Address - Valid
    Given a web browser is on "checkout" page
    When <required> fields are filled
    And customer clicks "Continue" button
    Then Shipping Address is saved
    And customer is given option to enter new address or use given Shipping Address
    And message is shown containing "Success: You have changed shipping address!"

