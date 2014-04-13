require 'calabash-android'
require 'calabash-android/operations'

class BaseClass
  include Calabash::Android::Operations

  def initialize(driver)
    @driver = driver
  end

  def method_missing(sym, *args, &block)
    @driver.send sym, *args, &block
  end

  def tap_on(element)
    touch("* marked:'#{element}'")
  end

  def exists?(element)
    element_exists("* marked:'#{element}'")
  end

  def keyboard_enter_text(el, text)
    query("* id:'#{el}'", {:setText => text})
  end

  def wait_for_no_progress_bars
    performAction('wait_for_no_progress_bars')
  end

  def wait_for_dialog_to_close
    performAction('wait_for_dialog_to_close')
  end

  def wait_for_element(element)
    wait_for { exists?(element) }
  end

  def self.element(name, &block)
    define_method(name.to_s, &block)
  end

  class << self
    alias :value :element
    alias :action :element
  end

end
