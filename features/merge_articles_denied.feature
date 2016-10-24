@articles
Feature: Merge articles denied
  As a non blog administrator
  I should not be able to merge two articles

  Background:
    Given the blog is set up
    And I am logged in as non admin user
    And the following articles are present:
      | id  | title   | body              |
      |  3  | Ruby    | Rails is popular  |
      |  4  | Rails   | Ruby framework    |    
    And the following comments are present:
      | id  | author  | body              | article_id |
      |  1  | Ram     | nice one          | 3          |
      |  2  | Shyam   | great piece       | 4          |
      
  Scenario: A non-admin cannot merge two articles
    Given I am on the edit article page for "Ruby"
    Then I should not see merge_with field