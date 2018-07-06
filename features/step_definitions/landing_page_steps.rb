Given('I visit the page') do
  visit '/'
end

And ('I click on {string}') do |element|
  click_on(element)
end

And("I fill in {string} with {string}") do |field, content|
  fill_in field, with: content
end

And("I click {string} button") do |submit|
  click_button('Create Article')
  end