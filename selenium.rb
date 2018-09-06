require "selenium-webdriver"
#driver = Selenium::WebDriver::Firefox::Binary.path='C:/Program Files/Mozilla FireFox/firefox.exe'
driver = Selenium::WebDriver::Driver.for :firefox

puts "test Start"
# dirver = Selenium::WebDriver.for :firefox

driver.get("https://nid.naver.com/nidlogin.login")
puts driver.title
#puts driver.methods
driver.find_element(id: 'id').send_keys('')
driver.find_element(id: 'pw').send_keys('')

# driver.quit
driver.find_element(xpath: '//*[@id="frmNIDLogin"]/fieldset/input').submit
puts "test End"