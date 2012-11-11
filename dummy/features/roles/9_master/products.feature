Feature: Manage products
  In order to describe products
  A guest
  Wants to add an product
  
  Background:
  
    Given a user named "Master"
    And an area named "area 1"
    And I log in as "Master"
  
  Scenario: Register new product
    Given I am on the new product page
    When I fill in "Name" with "Product"
    And I fill in "Text" with "Dummy"
    And I check "area 1"
    And I press "Create"
    Then I should see "Creation successful"
    And I should see "Product" 
    And I should see "Dummy"
    And I should see "area 1"

  Scenario: Edit product
    Given a product named "Product"
    When I go to the edit product page
    And I fill in "Text" with "Dummy 2"
    And I press "Update Product"
    Then I should see "Update successful"
    And I should see "Dummy 2"

  @javascript
  Scenario: Delete products
    Given the following products:
      |name| user |
      |Product| @me |  
    When I delete the 1st "product"
    Then I should see "Resource destroyed successfully"