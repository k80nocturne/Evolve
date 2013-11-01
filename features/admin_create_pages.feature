Feature: Administrators should be able to create new pages

   As an administrator of the website
   So I can make new pages about the political situation
   I want to make new pages

Background: I am logged in as an administrator on the creation page
  
  Given I am on the Evolve home page
  When I log in as administrator
  Then I should be on the Evolve Admin home page
  And I press "Create a new page"
  Then I should be on the creation page 

Scenario: Make a new page
  When I fill in "Title" with "Proposition 13"
  And I fill in "Path" with "prop13"
  And I fill in "Content Type:" with "Text"
  And I fill in "Description" with "Details"
  And I press "Create Page"
  Then I should be on the Evolve Admin home page
  And I should see "Successfully created page Proposition 13"

Scenario: (Sad path) Try to make a completely undefined page
  When I press "Create Page"
  Then I should be on the Evolve Admin home page
  And I should see "Failed to create page."

Scenario: (Sad path) Try to make a page with a duplicate path
  When I fill in "Path" with "/"
  And I fill in "Title" with "Duplicate page"
  And I press "Create Page"
  Then I should be on the Evolve Admin home page
  And I should see "Failed to create page"