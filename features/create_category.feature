Feature: Create Category
  As a blog administrator
  In order to categorize my articles
  I want to be able to create categories to my blog

  Background:
    Given the blog is set up
    And I am logged into the admin panel
    When I follow "Categories"

  Scenario: Create Category
    Given I am on the new categories page
    And I fill in "category_name" with "test"
    And I fill in "category_keywords" with "testkey"
    And I fill in "category_description" with "testdescription"
    And I press "Save"
    Then I should see "test"
    
  Scenario: Edit Category
    Given a test category is created
    And I am on the category edit page for "test"
    And I fill in "category_keywords" with "test2"
    And I fill in "category_description" with "description2"
    And I press "Save"
    Then I should see "test2"
    Then I should see "description2"