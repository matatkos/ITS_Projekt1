Feature: Admin managing goods and its quantity
  Background: Logged in as admin on admin page

    #29
  Scenario: Getting to products page
    Given a web browser is on homepade
    When admin clicks on "Catalog"
    And clicks on "Products"
    Then a page "Products" presents

  #30
  Scenario: Adding new product - opening add section
    Given a web browser is on "products" page
    When admin clicks on "Add New" button
    Then "Add Product" section appears

  #31
  Scenario: Adding new product - Valid information
    Given "Add product" section is opened
    When admin fills <required> fields
    And clicks on "Save" button
    Then message appear saying "Success: You have modified products!"
    | required      |
    | keyword       |
    | Product name  |
    | Meta Tag Title|
    | Model         |

  #32
  Scenario: Delete product
    Given admin selected product
    When admin clicks on "Delete" buttom
    And clicks on "OK" button
    Then message appear saying "Success: You have modified products!"

   #33
  Scenario: Edit product
    Given a web browser is on "products" page
    When admin clicks on "Edit" button next to the products
    Then a page with editable information about product appears

