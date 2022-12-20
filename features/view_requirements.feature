Feature: Display accurate requirements for a given user

    As an inquisitive student
    So that I can get help on my course selection
    I want to see an accurate display of my requirements

Background: users in database

    Given the following users exist:
    | first      | last        | year         | school | major            | minor            | uni    | password    |
    | Jackson    | Roberts     | 2023         | SEAS   | Computer Science | Economics        | jr3876 | 123456      |
    | Sameer     | Saxena      | 2024         | CC     | Economics        | Computer Science | ss6167 | abcdef      |

    Given the following courses exist:
    | name                                | course                                        | prof         | time           | preReqs         | description                     |
    | Introduction to Computer Science    | COMS W1004 Introduction to Computer Science   | Mike Do      | MW 10:10-11:25 |                 | Introductory  CS class          |
    | Introduction to Data Structures     | COMS W3134 Introduction to Data Structures    | Mike Do      | MW 4:10-5:25   | COMS W1004      | Basic data structures           |
    | Principles of Economics             | ECON UN1105 Principles of Economics           | James Cho    | TR 1:10-2:25   |                 |                                 |
    | Advanced Programming                | COMS W3157 Advanced Programming               | Jae Woo Lee  | TR 8:40-9:55   | COMS W3134      |                                 |
    | The Art of Engineering              | ENGI E1102 The Art of Engineering             | Mike Do      | F 10:00-12:30  |                 |                                 |
    | Masterpieces of Western Art         | HUMA UN1121 Masterpieces of Western Art       | J Harvard    | MW 6:40-7:55   |                 |                                 |

    Given the following coursereviews exist:
    | course                                      | prof    | review       |
    | COMS W3134 Introduction to Data Structures  | Mike Do | Great class! |
    
    Given the following addcourses exist:
    | uni      | course                                      | semester   | year  |
    | ss6167   | COMS W1004 Introduction to Computer Science  | Fall      | 2020  |
    | jr3876   | COMS W1004 Introduction to Computer Science  | Fall      | 2020  |
    | jr3876   | COMS W3134 Introduction to Data Structures   | Fall      | 2020  |

    Given the following schoolreqs exist:
    | school   | course                                    |
    | SEAS     | ENGI E1102 The Art of Engineering         |
    | CC       | HUMA UN1121 Masterpieces of Western Art   |

    Given the following majorreqs exist:
    | subject              | course                                      |
    | Computer Science     | COMS W1004 Introduction to Computer Science  |
    | Computer Science     | COMS W3134 Introduction to Data Structures   |
    | Computer Science     | COMS W3157 Advanced Programming              |
    | Economics            | ECON UN1105 Principles of Economics         |

    Given the following minreqs exist:
    | subject              | course                                      |
    | Computer Science     | COMS W1004 Introduction to Computer Science  |
    | Computer Science     | COMS W3134 Introduction to Data Structures   |
    | Economics            | ECON UN1105 Principles of Economics         |

    And I am on the home page

Scenario: user is in CC, majoring in Economics and minoring in Computer Science

    When I fill in "user_uni" with "ss6167"
    And I fill in "user_pwd" with "abcdef"
    And I press "Enter"
    Then I should see "HUMA UN1121"
    And I should see "ECON UN1105"
    And I should see "COMS W3134"

Scenario: user is in SEAS, majoring in Computer Science and minoring in Economics

    When I fill in "user_uni" with "jr3876"
    And I fill in "user_pwd" with "123456"
    And I press "Enter"
    Then I should see "ENGI E1102"
    And I should see "COMS W3157"
    And I should see "ECON UN1105"

Scenario: user clicks on one of the classes presented

    When I fill in "user_uni" with "ss6167"
    And I fill in "user_pwd" with "abcdef"
    And I press "Enter"
    And I follow "COMS W3134 Introduction to Data Structures"
    Then I should see "Details about COMS W3134"
    And I should see "Professor: Mike Do"
    And I should see "Pre-Requirements: COMS W1004"
    And I should see "Course Description: Basic data structures"
    And I should see "Great class!"

Scenario: user searches for a class

    When I fill in "user_uni" with "ss6167"
    And I fill in "user_pwd" with "abcdef"
    And I press "Enter"
    And I fill in "searchbar" with "Programming"
    And I press "Search"
    Then I should see "COMS W3157 Advanced Programming"
    And I should not see "ENGI E1102 The Art of Engineering"
    And I should not see "COMS W1004 Introduction to Computer Science"
    Then I press "add from search COMS W3157 Advanced Programming"
    Then there exists a record that "ss6167" is taking "COMS W3157 Advanced Programming"
    Then I press "remove2 COMS W3157 Advanced Programming"
    Then there does not exist a record that "ss6167" is taking "COMS W3157 Advanced Programming"

Scenario: user adds a class to schedule

    When I fill in "user_uni" with "ss6167"
    And I fill in "user_pwd" with "abcdef"
    And I press "Enter"
    Then I press "add majorreq ECON UN1105 Principles of Economics"
    And I press "add minorreq COMS W3134 Introduction to Data Structures"
    And I press "add schoolreq HUMA UN1121 Masterpieces of Western Art"
    Then there exists a record that "ss6167" is taking "ECON UN1105 Principles of Economics"
    Then there exists a record that "ss6167" is taking "COMS W3134 Introduction to Data Structures"
    Then there exists a record that "ss6167" is taking "HUMA UN1121 Masterpieces of Western Art"
    Then I press "remove1 COMS W3134 Introduction to Data Structures"
    Then there does not exist a record that "ss6167" is taking "COMS W3134 Introduction to Data Structures"
    
