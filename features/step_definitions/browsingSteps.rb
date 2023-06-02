#Given I am on the Mercury tours homepage
Given(/^I am on the Mercury tours homepage$/) do                                                                                                                                                    
  page.driver.browser.manage.window.maximize
  visit('http://demo.guru99.com/test/newtours/')                                                                                                                     
end         

#Given I see the flight link                                                                                                                                                                                                  
Given(/^I see the "([^"]*)" link$/) do |searchLink|                                                                                                                                                               
  expect(page).to have_content(searchLink)                                                                                                                  
end

#When Click on the "LINK" link                                                                                                                                                                                               
When(/^I will click on the "([^"]*)" link$/) do |link|                                                                                                                                                    
  click_link(link)
  sleep 5                                                                                                                     
end

#Then I see the {PAGE} page                                                                                                                                                                                              
When(/^I see the "([^"]*)" page$/) do |result| 
  case result
  when "Flights"
    pageTitle = "Find a Flight: Mercury Tours:"
  when "Hotels"
    pageTitle = "Find a Hotels: Mercury Tours:"  
  when "Car Rentals"
    pageTitle = "Find a Car Rental: Mercury Tours:"
  when "Cruises"
    pageTitle = "Welcome: Mercury Tours"  
  when "Destinations", "your destination"
    pageTitle = "Find a Destination: Mercury Tours:"
  when "Vacations", "featured vacation destinations"
    pageTitle = "Find a Vacation: Mercury Tours:"  
  when "SIGN-ON"
    pageTitle = "Sign-on: Mercury Tours"
  when "REGISTER", "Register here"
    pageTitle = "Register: Mercury Tours" 
  when "SUPPORT"
    pageTitle = "Support: Mercury Tours"
  when "CONTACT"
    pageTitle = "Contact: Mercury Tours" 
  when "Salon Travel"
    pageTitle = "Tripadvisor: Over a billion reviews & contributions for Hotels, Attractions, Restaurants, and more"    
  end                                                                                                                            
  expect(page.evaluate_script('document.title')).to eq(pageTitle)                                                                                                                  
end