#
# Feature: Core Onboarding
#

Feature: Core Onboarding
  As a user
  I want to be able to onboard lite tier user to became core user
  So that user will be onboarded as a Moneylion core user.

  Scenario: Core Onboarding
    Given user had successfully signed up as lite tier user
    When user continue core onboarding process
    And user can fill in PII information
      | Date Of Birth | Address                                   | Phone Number | SSN          |
      | 02/28/1975    | 200 Brannan St, Apt 210, 90201 California | 650-532-3283 | random digit |
    And user will verify the authenticity via <MFA Method> 
      | MFA Method |
      | Email      |
      | Phone SMS  |
    Then user will be verifying the PII information filled in. 
    And user will be onboarded as a core user. 
