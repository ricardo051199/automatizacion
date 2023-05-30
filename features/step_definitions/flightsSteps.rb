4#Given I am on the Mercury Tours page
Given(/^I am browsing the "([^"]*)" page.$/) do |mercuryToursPage|
  page.driver.browser.manage.window.maximize
  visit (mercuryToursPage)
end

#Then I will click the "Flights" link
Then(/^I will click the "([^"]*)" link$/) do |flightsLink|
  click_link(flightsLink)
end


When(/^I enter the required fields as show below$/) do |table|
  data = table.rows_hash
  data.each_pair do |key, value|
    case key
  when "Type:"
    xpath_base = '/html/body/div[2]/table/tbody/tr/td[2]/table/tbody/tr[4]/td/table/tbody/tr/td[2]/table/tbody/tr[5]/td/form/table/tbody/tr[2]/td[2]/b/font/input[2]'
    find(:xpath, xpath_base).click
  when "Passengers:"
    select(value, :from => 'passCount')
  when "Departing From:"
    select(value, :from => 'fromPort')
  when "On:"
    mes = /[a-zA-Z]*/.match(value)
    day = /\d/.match(value)
    select(mes, :from => 'fromMonth')
    select(day, :from => 'fromDay')
  when "Arriving In:"
    select(value, :from => 'toPort')
  when "Returning:"
    mes = /[a-zA-Z]*/.match(value)
    day = /\d/.match(value)
    select(mes, :from => 'fromMonth')
    select(day, :from => 'fromDay')
  when "Service Class:"
    xpath_base = '/html/body/div[2]/table/tbody/tr/td[2]/table/tbody/tr[4]/td/table/tbody/tr/td[2]/table/tbody/tr[5]/td/form/table/tbody/tr[9]/td[2]/font/font/input[2]'
    find(:xpath, xpath_base).click
  when "Airline:"
    select(value, :from => 'airline')
  end
  end
end

When(/^send my flight search form$/) do
  xpath_base = '/html/body/div[2]/table/tbody/tr/td[2]/table/tbody/tr[4]/td/table/tbody/tr/td[2]/table/tbody/tr[5]/td/form/table/tbody/tr[14]/td/input'
  find(:xpath, xpath_base).click
end

#I see text above after flight search engine "After flight finder - No Seats Avaialble  "
Then('I see text above after flight search engine {string}') do |flightFinder|
  flightFinderLabel = find(:xpath, '/html/body/div[2]/table/tbody/tr/td[2]/table/tbody/tr[4]/td/table/tbody/tr[1]/td[2]/table/tbody/tr[1]/td/p/font/b/font[1]')
  puts "ONLY FOR TEST PURPOSES:"+flightFinderLabel.text
  if flightFinderLabel.text != flightFinder
      raise "Flight search should be"+flightFinder 
  end
end