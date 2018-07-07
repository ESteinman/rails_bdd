Given("the following articles exists in the system") do |table|
   table.hashes.each do |hash|
    FactoryBot.create(:article, hash)
   end
end

Given("I visit the landing page") do
    visit root_path
end

Then("I should be on {string} page") do |article_title|
article = Article.find_by(title: article_title)
expect(current_path).to eq article_path(article)
end

Then("I should see {string}") do |string|
pending # Write code here that turns the phrase above into concrete actions
end