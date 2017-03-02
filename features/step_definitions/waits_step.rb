When(/^I set pageload timeout$/) do
  @browser.driver.manage.timeouts.page_load = 5
end
