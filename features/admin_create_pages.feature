Feature: Administrators should be able to create new pages

   As an administrator of the website
   So I can make new pages about the political situation
   I want to make new pages

Background: I am logged in as an administrator
  
  Given I am on the Evolve home page
  When I log in as administrator
  Then I should be on the Evolve Admin home page 

Scenario: Make a new page
  When I press "Create a new page"
  Then I should be on the creation page 
  And I fill in "Header" with "Proposition 13"
  And I fill in "Body" with "Info about Prop 13"
  And I press "Create"
  Then I should be on the Evolve Admin home page
  And I should see "New page created."