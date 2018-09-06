require "selenium-webdriver"
driver = Selenium::WebDriver::Driver.for :firefox

puts "test Start"

driver.get("https://search.shopping.naver.com/best100v2/main.nhn")
puts driver.title
#puts driver.methods
a =driver.find_element(xpath: '//*[@id="popular_srch_lst"]')

puts a.text

puts "test End"