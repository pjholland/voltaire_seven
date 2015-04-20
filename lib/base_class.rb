class Baseclass

  attr_reader :browser

  #access all methods webdriver "driver" class via @browser or via methods below

  def initialize(browser)
    @browser = browser
  end

  def visit(url='/')
    browser.goto(ENV['base_url'] + url)
  end

  def type(locator, input)
    browser.text_field(locator).set(input)
  end

  def click_button(locator)
    browser.button(locator).click
  end


  def click_link(locator)
    browser.a(locator).click
  end

  def click_radio_button(locator)
    browser.radio(locator).click
  end


  #def find(locator)
  #  browser.find_element locator
  #end
  #
  #def clear(locator)
  #  browser(locator).clear
  #end
  #
  #def type(locator, input)
  #  find(locator => input)
  #end

  #def click_on(locator)
  #  find(locator).click
  #end
  #
  #def displayed?(locator)
  #  browser.find_element(locator).displayed?
  #end
  #
  #def enabled?(locator)
  #  browser.find_element(locator).enabled?
  #end
  #
  #def selected?(locator)
  #  browser.find_element(locator).selected?
  #end
  #
  #def get_text_of(locator)
  #  find(locator).text
  #end
  #
  #def title
  #  browser.title
  #end
  #
  #def page_content
  #  browser.page_source
  #end
  #
  #def click_within_drop_down_list(locator, text)
  #
  #  element = browser.find_element(locator)
  #  dropdown = Selenium::WebDriver::Support::Select.new(element)
  #  dropdown.select_by(:text, text)
  #
  #end
  #
  #def get_attribute(name, locator)
  #  browser.find_element(locator)
  #  browser.attribute(name)
  #end
  #
  #def new_web_driver_time_out(seconds=5)
  #  Selenium::WebDriver::Wait.new(:timeout => seconds).until { yield }
  #end
  #
  #def find_within_element(parent, child)
  #
  #  browser.find_element(:class, parent).find_element(:link => child).click
  #
  #end

  def wait_for(time)

    sleep(time)

  end

end

