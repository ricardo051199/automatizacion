Feature: As a internet user
         I want to use the google search engine
         so I test that works correctly

Background:
  Given I am on the Mercury Tours homepage
  When I will click the "Flights" link 

Scenario: Search for a flight with available seats, with the origin and destination different from each other in Mercury Tours page.    
  Given I enter the required fields as show below
    |Type:                   | Round Trip         |
    |Passengers:             | 2                  |
    |Departing From:         | Acapulco           |
    |On:                     | January-1          |
    |Arriving In:            | Zurich             |  
    |Returning:              | February-1         |
    |Service Class:          | Business class     |
    |Airline:                | No Preference      |
  When send my flight search form
  Then I see text above after flight search engine "After flight finder - Seats Avaialble"
  
Scenario: Search a flight with no seats avaialble in Mercury Tours page.     
  Given I enter the required fields as show below
    |Type:                   | One Way            |
    |Passengers:             | 4                  |
    |Departing From:         | London             |
    |On:                     | August-1           |
    |Arriving In:            | Paris              |  
    |Returning:              | September-1        |
    |Service Class:          | First class        |
    |Airline:                | Blue Skies Airlines|
  When send my flight search form
  Then I see text above after flight search engine "After flight finder - No Seats Avaialble  "

Scenario: Search for a flight with available seats, with the same origin and destination.      
  Given I enter the required fields as show below
    |Type:                   | One Way            |
    |Passengers:             | 1                  |
    |Departing From:         | New York           |
    |On:                     | November-1         |
    |Arriving In:            | New York           |  
    |Returning:              | December-1         |
    |Service Class:          | Economy class      |
    |Airline:                | No Preference      |
  When send my flight search form
  Then I see an error message stating that "The source and destination must be different"