Feature: Admin should be able to mark pages as private
  As an admin of the website
  So that I can remove pages from being seen by the public
  I want to mark the pages as private

Background: I am logged in as administrator
  Given I am on the Evolve home page
  When I log in as administrator
  Then I should be on the Evolve Admin home page
  Given the following pages exist:
  | title                   | attribute | modified_date |
  | Blog1                   | public    | 25-Nov-2012   |
  | Blog2                   | public    | 26-Oct-2012   |
  | Index Page              | public    | 21-Jul-2012   |
  | Emails                  | private   | 10-Aug-2011   |
  | Blog3                   | private   | 5-Jan-2011    |

Scenario: Mark pages as private/unviewable
  When I check the following pages: "Blog2"
    And I press "Make Private"
  Then "Blog2" should have attribute "private"

