Given(/^en la pagina de la calculadora$/) do
  visit 'calculator'
end

Given(/^no hice operaciones$/) do
  #Tengo que ejecutar esto por que los test de
  #basic operations y estos, se ejecutan en la misma secion
  #(Cuando corre este step el contador no esta en 0)
  click_button('Resetear Contador')
end

Then(/^la cantidad de operaciones es (\d+)$/) do |n|
  expect(page).to have_content("Operaciones Realizadas: #{n}")
end

Given(/^hago una suma$/) do
  fill_in 'first_argument', with: 1
  fill_in 'second_argument', with: 1
  select('Suma', from: 'operations')
  click_button('Calcular')
end

Given(/^hago una resta$/) do
  fill_in 'first_argument', with: 2
  fill_in 'second_argument', with: 1
  select('Resta', from: 'operations')
  click_button('Calcular')
end

Given(/^reseteo la memoria$/) do
  click_button('Resetear Contador')
end