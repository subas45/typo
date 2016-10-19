@categories
Feature: Create and Edit Categories
  As a blog administrator
  I need to create and edit categories for the blog posts

  Background:
    Given the blog is set up
    And I am logged into the admin panel

  Scenario: Successfully go to new category page
    Given I am on the admin dashboard page
    And I follow "Categories"
    Then I should be on the new category page
    
  Scenario: Create a new category
    Given I am on the new category page
    When I fill in the following:
      | category_name | Programming |
      | category_keywords | Ruby |
      | category_permalink | programming |
      | category_description | Ruby is fun |
    And I press "Save"
    Then I should be on the new category page
    And I should see "Programming"
    When I follow "Programming"
    Then I should be on the edit category page for "Programming"
    And the "category_name" field should contain "Programming"
    And the "category_keywords" field should contain "Ruby"
    And the "category_permalink" field should contain "programming"
    And the "category_description" field should contain "Ruby is fun"