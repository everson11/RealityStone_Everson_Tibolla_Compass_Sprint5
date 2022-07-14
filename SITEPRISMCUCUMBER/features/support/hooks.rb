After do |scenario|
    #if scenario.failed?
    screenshot = Capybara.page.driver.browser.save_screenshot("reports/screenshot/sc.png")
    attach(screenshot, 'image/png')
    #end
end
