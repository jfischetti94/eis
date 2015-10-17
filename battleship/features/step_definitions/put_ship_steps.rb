require_relative '../../model/battleship'

Given(/^an empty battleship (\d+)x(\d+)$/) do |x_size, y_size|
  @naval_battle = Battleship.new(x_size.to_i, y_size.to_i)
end

When(/^i put a ([^"]*) ([^"]*) in cell \[(\d+),(\d+)\]$/) do |orientation, ship_name, x, y|
  @naval_battle.put_ship(ship_name.to_sym, x.to_i, y.to_i ,orientation.to_sym)
end

Then(/^the ([^"]*) is located at position \[(\d+),(\d+)\]$/) do |ship_name, x, y|
  pending # Write code here that turns the phrase above into concrete actions
end