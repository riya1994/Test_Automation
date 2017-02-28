require 'watir'
require 'rspec'

# New comment
Given(/^we will visit automationpractice\.com site$/) do
	@browser.goto "http://automationpractice.com"
end

When(/^we click on sign in$/) do
	@browser.link(:title => 'Log in to your customer account').click
end

When(/^gave "([^"]*)" email address in the box$/) do |email|
	@browser.text_field(:id =>'email_create').set email
end

When(/^clicked on "([^"]*)"$/) do |account|
	@browser.button(:id => 'SubmitCreate').click
end

Then(/^it should show to personal information$/) do
	@browser.h3(:class => 'page-subheading').exist?
	#expected_output.text.include? 'Your personal information1'
end

Then(/^i will receive an error msg$/) do
	error = @browser.div(:id => 'create_account_error')
	status = error.exist?
	status.should eql true
end

And(/^select title$/) do 
	#@browser.text_field(:id , 'customer_firstname').set name
	@browser.radio(:value => '2').set
end

And(/^hit on "([^"]*)"$/) do |register|
	#@browser.button(:id => 'submitAccount').click
	@browser.button(:name => 'submitAccount').click
	sleep 10
end

Then(/^receive error for those$/) do
	error_msg = @browser.div(:class => 'alert alert-danger')
	status = error_msg.exist?
	status.should eql true
end


When(/^I add to cart "([^"]*)"$/) do |products|
	@browser.text_field(:id => 'search_query_top').set products
	@browser.div(:class => 'ac_results').click
	@browser.button(:name => 'Submit').click
	@browser.span(:title => 'Continue shopping').click
	@browser.text_field(:id => 'search_query_top').clear

end

Then(/^the price in checkout page should be the sum of prices of the products$/) do
	@browser.link(:title => 'View my shopping cart').hover
	@browser.link(:title => 'Check out').click
	product1 = @browser.span(:id => 'total_product_price_1_1_0')
	p1 = product1.text.delete( "$" ).to_f
	puts p1
	product2 = @browser.span(:id => 'total_product_price_2_7_0')
	p2 = product2.text.delete( "$" ).to_f
	puts p2
	total_product = @browser.td(:id => 'total_product')
	p3 = total_product.text.delete( "$" ).to_f
	puts p3
	sum_products = '%.2f' % (p1 + p2)
	sum_products = sum_products.to_f
	puts sum_products
	if(p3 == sum_products)
		puts "sum is equal"
	else
		puts "sum is not equal"
	end
end



When(/^i searched for "([^"]*)"$/) do |item|
	@browser.text_field(:id => 'search_query_top').set item
	@browser.button(:class => 'btn btn-default button-search').click
end

Then(/^it will show error$/) do
	error_msg = @browser.p(:class => 'alert alert-warning')
	status = error_msg.exist?
	puts status
	status.should eql true
end


Then(/^it will show result$/) do
	puts @browser.span(:class => 'heading-counter').text
end


When(/^increased number of products$/) do
	@browser.link(:title => 'View my shopping cart').hover
	@browser.link(:title => 'Check out').click
	@browser.link(:id => 'cart_quantity_up_1_1_0_0').click
	@browser.link(:id => 'cart_quantity_up_1_1_0_0').click
end

Then(/^price should match$/) do
	product1 = @browser.td(:class => 'cart_unit')
	p1 = product1.text.delete( "$" ).to_f
	sleep 2
	total_amount = @browser.td(:class => 'cart_total')
	t1 = total_amount.text.delete( "$" ).to_f
	multiply_products = p1 * 3
	multiply_products = multiply_products.to_f
	t1.should eql multiply_products
end


Given(/^Login to amazon\.in$/) do
 	@browser.goto "http://www.amazon.in"
end

When(/^Added wrong information in login$/) do
	@browser.span(:text => 'Hello. Sign in').click
	@browser.text_field(:class => 'a-input-text a-span12 auth-autofocus auth-required-field').set 'jhjbauagsuabsd'
	@browser.text_field(:id => 'ap_password').set 'ausgdugsuf'
	@browser.span(:class => 'a-button-inner').click
end

Then(/^It should show warning message$/) do
	warning = @browser.h4(:class => 'a-alert-heading')
	status = warning.exist?
	puts status
	status.should eql true
end

Given(/^login to goibibo\.com$/) do
	@browser.goto "http://goibibo.com"
end

When(/^i added information and clicked search$/) do
	@browser.text_field(:class => 'form-control inputTxtLarge fromTxt posRel').set 'Delhi'
	sleep 5
end

Then(/^i should get results for that$/) do
  pending # Write code here that turns the phrase above into concrete actions
end






















