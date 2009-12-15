Scenario: Search for an existing acronym
  Given I am a site visitor
  When I go to the home page
  And I fill in "Search" with "FEC"
  And I press "Submit"
  Then I should see "Federal Election Commission"

Scenario: Search for a missing acronym
  Given I am a site visitor
  When I go to the home page
  And I fill in "Search" with "FFC"
  And I press "Submit"
  Then I should see "Not found"

Scenario: Submit a new acronym
  Given I am a site visitor
  When I go to the submit page
  And I fill in "Acronym" with "FFC"
  And I fill in "Full Name" with "Federal Fun Commission"
  And I fill in "Website" with "http://ffc.gov"
  And I fill in "Description" with "In charge of ensuring fun!"
  And I press "Submit"
  Then I should see "Thanks for your submission"
