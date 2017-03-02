require "watir"
require "colorize"
#browser = Watir::Browser.new :chrome,:switches => %w[--ignore-certificate-errors --test-type]
Given(/^i am on Guru99 page$/)do
	@browser.goto "http://demo.guru99.com"
end	

When(/^enter black details for Register$/)do
	@browser.text_field(:name,"emailid").set(" ")

	@browser.button(:name,"btnLogin").click
	sleep 2
end

Then(/^error email shown$/)do
	puts "Email is Required!".red
	@browser.close
end