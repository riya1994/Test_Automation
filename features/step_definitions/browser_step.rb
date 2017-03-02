require "watir"
require "colorize"
When(/^I open seleniumframework website$/) do
  @browser.goto "http://www.seleniumframework.com"
end

Then(/^I print the browser name$/) do
	browsername = @browser.name
	puts "Browser Name: #{browsername}"
end

Then(/^I print the browser ready state$/) do
	browserreaystate = @browser.ready_state
	puts "Browser Ready State: #{browserreaystate}"
end

When(/^I click ABOUT link$/) do
	@browser.link(text: 'CUCUMBER').click
end

Then(/^I click back on the browser$/) do
	browserback = @browser.back
	puts "Browser Back: #{browserback}"
end

Then(/^I click forward on the browser$/) do
  	browserforward = @browser.forward
	puts "Browser forward: #{browserforward}"
end

Then(/^I click refresh on the browser$/) do
  	@browser.refresh
	puts "Browser title after refresh: #{@browser.title}"
end
