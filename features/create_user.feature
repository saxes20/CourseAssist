Feature: create a new user

    As an inquisitive student
    So that I can get help on my course selection
    I want to create a new account

Background: users in database

    Given the following users exist:
    | first      | last        | year         | school | major            | minor     | uni    |
    | Jackson    | Roberts     | 2023         | CC     | Computer Science | Economics | jr3876 |
    | Sameer     | Saxena      | 2024         | SEAS   | Computer Science | Economics | ss6167 |

    Given the following courses exist:
    | name                                | course                                       | prof         | preReqs         | description             | reviews      | currentlyOffered    |
    | Introduction to Computer Science    | COMS 1004 Introduction to Computer Science   | Mike Do      | COMS W3134      | Introductory  CS class  | Great class! | 1                   |
    | Introduction to Data Structures     | COMS 3134 Introduction to Data Structures    | Mike Do      | COMS 3157       | Easy CS class           | Great class! | 1                   |
    | Principles of Economics             | ECON UN1105 Principles of Economics          | James Cho    |                 |                         | Don't take!  | 1                   |
    | Advanced Programming                | COMS 3157 Advanced Programming               | Jae Woo Lee  |                 |                         |              |                     |


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
    And I select "ECON UN1105 Principles of Economics" from "Course"
    And I select "Fall" from "Semester"
    And I select "2022" from "Year"
    And I press "Add"
    And I select "COMS 3157 Advanced Programming" from "Course" 
    And I select "Spring" from "Semester"
    And I select "2021" from "Year"
    And I press "Add"
    Then there exists a record that "agh2172" took "ECON UN1105 Principles of Economics" in "Fall" "2022"
    Then there exists a record that "agh2172" took "COMS 3157 Advanced Programming" in "Spring" "2021"
    Then there does not exist a record that "agh2172" took "COMS 4000 Computer Networks" in "Fall" "2021"



