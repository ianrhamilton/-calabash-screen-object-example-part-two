When(/^I login with (valid|invalid) credentials to Add WordPress.com blog$/) do |negate|

  @screen.login_screen.await
  @screen.login_screen.login_with(USERS[:valid][:email], USERS[:valid][:password]) if negate.eql? 'valid'
  @screen.login_screen.login_with(USERS[:invalid][:email], USERS[:invalid][:password]) if negate.eql? 'invalid'

end

Then /^I (should|should not) be logged in$/ do |negate|

  if negate.include? 'not'
    @screen.login_screen.should be_not_logged_in
  else
    @screen.home_screen.await
    @screen.home_screen.should be_logged_in
  end

end
