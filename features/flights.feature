Feature: As a internet user
         I want to use the google search engine
         so I test that works correctly

Scenario: Search a flight with no seats avaialble in Mercury Tours page        
  Given I am browsing the "https://demo.guru99.com/test/newtours/index.php" page.
  When I will click the "Flights" link 
  And I enter the required fields as show below
    |Type:                   |                    |
    |Passengers:             | 2                  |
    |Departing From:         | Acapulco           |
    |On:                     | January-1          |
    |Arriving In:            | Zurich             |  
    |Returning:              | February-1         |
    |Service Class:          |                    |
    |Airline:                | Pangea Airlines    |
  And send my flight search form
  Then I see text above after flight search engine "After flight finder - No Seats Avaialble  "
  
