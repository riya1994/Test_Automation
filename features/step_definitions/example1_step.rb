

Given(/^a board like this:$/) do |table|
  # table is a Cucumber::MultilineArgument::DataTable
  @board = table.raw
end

When(/^player x plays in row (\d+), column (\d+)$/) do |row, col|
  row, col = row.to_i, col.to_i
  puts row
  puts col
  @board[row][col] = 'X'
end

Then(/^the board should look like this:$/) do |expected_table|
  # table is a Cucumber::MultilineArgument::DataTable
  expected_table.diff!(@board)
end
