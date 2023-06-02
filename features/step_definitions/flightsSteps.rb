#Given I am on the Mercury Tours page
Given(/^I am on the Mercury Tours homepage$/) do
  page.driver.browser.manage.window.maximize
  visit('http://demo.guru99.com/test/newtours/')
end

#Given I will click the "Flights" link
Given(/^I will click the "([^"]*)" link$/) do |flightsLink|
  click_link(flightsLink)
end

#Given I enter the required fields as show below
Given(/^I enter the required fields as show below$/) do |table|
  data = table.rows_hash
  data.each_pair do |key, value|
  case key
  when "Type:"
    case value
    when "Round Trip"
      search_selector  = "input[value='roundtrip']"
    when "One Way"
      search_selector = "input[value='oneway']"
    end
    find(search_selector).click
  when "Passengers:"
    select(value, :from => 'passCount')
  when "Departing From:"
    select(value, :from => 'fromPort')
  when "On:"
    month = /[a-zA-Z]*/.match(value)
    day = /\d/.match(value)
    all('select')[2].find('option', text: month).select_option
    all('select')[3].find('option', text: day, match: :first).select_option
  when "Arriving In:"
    select(value, :from => 'toPort')
  when "Returning:"
    month = /[a-zA-Z]*/.match(value)
    day = /\d/.match(value)
    all('select')[5].find('option', text: month).select_option
    all('select')[6].find('option', text: day, match: :first).select_option
  when "Service Class:"
    case value
    when "Economy class"
      search_selector  = "input[value='Coach']"
    when "Business class"
      search_selector = "input[value='Business']"
    when "First class"
      search_selector = "input[value='First']"
    end
    find(search_selector).click
  when "Airline:"
    select(value, :from => 'airline')
  end
  end
end

#When send my flight search form
When(/^send my flight search form$/) do
  find("input[name='findFlights']").click
end

#When I press the "BACK TO HOME" link
When(/^I press the "BACK TO HOME" link$/) do
  all("a[href='index.php']")[2].click
end

#Then I see text above after flight search engine "After flight finder - No Seats Avaialble  "
Then('I see text above after flight search engine {string}') do |flightFinder|
  flightFinderLabel = all('font')[4]
  puts "ONLY FOR TEST PURPOSES:"+flightFinderLabel.text
  if flightFinderLabel.text != flightFinder
      raise "Flight search should be"+flightFinder 
  end
end

#Then I see an error message stating that "The source and destination must be different"
Then('I see an error message stating that {string}') do |errorMessage|
  expect(page).to have_content(errorMessage)
end

#Then I see the main page of mercury tours
Then('I see the main page') do
  expect(page.evaluate_script('document.title')).to eq('Welcome: Mercury Tours')
end