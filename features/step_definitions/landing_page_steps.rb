Given('I visit the "landing" page') do
    visit root_path
  end

  When ('I click {string} link') do |string|
    expect(page).to have_content string
  end