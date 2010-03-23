Given /^I logged in the application like administrator$/ do
  @user = User.create({
    :email => "admin@memphant.com",
    :nickname => "admin",
    :password => "1234",
    :password_confirmation => "1234"
  })
  visit login_users_path
  fill_in "user_email", :with => "admin@memphant.com"
  fill_in "user_password", :with => "1234"
  click_button "access"
end