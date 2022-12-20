Feature: create a new user

    As an inquisitive student
    So that I can get help on my course selection
    I want to create a new account

Background: users in database

    Given the following users exist:
    | first      | last        | year         | school | major            | minor            | uni    | password    |
    | Jackson    | Roberts     | 2023         | SEAS   | Computer Science | Economics        | jr3876 | 123456      |
    | Sameer     | Saxena      | 2024         | CC     | Economics        | Computer Science | ss6167 | abcdef      |

    Given the following courses exist:
    | name                                | course                                        | prof         | preReqs         | description                     |
    | Introduction to Computer Science    | COMS W1004 Introduction to Computer Science   | Mike Do      |                 | Introductory  CS class          |
    | Introduction to Data Structures     | COMS W3134 Introduction to Data Structures    | Mike Do      | COMS W1004      | Basic data structures           |
    | Principles of Economics             | ECON UN1105 Principles of Economics           | James Cho    |                 |                                 |
    | Advanced Programming                | COMS W3157 Advanced Programming               | Jae Woo Lee  | COMS W3134      |                                 |
    | The Art of Engineering              | ENGI E1102 The Art of Engineering             | Mike Do      |                 |                                 | 
    | Masterpieces of Western Art         | HUMA UN1121 Masterpieces of Western Art       | J Harvard    |                 |                                 | 


    And I am on the home page

Scenario: add a new user to the database

    When I follow "Sign Up"
    And I fill in "First Name" with "Axel"
    And I fill in "Last Name" with "Henrikson"
    And I fill in "UNI" with "agh2172"
    And I select "2026" from "Year"
    And I select "CC" from "School"
    And I select "Computer Science" from "Major" 
    And I select "Economics" from "Minor" 
    And I press "Next"
    Then the major of "agh2172" should be "Computer Science"
    Then the minor of "agh2172" should be "Economics"
    Then the school of "agh2172" should be "CC"


Scenario: new user adds past courses to database

    When I follow "Sign Up"
    And I fill in "First Name" with "Axel"
    And I fill in "Last Name" with "Henrikson"
    And I fill in "UNI" with "agh2172"
    And I select "2026" from "Year"
    And I select "CC" from "School"
    And I select "Computer Science" from "Major" 
    And I select "Economics" from "Minor" 
    And I press "Next"
    And I fill in "searchbar" with "Economics"
    And I press "Search"
    And I press "add ECON UN1105 Principles of Economics"
    Then I should see "Successfully added ECON UN1105 Principles of Economics"
    And there exists a record that "agh2172" took "ECON UN1105 Principles of Economics"
    Then I press "add COMS W1004 Introduction to Computer Science"
    Then I should see "Successfully added COMS W1004 Introduction to Computer Science"
    And there exists a record that "agh2172" took "COMS W1004 Introduction to Computer Science"
    And there does not exist a record that "agh2172" took "COMS 4000 Computer Networks"
    Then I press "Finish Registration"
    Then I should see "Hi, Axel Henrikson!"
    And I should not see "COMS W1004 Introduction to Computer Science"
    And I should not see "ECON UN1105 Principles of Economics"
    And I should see "COMS W3134 Introduction to Data Structures"


