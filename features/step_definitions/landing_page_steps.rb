Given('I visit the "landing" page') do
    visit root_path
  end

  When ('I click {string} link') do |article_link|
    click_link(article_link)
  end

  When("I fill in {string} with {string}") do |field, content|
    fill_in field, with: content
 end
  
  When("I click {string} button") do |submit|
    click_button('Create Article')
    end
  
  Then("I should be on {string} page") do |string|
    visit articles_new_path
  end

  And("I should see {string}.") do |expected_content|
    expect(page).to have_content expected_content
  end
  
  And("I should see {string} message") do |content|
    expect(page).to have_content content
  end
  