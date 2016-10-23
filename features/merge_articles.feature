@articles
Feature: Merge articles content
  As a blog administrator
  I need to merge two articles preserving their content

  Background:
    Given the blog is set up
    And I am logged into the admin panel
    And the following articles are present:
      | id  | title   | body              |
      |  1  | Ruby    | Rails is popular  |
      |  2  | Rails   | Ruby framework    |    
    And the following comments are present:
      | id  | author  | body          | article_id |
      |  1  | Ram     | nice          | 3          |
      |  2  | Shyam   | piece         | 4          |
    
  Scenario: When articles are merged, the merged article should contain the text of both previous articles
    Given I am on the edit article page for "Ruby"
    Then I should see merge_with field  
    