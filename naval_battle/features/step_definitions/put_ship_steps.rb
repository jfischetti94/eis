require_relative '../../model/naval_battle'

Given(/^board with default size$/) do
  @naval_battle = Naval_Battle.new()
end

Given(/^the cell \[(\d+),(\d+)\] is occupied$/) do |horizontal_axis, vertical_axis|
  @naval_battle.put("submarine","vertical",horizontal_axis.to_i,vertical_axis.to_i)
end

When(/^i put a ([^"]*) ([^"]*) in cell \[(\d+),(\d+)\]$/) do |orientation, ship_name,horizontal_axis, vertical_axis|
  @naval_battle.put(ship_name,orientation,horizontal_axis.to_i,vertical_axis.to_i)
end

Then(/^the submarine is located at position \[(\d+),(\d+)\]$/) do |x, y|
  @naval_battle.cell_occupied?(x.to_i, y.to_i)
end
