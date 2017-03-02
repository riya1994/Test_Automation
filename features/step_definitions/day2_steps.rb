require "watir"

Given(/^i logged into pathe site$/) do
	@browser.goto "https://www.pathe.nl/"
end

When(/^clicked on Eindhoven location$/) do
	@browser.link(:class => "tabs-cities__link",:title => 'Eindhoven').click
	@browser.screenshot.save "ex.png"
end

Then(/^i listed all movies that is available$/) do
	a = @browser.links(:xpath => "//h4/a[contains(@href, '/film/')]")
	a.each do |a1|
	    # b.link(:href => thelink.href).click
	    # b.link(:text, "Norādījumi").click
	    # puts b.text_field(:title, "Galapunkta_adrese").value
	    puts "Movie Details: #{a1.text}"
	end
end
