dockerized = !!ENV['DOCKERIZED']

if dockerized
  puts 'DOCKERIZED SPECS'
  Capybara.register_driver :remote_chrome do |app|
    chrome_capabilities = Selenium::WebDriver::Remote::Capabilities.chrome()

    Capybara::Selenium::Driver.new(
      app,
      browser: :remote,
      url: "#{ENV['SELENIUM']}/wd/hub",
      desired_capabilities: chrome_capabilities
    )
  end

  Capybara.app_host = ENV['API_HOST']
  Capybara.default_driver = :remote_chrome
  Capybara.default_max_wait_time = 5
else
  puts 'LOCAL SPECS'
  Capybara.default_driver = :selenium_chrome_headless
end

