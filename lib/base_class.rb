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
    browser.set(locator)
  end

  def clear(locator)
    browser.clear(locator)
  end

  #def click_on(locator)
  #  find(locator).click
  #end
  #
  def displayed?(locator)
    browser(locator).exists?
  end

  def enabled?(locator)
    browser(locator).enabled?
  end

  #def selected?(locator)
  #  browser.find_element(locator).selected?
  #end
  #
  #def get_text_of(locator)
  #  find(locator).text
  #end
  #
  def title(name)
    browser.title == name
  end

  def page_content(content)
    browser.text.include? content
  end

  def click_within_drop_down_list(locator, text)
    browser.select_list(locator.to_sym, text)
  end

  def clear_drop_down_list(locator)
    broswer.clearSelection(locator)
  end

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

