Feature: User can comment on a article
    As a user of the news service
    In order to express my opinions
    I would like to be able to comment on a news article

    Background:
    Given the following articles exists in the system
    | title             | content                                |
    | Learning Rails 5  | Excited about learning a new framework |

    Scenario: Users comment is visible on articles
        Given I visit the landing page
        And I click on 'Learning Rails 5'
        When I fill in 'Email' with 'random@test.com'
        And I fill in 'Comment' with 'Good for you, wish you some happy coding!'
        And I click on 'Add comment'
        Then I should be on 'Learning rails 5' page
        And I should see 'Your comment was successfully added'
        And I should see 'Good for you, wish you some happy coding!'

