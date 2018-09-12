require "selenium-webdriver"
driver = Selenium::WebDriver::Driver.for :firefox

puts "test Start"

# driver.get("https://accounts.google.com/signin")
driver.get(ENV["LINK"])
puts driver.title
# puts driver.methods

# #puts driver.methods
# driver.find_element(id: 'id').send_keys("xhdtn8070")
# driver.find_element(id: 'pw').send_keys("1q2w3e123")
driver.find_element(xpath: '//*[@id="identifierId"]').send_keys("xhdtn8070@likelion.org")
driver.find_element(xpath: '/html/body/div[1]/div[1]/div[2]/div[2]/div/div/div[2]/div/div[2]/div/div[1]/div/content/span').click
puts "sleep"
sleep 3
puts "get up"
driver.find_element(xpath: '/html/body/div[1]/div[1]/div[2]/div[2]/div/div/div[2]/div/div[1]/div/form/content/section/div/content/div[1]/div/div[1]/div/div[1]/input').send_keys("dp6410lx")
driver.find_element(xpath: '/html/body/div[1]/div[1]/div[2]/div[2]/div/div/div[2]/div/div[2]/div/div[1]/div/content/span').click
sleep 1
driver.get("https://mail.google.com/mail")

# puts driver.title

# puts "test End"