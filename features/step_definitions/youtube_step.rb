require 'watir'
require 'rspec'
Given(/^Enter no value in search box$/) do
	@browser.goto "http://youtube.com"
	@browser.text_field(:name , 'search_query').set ''
end

When(/^we clicked on enter$/) do
	@browser.button(:id , 'search-btn').click
end

Then(/^It should be in the same page$/) do
	@browser.url.should == "https://www.youtube.com/"
end
