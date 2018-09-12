require "selenium-webdriver"
require "sinatra/activerecord"
require "./class_db.rb"
#driver = Selenium::WebDriver::Firefox::Binary.path='C:/Program Files/Mozilla FireFox/firefox.exe'
driver = Selenium::WebDriver::Driver.for :firefox

puts "test Start"
# dirver = Selenium::WebDriver.for :firefox

driver.get("https://nid.naver.com/nidlogin.login")
puts driver.title

a = Article.new
a.title = driver.title
a.save

#puts driver.methods
driver.find_element(id: 'id').send_keys('sdfg')
driver.find_element(id: 'pw').send_keys('sdfg')

# driver.quit
# driver.find_element(xpath: '//*[@id="frmNIDLogin"]/fieldset/input').submit
puts "test End"