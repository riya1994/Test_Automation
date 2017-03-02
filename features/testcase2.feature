Feature:User will get error msg if submits wrong mail address

Scenario:Error message will come if wrong mail address is submited

Given we will visit automationpractice.com site
When we click on sign in
And gave "example" email address in the box
And clicked on "Create an Account"
Then i will receive an error msg

Scenario:Error msg will come if without submiting required field we will submit form
Given we will visit automationpractice.com site
When we click on sign in
And gave "exampl@gmail.com" email address in the box
And clicked on "Create an Account"
And select title
And hit on "Register"
Then receive error for those 
