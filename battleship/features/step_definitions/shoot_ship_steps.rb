require_relative '../../model/battleship'

Then(/^The coordinate \[(\d+),(\d+)\] has water$/) do |x, y|
  expect(@battleship.status_in(x.to_i,y.to_i)).to eq "empty"
end

Then(/^I hit ship in \[(\d+),(\d+)\] and sunken$/) do |x, y|
  expect( @battleship.ship_status_in(x.to_i,y.to_i) ).to eq "sunken"
end


Given(/^the cell \[(\d+),(\d+)\] is occupied for ([^"]*) ([^"]*)$/) do |x, y, orientation, ship_name|
   @battleship.put_ship(ship_name.to_sym, x.to_i, y.to_i ,orientation.to_sym)
end

When(/^I shoot coordinate \[(\d+),(\d+)\]$/) do |x, y|
  @battleship.shoot(x.to_i,y.to_i)
end

Then(/^I hit ship in \[(\d+),(\d+)\] but dont sunken$/) do |x, y|
  expect( @battleship.ship_status_in(x.to_i,y.to_i) ).to eq "afloat"
end
