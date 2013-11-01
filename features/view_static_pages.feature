Feature: website static html pages are viewable by supporters

  As a resident of California
  So that I can learn about current political issues in California 
  I want to see static html pages on the Evolve website

Background: the supporter wants to access static html page

  Given I am on the Evolve home page
  And I log in as adminstrator
  When I press "Create a new page"
  And I fill in "Title" with "Proposition 13"
  And I fill in "Path" with "prop13"
  And I fill in "Content" with "Details about Proposition 13"
  And I check 'Published:'
  When I press "Create Page"
  Then I should be on the Evolve Admin home page
  
Scenario: Supporter can see static page - Evolve home page
  When I go to the Evolve home page
  Then I should see "Evolve"

Scenario: Supporter sees new static page
  When I follow the html path "prop13"
  Then I should see "Details about Proposition 13"

Scenario: (Sad path) Supporter cannot see admin-only pages
  When I follow the html path "page"
  Then I should not be on the Evolve Admin home page
  And I should be on the login page
  And I should see "Sign in"
   
	  