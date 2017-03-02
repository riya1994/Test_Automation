#require "rspec"
require "colorize"

Given(/^input is "([^"]*)"$/) do |input|
  @input = input
end

When(/^calculator is run$/) do
  @output = 'ruby calculator.rb #{@input}'
  #raise('Command failed!') unless $?.success?
end

Then(/^output should be "([^"]*)"$/) do |expected_output|
  @output == expected_output

end
