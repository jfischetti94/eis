require_relative '../../model/battleship'

Given(/^an empty battleship (\d+)x(\d+)$/) do |x_size, y_size|
  @battleship = Battleship.new(x_size.to_i, y_size.to_i)
end

When(/^i put a ([^"]*) ([^"]*) in cell \[(\d+),(\d+)\]$/) do |orientation, ship_name, x, y|
    @battleship.put_ship(ship_name.to_sym, x.to_i, y.to_i ,orientation.to_sym)
end

Then(/^the ([^"]*) is located at position \[(\d+),(\d+)\]$/) do |ship_name, x, y|
  expect(@battleship.status_in(x.to_i,y.to_i)).to eq "taken"
end

Given(/^the cell \[(\d+),(\d+)\] is occupied$/) do |x, y|
  @battleship.put_ship(:submarine, x.to_i, y.to_i ,:horizontal)
end

When(/^I try put ([^"]*) ([^"]*) in cell \[(\d+),(\d+)\]$/) do |orientation, ship_name, x, y|
  begin
    @battleship.put_ship(ship_name.to_sym, x.to_i, y.to_i ,orientation.to_sym)
  rescue Exception => e
    @exception = e
  end
end

Then(/^i can not put the ([^"]*) in cell \[(\d+),(\d+)\] because there are collision$/) do |ship_name,x, y|
  expect(@battleship.status_in(x.to_i,y.to_i)).to eq "taken"
  expect( @exception.message ).to eq "some coord is taken"
end

Then(/^I can not put submarine because falls off the board$/) do
  expect( @exception.message ).to eq "some position is off board"
end

