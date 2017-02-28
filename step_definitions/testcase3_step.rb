require 'watir'



Given(/^i will visit phptravels\.org$/) do
	@browser.goto"http://www.phptravels.org"
end

When(/^i will insert my mail id$/) do
	@browser.text_field(:id => 'inputEmail').set 'example@gmail.com'
end

When(/^insert my password$/) do
  	@browser.text_field(:id => 'inputPassword').set 'example'
end

When(/^tick to remember me$/) do
	@browser.element(:name => "rememberme").click
	sleep 2
end

Then(/^it will login if id id present$/) do
  pending # Write code here that turns the phrase above into concrete actions
end
