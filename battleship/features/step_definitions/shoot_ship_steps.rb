require_relative '../../model/battleship'

Given(/^a battleship (\d+)x(\d+)$/) do |x_size, y_size|
  @battleship = Battleship.new(x_size.to_i, y_size.to_i)
end

When(/^I shoot coordinate \[(\d+),(\d+)\]$/) do |x, y|
  @battleship.shoot(x.to_i,y.to_i)
end

Then(/^The coordinate \[(\d+),(\d+)\] has water$/) do |x, y|
  expect(@battleship.status_in(x.to_i,y.to_i)).to eq "empty"
end

Given(/^the cell \[(\d+),(\d+)\] is occupied for ([^"]*) ([^"]*)$/) do |x, y, orientation, ship_name|
   @battleship.put_ship(ship_name.to_sym, x.to_i, y.to_i ,orientation.to_sym)
end

Then(/^I hit ship in \[(\d+),(\d+)\] but dont sunken$/) do |arg1, arg2|
  expect( @battleship.ship_status_in(1,1) ).to eq "afloat"
end


