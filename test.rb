require 'selenium-webdriver'

options = Selenium::WebDriver::Firefox::Options.new(args: ['-headless'])

driver = Selenium::WebDriver.for(:firefox, options: options)

driver.get("https://nid.naver.com/nidlogin.login")
puts driver.title
# puts driver.methods

# #puts driver.methods
driver.find_element(id: 'id').send_keys("xhdtn8070")
driver.find_element(id: 'pw').send_keys("1q2w3e123")
driver.find_element(xpath: '//*[@id="frmNIDLogin"]/fieldset/input').click
puts driver.title
driver.quit