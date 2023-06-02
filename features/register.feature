Feature: Mercury Tours Verify Registration
  In order to book a flight in Mercury site
  As a registered customer
  I want to test the shoppping online options

Background:
    Given I am on the mercury tours homepages
    And I click the "Register" link

Scenario: Register a valid user on the mercury tours page.  
    Given I enter the required fields as follows
    |First Name:        | Pepito             |
    |Last Name:         | Perez              |
    |Phone:             | 12345671           |
    |Email:             | pepe@pepazo.com    |
    |Address:           | Av. America #123   |  
    |City:              | Cochabamba         |
    |State/Province:    | Cochabamba         |  
    |Postal Code:       | 9897               |
    |Country:           | BOLIVIA            |
    |User Name:         | Pepazo             |
    |Password:          | ILoveQA            | 
    |Confirm Password:  | ILoveQA            |
    When send my registration form
    Then the confirmation screen is show
    And my user name is "Pepazo"

Scenario: Register an existing user on the mercury tours page.  
    Given I enter the required fields as follows
    |First Name:        | Pepito             |
    |Last Name:         | Perez              |
    |Phone:             | 12345671           |
    |Email:             | pepe@pepazo.com    |
    |Address:           | Av. America #123   |  
    |City:              | Cochabamba         |
    |State/Province:    | Cochabamba         |  
    |Postal Code:       | 9897               |
    |Country:           | BOLIVIA            |
    |User Name:         | Pepazo             |
    |Password:          | ILoveQA            | 
    |Confirm Password:  | ILoveQA            |
    When send my registration form
    Then I see a message "Existing user."
    And I see empty registration form fields

Scenario: Register a valid user with an already registered email address on the mercury tours page.  
    Given I enter the required fields as follows
    |First Name:        | Juan               |
    |Last Name:         | Martinez           |
    |Phone:             | 98765432           |
    |Email:             | pepe@pepazo.com    |
    |Address:           | Av. Libertador     |  
    |City:              | Cochabamba         |
    |State/Province:    | Cochabamba         |  
    |Postal Code:       | 0000               |
    |Country:           | BOLIVIA            |
    |User Name:         | Juancho            |
    |Password:          | IJuancho           | 
    |Confirm Password:  | IJuancho           |
    When send my registration form
    Then I see a message "Email already belongs to a registered account."

Scenario: Register a valid user with a number in the first name on the mercury tours page.  
    Given I enter the required fields as follows
    |First Name:        | Juan1              |
    |Last Name:         | Martinez           |
    |Phone:             | 98765432           |
    |Email:             | juan@martinez.com  |
    |Address:           | Av. Libertador     |  
    |City:              | Cochabamba         |
    |State/Province:    | Cochabamba         |  
    |Postal Code:       | 0000               |
    |Country:           | BOLIVIA            |
    |User Name:         | Juancho            |
    |Password:          | IJuancho           | 
    |Confirm Password:  | IJuancho           |
    When send my registration form
    Then I see a message "First name invalid."

Scenario: Register a valid user with a special character in the first name on the mercury tours page.  
    Given I enter the required fields as follows
    |First Name:        | Ju@n               |
    |Last Name:         | Martinez           |
    |Phone:             | 98765432           |
    |Email:             | juan@martinez.com  |
    |Address:           | Av. Libertador     |  
    |City:              | Cochabamba         |
    |State/Province:    | Cochabamba         |  
    |Postal Code:       | 0000               |
    |Country:           | BOLIVIA            |
    |User Name:         | Juancho            |
    |Password:          | IJuancho           | 
    |Confirm Password:  | IJuancho           |
    When send my registration form
    Then I see a message "First name invalid."

Scenario: Register a valid user with a number in your last name on the mercury tours page.  
    Given I enter the required fields as follows
    |First Name:        | Juan               |
    |Last Name:         | Martn3z            |
    |Phone:             | 98765432           |
    |Email:             | juan@martinez.com  |
    |Address:           | Av. Libertador     |  
    |City:              | Cochabamba         |
    |State/Province:    | Cochabamba         |  
    |Postal Code:       | 0000               |
    |Country:           | BOLIVIA            |
    |User Name:         | Juancho            |
    |Password:          | IJuancho           | 
    |Confirm Password:  | IJuancho           |
    When send my registration form
    Then I see a message "Last name invalid."

Scenario: Register a valid user with a special character in the last name on the mercury tours page.  
    Given I enter the required fields as follows
    |First Name:        | Juan               |
    |Last Name:         | M@rtnez            |
    |Phone:             | 98765432           |
    |Email:             | juan@martinez.com  |
    |Address:           | Av. Libertador     |  
    |City:              | Cochabamba         |
    |State/Province:    | Cochabamba         |  
    |Postal Code:       | 0000               |
    |Country:           | BOLIVIA            |
    |User Name:         | Juancho            |
    |Password:          | IJuancho           | 
    |Confirm Password:  | IJuancho           |
    When send my registration form
    Then I see a message "Last name invalid."

Scenario: Register a valid user with an invalid phone number on the mercury tours page.  
    Given I enter the required fields as follows
    |First Name:        | Juan               |
    |Last Name:         | Martnez            |
    |Phone:             | 0000000000000000000|
    |Email:             | juan@martinez.com  |
    |Address:           | Av. Libertador     |  
    |City:              | Cochabamba         |
    |State/Province:    | Cochabamba         |  
    |Postal Code:       | 0000               |
    |Country:           | BOLIVIA            |
    |User Name:         | Juancho            |
    |Password:          | IJuancho           | 
    |Confirm Password:  | IJuancho           |
    When send my registration form
    Then I see a message "Phone number invalid."

Scenario: Register a valid user with a phone number composed only of characters on the mercury tours page.  
    Given I enter the required fields as follows
    |First Name:        | Juan               |
    |Last Name:         | Martnez            |
    |Phone:             | abcdefgh           |
    |Email:             | juan@martinez.com  |
    |Address:           | Av. Libertador     |  
    |City:              | Cochabamba         |
    |State/Province:    | Cochabamba         |  
    |Postal Code:       | 0000               |
    |Country:           | BOLIVIA            |
    |User Name:         | Juancho            |
    |Password:          | IJuancho           | 
    |Confirm Password:  | IJuancho           |
    When send my registration form
    Then I see a message "Phone number invalid."

Scenario: Register a valid user with a state/province consisting of numbers only on the mercury tours page.  
    Given I enter the required fields as follows
    |First Name:        | Juan               |
    |Last Name:         | Martnez            |
    |Phone:             | 98745632           |
    |Email:             | juan@martinez.com  |
    |Address:           | Av. Libertador     |  
    |City:              | Cochabamba         |
    |State/Province:    | 1234567890         |  
    |Postal Code:       | 0000               |
    |Country:           | BOLIVIA            |
    |User Name:         | Juancho            |
    |Password:          | IJuancho           | 
    |Confirm Password:  | IJuancho           |
    When send my registration form
    Then I see a message "State/Province invalid."

Scenario: Register a valid user with a state/province consisting of special characters only. on the mercury tours page.  
    Given I enter the required fields as follows
    |First Name:        | Juan               |
    |Last Name:         | Martnez            |
    |Phone:             | 98745632           |
    |Email:             | juan@martinez.com  |
    |Address:           | Av. Libertador     |  
    |City:              | Cochabamba         |
    |State/Province:    | °#$%&´+¨¨^         |  
    |Postal Code:       | 0000               |
    |Country:           | BOLIVIA            |
    |User Name:         | Juancho            |
    |Password:          | IJuancho           | 
    |Confirm Password:  | IJuancho           |
    When send my registration form
    Then I see a message "State/Province invalid."

Scenario: Register a valid user with your zip code with only special characters on the mercury tours page.  
    Given I enter the required fields as follows
    |First Name:        | Juan               |
    |Last Name:         | Martnez            |
    |Phone:             | 98745632           |
    |Email:             | juan@martinez.com  |
    |Address:           | Av. Libertador     |  
    |City:              | Cochabamba         |
    |State/Province:    | Cochabamba         |  
    |Postal Code:       | $$$$               |
    |Country:           | BOLIVIA            |
    |User Name:         | Juancho            |
    |Password:          | IJuancho           | 
    |Confirm Password:  | IJuancho           |
    When send my registration form
    Then I see a message "State/Province invalid."

Scenario: Register a valid user by leaving the password fields empty on the mercury tours page.  
    Given I enter the required fields as follows
    |First Name:        | Juan               |
    |Last Name:         | Martnez            |
    |Phone:             | 98745632           |
    |Email:             | juan@martinez.com  |
    |Address:           | Av. Libertador     |  
    |City:              | Cochabamba         |
    |State/Province:    | Cochabamba         |  
    |Postal Code:       | 0000               |
    |Country:           | BOLIVIA            |
    |User Name:         | Juancho            |
    |Password:          |                    | 
    |Confirm Password:  |                    |
    When send my registration form
    Then I see the password fields empty
    And I see a message "Passwords invalid."

Scenario: Register a valid user with non-matching passwords on the mercury tours page.  
    Given I enter the required fields as follows
    |First Name:        | Juan               |
    |Last Name:         | Martnez            |
    |Phone:             | 98745632           |
    |Email:             | juan@martinez.com  |
    |Address:           | Av. Libertador     |  
    |City:              | Cochabamba         |
    |State/Province:    | Cochabamba         |  
    |Postal Code:       | 0000               |
    |Country:           | BOLIVIA            |
    |User Name:         | Juancho            |
    |Password:          | IJuancho           | 
    |Confirm Password:  | IMartinez          |
    When send my registration form
    Then I see the password fields empty
    And I see a message "Non-matching passwords."
@onlyThis
Scenario: Register a valid user with non-matching passwords on the mercury tours page.  
    Given I do not enter the required fields  
    When send my registration form
    Then I see a message "First name invalid."
    And I see a message "Last name invalid."
    And I see a message "Phone number invalid."
    And I see a message "Email invalid."
    And I see a message "Address invalid."
    And I see a message "City invalid."
    And I see a message "State/Province invalid."
    And I see a message "Postal code invalid."
    And I see a message "User name invalid."
    And I see a message "Passwords invalid."