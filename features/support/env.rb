require 'rubygems'
require 'watir'

Before do
  @browser = Watir::Browser.new :chrome,:switches => %w[--ignore-certificate-errors --test-type]
end

After do
  @browser.close
end