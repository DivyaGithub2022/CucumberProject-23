@Browser
Feature: This feature will be used to test the functionality of Simplilearn application

  Background: 
    Given I have launched the application
    And I have clicked on the login link

	@WIP
  Scenario: Validate the login success scenario
    When I enter the username
    And I enter the password
    And I click on the Login button
    Then I should land on Home page

	@Sanity
  Scenario: Validate the login failure scenario
    When I enter the username
    And I enter the password
    And I click on the Login button
    Then I should get the error message
	
	@Sanity
  Scenario: Validate the Login failure scenario using parameters
    When I enter the username "abc@xyz.com"
    And I enter the password "Abc@1234"
    And I click on the Login button
    Then I should get the error message as "The email or password you have entered is invalid."
	
	@Regression @Sanity
  Scenario Outline: Validate the Login failure scenario using examples
    When I enter the username "<UserName>"
    And I enter the password "<Password>"
    And I click on the Login button
    Then I should get the error message as "<Error>"

    Examples: 
      | UserName    | Password | Error                                              |
      | pqr@xyz.com | Pqr@1234 | The email or password you have entered is invalid. |
      | xyz@abc.com | Xyz@1234 | The email or password you have entered is invalid. |
