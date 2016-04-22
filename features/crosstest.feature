Feature: As a user of the Contacts app, I can create and read contacts.

  Scenario: Create a new contact
    Given I am on the start screen
     When I click on the "Add Contact" button
     Then I should see the "Add Contact" form
