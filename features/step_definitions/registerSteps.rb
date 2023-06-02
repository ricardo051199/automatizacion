#Given I am on the mercury tours homepages
Given(/^I am on the mercury tours homepages$/) do
     page.driver.browser.manage.window.maximize
     visit('http://demo.guru99.com/test/newtours/')
end

#Given I click the "Register" link
Given(/^I click the "([^"]*)" link$/) do |linkText|
  click_link(linkText)
end

#Given I enter the required fields as show below
Given(/^I enter the required fields as follows$/) do |table|
  data = table.rows_hash
  data.each_pair do |key, value|
     case key
     when "First Name:"
     fill_in 'firstName', :with => value
     @name = value
     when "Last Name:"
          fill_in 'lastName', :with => value
          @lastName = value
     when "Phone:"
          fill_in 'phone', :with => value
     when "Email:"
          fill_in 'userName', :with => value
     when "Address:"
          fill_in 'address1', :with => value
     when "City:"
          fill_in 'city', :with => value
     when "State/Province:"
          fill_in 'state', :with => value
     when "Postal Code:"
          fill_in 'postalCode', :with => value
     when "Country:"
          select(value, :from => 'country')
     when "User Name:"
          fill_in 'email', :with => value
          @userName = value
     when "Password:"
          fill_in 'password', :with => value
     when "Confirm Password:"
          fill_in 'confirmPassword', :with => value
          @password = value
     end
  end
end

#Given I do not enter the required fields
Given(/^I do not enter the required fields$/) do
  puts "do not fill any field"
end


#When send my registration form
When(/^send my registration form$/) do
     find("input[name='submit']").click
end

#Then the confirmation screen is show
Then(/^the confirmation screen is show$/) do
     greeting = "Dear"+" "+@name+" "+@lastName
     expect(page).to have_content(greeting)
     expect(page).to have_content("Thank you for registering. You may now sign-in using the user name and password you've just entered.")
end

#And my user name is "Pepazo"
Then(/^my user name is "([^"]*)"$/) do |userName|
  expect(page).to have_content("Note: Your user name is #{userName}.")
end

#Then I see a message "{mensaje}".
Then('I see a message {string}') do |errorMessage|                                                                                                                                                      
  expect(page).to have_content(errorMessage)                                                                                                                   
end 

#Then I see empty registration form fields
Then(/^I see empty registration form fields$/) do
  expect(page).to have_field('firstName', with: nil)
  expect(page).to have_field('lastName', with: nil)
  expect(page).to have_field('phone', with: nil)
  expect(page).to have_field('userName', with: nil)
  expect(page).to have_field('address1', with: nil)
  expect(page).to have_field('city', with: nil)
  expect(page).to have_field('state', with: nil)
  expect(page).to have_field('postalCode', with: nil)
  expect(page).to have_field('email', with: nil)
  expect(page).to have_field('password', with: nil)
  expect(page).to have_field('confirmPassword', with: nil)
end

#Then I see the password fields empty
Then(/^I see the password fields empty$/) do
  expect(page).to have_field('password', with: nil)
  expect(page).to have_field('confirmPassword', with: nil)
end