When(/^i open practiceselenium\.com website$/) do
	@browser.goto "http://www.practiceselenium.com/practice-form.html"
	@browser.driver.manage.timeouts.page_load =5
end

Then(/^I find first and last name and print the html$/) do
	first_name = @browser.text_field(name: 'firstname')
	last_name = @browser.text_field(name: 'lastname')
	puts "First Name HTML: #{first_name}"
	puts "Last Name HTML: #{last_name}"
end

Then(/^I find menu and print the html$/) do
	menu_element = @browser.link(name: 'menu')
	puts "Menu HTML: #{menu_element}"
end

Then(/^I find button and print the html$/) do
	ok_button = @browser.button(name: 'submit')
end

Then(/^I find radio button male and print the html$/) do
	male_radio = @browser.radio(name: 'sex-0')
	puts "Male Radio HTML: #{male_radio}"
end

Then(/^I find check box and print the html$/) do
	black_tea = @browser.checkbox(name: 'tea 1')
	puts "Black Tea Box HTML: #{black_tea}"
end

Then(/^I find select list and print html$/) do
	continents_select = @browser.select_list(id: 'continents')
	options = continents_select.options
 	puts "Select List options: #{options}"
	options.each do |option|
		puts option.html
 	end
end

Then(/^I find another select list and print html$/) do
	another_select_list = @browser.select_list(id: 'selenium_commands')
 options = another_select_list.options
 
	options.each do |option|
		puts option.html
	end
end

Then(/^I find div and print html$/) do
	div_element = @browser.div(class: 'wsb-htmlsnippet-element')
	puts div_element.html
end
