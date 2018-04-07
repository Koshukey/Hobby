require 'selenium-webdriver'
require 'pry'

driver = Selenium::WebDriver.for :chrome

driver.navigate.to "https://open.spotify.com/browse/featured"

driver.find_element(:xpath, '//*[@id="has-account"]').click

sleep(3)

driver.find_element(:xpath, '/html/body/div[2]/div/div[1]/div/a').click

sleep(3)

driver.find_element(:name, "email").send_key "email"
driver.find_element(:name, "pass").send_key "password"
driver.find_element(:xpath, '//*[@id="loginbutton"]').click

sleep(3)

i = rand(7)

#なぜかi = rand(6) + １としたらエラーが出た

#undefined method true class とfalsse class という具合に


# start_button = driver.find_element(:xpath, '//*[@id="main"]/div/div[2]/div[2]/div[1]/div/section/div/div/div[1]/header/div[2]/button')
#再生ボタン
if i == 1 || i == 2
  driver.find_element(:xpath, '//*[@id="main"]/div/div[2]/div[1]/nav/div[1]/div/ul/div[1]/li/a').click

  sleep(3)
driver.find_element(:xpath, '//*[@id="main"]/div/div[2]/div[2]/div[1]/div/section/div/div/div[1]/header/div[2]/button').click
elsif i ==3 || i==4
  driver.find_element(:xpath, '//*[@id="main"]/div/div[2]/div[1]/nav/div[1]/div/ul/div[2]/li/a').click
  sleep(3)
driver.find_element(:xpath, '//*[@id="main"]/div/div[2]/div[2]/div[1]/div/section/div/div/div[1]/header/div[2]/button').click
else i == 5 || i == 6
  driver.find_element(:xpath, '//*[@id="main"]/div/div[2]/div[1]/nav/div[1]/div/ul/div[3]/li/a').click
  sleep(3)
driver.find_element(:xpath, '//*[@id="main"]/div/div[2]/div[2]/div[1]/div/section/div/div/div[1]/header/div[2]/button').click
end

sleep(1111)
