Feature: Create articles
    As a publisher
    In order to add relevant content to my news service
    I would like to be able to create articles

    Background: 

    Scenario: Successfully create an article [Happy Path]
        Given I visit the page
        And I click on "Create Article"
        And I fill in "Title" with "Learning Rails 5"
        And  I fill in "Content" with "Excited about learning a new framework"
        And I click on "Create Article"
        Then there should be a new article in the database
        And I should see "Your article has been created".    

        Scenario: Publisher doesn't enter a title for the article [Sad Path]
            Given I visit the page
            And I click on "Create Article"
            And I fill in "Title" with ""
            And I fill in "Content" with "Excited about learning a new framework"
            And I should see "Article was not created"