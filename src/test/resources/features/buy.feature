#Thanwarat Sirichotevanich 6410451091

Feature: Buy products
    As a customer
    I want to buy products

Background:
    Given the store is ready to service customers
    And a product "Bread" with price 20.50 and stock of 5 exists
    And a product "Jam" with price 80.00 and stock of 10 exists
    And a product "Chocolate" with price 50.00 and stock of 20 exists

Scenario: Buy one product
    When I buy "Bread" with quantity 2
    Then total should be 41.00
    Then The remaining stock of "Bread" will be 3 exists

Scenario: Buy multiple products
    When I buy "Bread" with quantity 2
    And I buy "Jam" with quantity 1
    And I buy "Chocolate" with quantity 5
    Then total should be 371.00
    Then The remaining stock of "Bread" will be 3 exists
    Then The remaining stock of "Jam" will be 9 exists
    Then The remaining stock of "Chocolate" will be 15 exists