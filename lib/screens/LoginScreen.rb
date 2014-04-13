class LoginScreen < BaseClass

  element(:username_field)     { 'nux_username' }
  element(:password_field)     { 'nux_password' }
  element(:login_button)       { 'nux_sign_in_button' }
  element(:forgot_password)    { 'forgot_password' }
  element(:create_account_btn) { 'nux_create_account_button' }

  value(:await)                { wait_for_element(username_field) }
  value(:not_logged_in?)       { exists?(username_field) }

  action(:touch_login_button)  { tap_on(username_field) }

  def login_with(username, password)
    keyboard_enter_text(username_field, username)
    keyboard_enter_text(password_field, password)
    touch_login_button
    wait_for_no_progress_bars
  end

end