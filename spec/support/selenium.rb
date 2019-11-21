dockerized = !!ENV['DOCKERIZED']

puts '#' * 80
puts Capybara.app_host.inspect

if dockerized
  Capybara.register_driver :remote_chrome do |app|
    # chrome_capabilities = Selenium::WebDriver::Remote::Capabilities.chrome()

    # Capybara::Selenium::Driver.new(
    #   app,
    #   browser: :remote,
    #   url: "#{ENV['SELENIUM']}/wd/hub",
    #   desired_capabilities: chrome_capabilities
    # )

    # options = {
    #   args: [
    #     'disable-infobars',
    #     'disable-gpu',
    #     'privileged',
    #     'ignore-certificate-errors',
    #     'no-default-browser-check'],
    #     w3c: true,
    #     mobileEmulation: {},
    #     prefs: {
    #       :protocol_handler => {
    #         :excluded_schemes => {
    #           tel: false,
    #         }
    #       }
    #     }
    # }

    # caps = Selenium::WebDriver::Chrome::Options.new(options: options)
    Selenium::WebDriver.for(
      :remote,
      url: "#{ENV['SELENIUM']}/wd/hub"
    )
  end

  Capybara.app_host = ENV['API_HOST']
  Capybara.default_driver = :remote_chrome
  Capybara.default_max_wait_time = 5
else
  Capybara.default_driver = :selenium_chrome_headless
end

