class HomeScreen < BaseClass

  element(:posts) { 'posts'}
  element(:action_bar_title) { 'action_bar_title' }

  value(:await)         { wait_for_element(action_bar_title) }
  value(:logged_in?)    { exists?(action_bar_title) }

end