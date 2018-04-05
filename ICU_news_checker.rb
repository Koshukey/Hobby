require 'selenium-webdriver'
require 'pry'
require 'mechanize'
require 'nokogiri'
driver = Selenium::WebDriver.for :chrome

driver.navigate.to "https://icu-portal.icu.ac.jp/"

driver.find_element(:xpath, '//*[@id="loginform"]/p[1]/a').click

driver.find_element(:xpath, '//*[@id="username_input"]').send_key 'email'

driver.find_element(:xpath, '//*[@id="password_input"]').send_key 'password'

driver.find_element(:xpath, '//*[@id="login_button"]').click
#icu portalにログイン

sleep(2)
#本来はweb driverでxpathによって取得しようと思っていたがxpathが不規則すぎたので
#nokogiriを使うことにした
#mechanizeだとclass属性を指定しても一要素しか取得できなかったのに対しnokogiriだとかくとうする
#class属性を持つものを全て取得することができた

doc = Nokogiri::HTML(driver.page_source)
#Nokogiriのインスタンスを作成
#webdriverのpage_sourceメソッドによってページのソースを取得

news = doc.css('.title_box')

puts "------------------------------------------------------------------------"

puts news.text
sleep(1)
