Feature: BDD
    In order to teach Behat
    As a developer
    I want to demonstrate how to write features

    Scenario: Home page
        Given I am on the homepage
        Then I should see "Hello ETA team!"

    @javascript
    Scenario: Dynamic page
        Given I am on "/highly-interactive"
        Then I should see "Hello ETA team!"

