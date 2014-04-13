require_relative '../../lib/BaseClass'

class WordPressApp < BaseClass

  def login_screen
    @login_screen ||= LoginScreen.new(self)
  end

  def home_screen
    @home_screen ||= HomeScreen.new(self)
  end

end

