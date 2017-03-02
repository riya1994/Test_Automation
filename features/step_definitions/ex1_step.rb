require 'watir'
require 'colorize'

When(/^I go to google site$/) do
	@browser.goto "http://www.google.com"
end

Then /^I searched for "(.*)" in the search Box$/ do |searchQuery|
	@browser.text_field(:name, 'q').set searchQuery
end

Then(/^I clicked on submit button$/) do
	@browser.send_keys :enter
end

Then(/^I clicked on "(.*)"$/) do |movie|
  @browser.link(:text => movie).when_present.click
end

Then(/^I clied on "(.*)" in CAST$/) do |actor|
	@browser.link(:text => actor).when_present.click
 end

Then(/^It displayed age for Hrithik Roshan$/) do 
	#age = @browser.element(:class, 'noprint ForceAgeToShow').text
	puts @browser.span(:class => 'noprint ForceAgeToShow').text
	#puts "Age of Actor: #{age}"
	sleep 5
end
