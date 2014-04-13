Feature: Login

  As a registered Wordpress user,
  I would like to log into to the WordPress mobile app using my registered credentials.

  Scenario: Successful Log in in via Add WordPress.com blog
    Given I login with valid credentials to Add WordPress.com blog
    Then I should be logged in

  Scenario: Unsuccessful Log in in via Add WordPress.com blog
    Given I login with invalid credentials to Add WordPress.com blog
    Then I should not be logged in

