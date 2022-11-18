Feature: navigate between pages

    As an inquisitive student
    So that I can quickly browse information
    I want to be able to navigate between different pages

Background: users in database

    Given the following users exist:
    | first      | last        | year         | school | major            | minor              | uni    |
    | Jackson    | Roberts     | 2023         | CC     | Computer Science | Economics          | jr3876 |
    | Sameer     | Saxena      | 2024         | SEAS   | Economics        | Computer Science   | ss6167 |

    Given the following courses exist:
    | name                                | course                                        | prof         | preReqs         | description                     | reviews      | currentlyOffered    |
    | Introduction to Computer Science    | COMS W1004 Introduction to Computer Science   | Mike Do      |                 | Introductory  CS class          | Great class! | 1                   |
    | Introduction to Data Structures     | COMS W3134 Introduction to Data Structures    | Mike Do      | COMS W1004      | Basic data structures           | Great class! | 1                   |
    | Principles of Economics             | ECON UN1105 Principles of Economics           | James Cho    |                 |                                 | Don't take!  | 1                   |
    | Advanced Programming                | COMS W3157 Advanced Programming               | Jae Woo Lee  | COMS W3134      |                                 |              |                     |
    | The Art of Engineering              | ENGI E1102 The Art of Engineering             | Mike Do      |                 |                                 |              |                     | 
    | Masterpieces of Western Art         | HUMA UN1121 Masterpieces of Western Art       | J Harvard    |                 |                                 |              |                     | 

    Given the following majorreqs exist:
    | subject              | course                                      |
    | Computer Science     | COMS W1004 Introduction to Computer Science  |
    | Computer Science     | COMS W3134 Introduction to Data Structures   |
    | Computer Science     | COMS W3157 Advanced Programming              |
    | Economics            | ECON UN1105 Principles of Economics         |

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

Scenario: navigate back to the dashboard screen from the course details screen

    When I fill in "UNI" with "ss6167"
    And I press "Enter"
    And I follow "ECON UN1105 Principles of Economics"
    Then I should see "Details about ECON UN1105"
    Then I follow "Back to Dashboard"
    Then I should see "Hi, Sameer Saxena! Welcome to CourseAssist!"