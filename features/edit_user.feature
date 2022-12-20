Feature: edit a user

    As an inquisitive student
    So that I can get help on my course selection
    I want to edit my account to change major, minor, and classes taken

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

Scenario: user is changing major and minor

    When I fill in "user_uni" with "ss6167"
    And I fill in "user_pwd" with "abcdef"
    And I press "Enter"
    Then I should see "Economics Major Requirements"
    And I should see "Computer Science Minor Requirements"
    Then I follow "Edit Profile"
    And I select "Computer Science" from "Major" 
    And I select "Economics" from "Minor"
    Then I press "Next"
    Then I press "Finish Registration"
    Then I should see "Computer Science Major Requirements"
    And I should see "Economics Minor Requirements"

Scenario: user is changing school from SEAS to CC

    When I fill in "user_uni" with "jr3876"
    And I fill in "user_pwd" with "123456"
    And I press "Enter"
    Then I should see "SEAS Core Requirements"
    Then I follow "Edit Profile"
    And I select "CC" from "School" 
    Then I press "Next"
    Then I press "Finish Registration"
    Then I should see "CC Core Requirements"

Scenario: user adds class he took

    When I fill in "user_uni" with "ss6167"
    And I fill in "user_pwd" with "abcdef"
    And I press "Enter"
    Then I should see "ECON UN1105 Principles of Economics"
    Then I follow "Edit Profile"
    Then I press "Next"
    And I fill in "searchbar" with "Economics"
    And I press "Search"
    And I press "add ECON UN1105 Principles of Economics"
    And I should see "Successfully added ECON UN1105 Principles of Economics"
    Then I press "Finish Registration"
    Then I should not see "ECON UN1105 Principles of Economics"
    