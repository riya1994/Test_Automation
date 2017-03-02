require "watir"

Given(/^i go to bol\.com$/) do
	@browser.goto"https://www.bol.com/"
end

When(/^i go to book section$/) do
	@browser.text_field(:name , 'Ntt').set 'My Way'
	@browser.send_keys :enter
end

Then(/^i select "([^"]*)" Book$/) do |arg1|
	@browser.link(:class => 'product-title').click
	sleep 5
end
