Feature: visit automationpractice.com site and register

Scenario: visit automationpractice.com site and create a new account

Given we will visit automationpractice.com site
When we click on sign in
And gave "exampl@gmail.com" email address in the box
And clicked on "Create an Account"
Then it should show to personal information




Scenario: sum of price should be correct
Given we will visit automationpractice.com site
When I add to cart "Faded Short Sleeve T-shirts"
And I add to cart "Blouse"
Then the price in checkout page should be the sum of prices of the products






Scenario:It should show error when nonpresent elament is searched
Given we will visit automationpractice.com site
When i searched for "ndjfbavf"
Then it will show error

Scenario:It should show when space is searched
Given we will visit automationpractice.com site
When i searched for " "
Then it will show error


Scenario:It should show when element is searched
Given we will visit automationpractice.com site
When i searched for " dress "
Then it will show result


Scenario:End price should match
Given we will visit automationpractice.com site
When i searched for "Faded Short Sleeve T-shirts"
And I add to cart "Faded Short Sleeve T-shirts"
And increased number of products
Then price should match


Scenario: Amazon checking
Given Login to amazon.in
When Added wrong information in login
Then It should show warning message
