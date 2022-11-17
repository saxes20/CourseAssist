Feature: navigate between pages

    As an inquisitive student
    So that I can quickly browse information
    I want to be able to navigate between different pages

Background: users in database

    Given the following users exist:
    | first      | last        | year         | school | major            | minor     | uni    |
    | Jackson    | Roberts     | 2023         | CC     | Computer Science | Economics | jr3876 |
    | Sameer     | Saxena      | 2024         | SEAS   | Computer Science | Economics | ss6167 |

    And I am on the home page

Scenario: navigate back to the landing screen from the create account screen

    When I follow "Sign Up"
    And I follow "Sign In"
    Then I should see "Superior class selection"
    And I should not see "Hi, please provide some more info about yourself"

Scenario: navigate back to the create account screen from the add courses screen

    When I follow "Sign Up"
    And I fill in "First Name" with "Axel"
    And I fill in "Last Name" with "Henrikson"
    And I fill in "UNI" with "agh2172"
    And I select "2026" from "Year"
    And I select "CC" from "School"
    And I select "Computer Science" from "Major" 
    And I select "Economics" from "Minor" 
    And I press "Next"
    And I follow "About"
    Then I should see "Hi, please provide some more info about yourself"

Scenario: navigate back to the landing screen from the add courses screen

    When I follow "Sign Up"
    And I fill in "First Name" with "Axel"
    And I fill in "Last Name" with "Henrikson"
    And I fill in "UNI" with "agh2172"
    And I select "2026" from "Year"
    And I select "CC" from "School"
    And I select "Computer Science" from "Major" 
    And I select "Economics" from "Minor" 
    And I press "Next"
    And I follow "Sign In"
    Then I should see "Superior class selection"

Scenario: navigate back to the landing screen from the dashboard screen

    When I fill in "UNI" with "ss6167"
    And I press "Enter"
    And I follow "Sign Out"
    Then I should see "Superior class selection"