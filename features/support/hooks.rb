Before do
    Capybara.current_session.driver.browser.manage.delete_all_cookies
    page.reset_session!
    Capybara.current_session.driver.quit
    current_window.maximize
 
  @utils =  UtilsPage.new
 end
 After do |scenario|
     Dir.mkdir("data") unless Dir.exist?("data")
     Dir.mkdir("data/report") unless Dir.exist?("data/report")
     sufix = ("error" if scenario.failed?) || "success"
     name = scenario.name.tr(" ", "_").downcase
     image_name = "data/report/img/#{sufix}-#{name}.png"
     temp_shot = page.save_screenshot(image_name)
     file_shot = File.open(temp_shot, "rb").read
     final_shot = Base64.encode64(file_shot)
     attach(temp_shot, "image/png")
     page.execute_script("sessionStorage.clear()")
 end