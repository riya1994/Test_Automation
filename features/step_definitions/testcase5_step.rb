require 'watir'

Given(/^I am on he puppy adoption site$/) do
	@browser.goto "http://www.herokuapp.com"
end

When(/^I attempt to checkout without "([^"]*)"$/) do |arg1|

end

Then(/^i should see error "([^"]*)"$/) do |arg1|
  pending # Write code here that turns the phrase above into concrete actions
end
