When(/^i go to the calculator page$/) do
  visit 'calculator'
end

Given(/^first operand is (\d+)$/) do |n|
  fill_in 'first_argument', with: n
end

Given(/^second operand is (\d+)$/) do |n|
  fill_in 'second_argument', with: n
end

When(/^make the sum$/) do
  select('Suma', from: 'operations')
  click_button('Calcular')
end

Then(/^the result is (\d+)$/) do |n|
  expect(page).to have_content("Resultado: #{n}")
end

When(/^make the subtraction$/) do
  select('Resta', from: 'operations')
  click_button('Calcular')
end

When(/^make the average$/) do
  select('Promedio', from: 'operations')
  click_button('Calcular')
end
