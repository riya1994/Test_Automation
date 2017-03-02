Feature: Explaining browser commands

Background:
When I open seleniumframework website
Scenario: Print the browser name
Then I print the browser name
 
Scenario: Print the ready state
Then I print the browser ready state
 
Scenario: Browser back, forward and refresh
And I click ABOUT link
Then I click back on the browser
And I click forward on the browser
And I click refresh on the browser

