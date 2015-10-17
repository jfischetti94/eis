require_relative '../../model/battleship'

Given(/^a battleship (\d+)x(\d+)$/) do |x_size, y_size|
  @battleship = Battleship.new(x_size.to_i, y_size.to_i)
end

When(/^I shoot coordinate \[(\d+),(\d+)\]$/) do |x, y|
  @battleship.shoot(x.to_i,y.to_i)
end

Then(/^The coordinate \[(\d+),(\d+)\] has water$/) do |x, y|
  pending # Write code here that turns the phrase above into concrete actions
end

