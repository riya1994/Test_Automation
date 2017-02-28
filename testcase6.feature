Feature: Checkout process

Scenario:Name is required when checking out
Given I am on he puppy adoption site
When I attempt to checkout without "name"
Then i should see error "Name can't be blank"