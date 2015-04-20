module Site

  def browser

    unless @browser.nil?
      return @browser
    end

    case ENV['DRIVER']
      when 'headless'
        require "headless"
        headless = Headless.new(display: 100, reuse: true, destroy_at_exit: false)
        headless.start
        @local_browser = Watir::Browser.new :firefox
      else
        @local_browser = Watir::Browser.new :firefox
        #@local_browser.manage.window.maximize
    end

    p "Executing tests in #{ENV['DRIVER']} mode..." unless ENV['DRIVER'] == nil
   # @local_browser.manage.timeouts.implicit_wait = 10
    @browser ||= @local_browser

  end


  class Site

    def initialize(browser)
      @browser = browser
    end

    def homepage
      @homepage ||= Homepage.new(@browser)
    end

  end

  def site
    @site ||= Site.new(browser)
  end

end


World(Site)


