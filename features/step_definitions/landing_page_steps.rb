Given('I visit the "landing" page') do
    visit root_path
  end

  When ('I click {string} link') do |article_link|
    click_link(article_link)
  end

  When("I fill in {string} with {string}") do |field, content|
    fill_in field, with: content
 end
  
  When("I click {string} button") do |string|
    click_button(string)
    end
  
  Then("I should be on {string} page") do |string|
    pending # Write code here that turns the phrase above into concrete actions
  end
  
  Then("I should see {string}.") do |string|
    pending # Write code here that turns the phrase above into concrete actions
  end
  
  Then("I should see {string}") do |string|
    pending # Write code here that turns the phrase above into concrete actions
  end
  
  Then("I shlould see {string}") do |string|
    pending # Write code here that turns the phrase above into concrete actions
  end
  
  