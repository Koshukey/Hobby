require 'pry'
require 'selenium-webdriver'



@look = "配布資料を表示しましたのでご覧になってください"

def today_docs(number)
driver = Selenium::WebDriver.for :chrome

#画面サイズのresize
width = 900
height = 800
driver.manage.window.resize_to(width, height)

driver.navigate.to "https://moodle.icu.ac.jp/27/"


driver.find_element(:name, "username").send_key "when"
driver.find_element(:name, "password").send_key "what"
driver.find_element(:xpath, '//*[@id="login"]/div[4]/input').click
sleep(3)
driver.find_element(:xpath, '//*[@id="frontpage-course-list"]/div/div[1]/div[1]/h3/a').click
#OSのクラスをクリック


  if number == 1
    driver.find_element(:xpath, '//*[@id="module-62282"]/div/div/div[2]/div/a/span').click
    puts @look
    sleep(100)
  elsif number == 2
    driver.find_element(:xpath, '//*[@id="module-59959"]/div/div/div[2]/div/a/span').click
    puts @look
    sleep(100)
  elsif number == 3
    driver.find_element(:xpath, '//*[@id="module-59961"]/div/div/div[2]/div/a/span').click
    puts @look
    sleep(100)
  elsif number == 4
    driver.find_element(:xpath, '///*[@id="module-59968"]/div/div/div[2]/div/a/span').click
    puts @look
    sleep(100)
  elsif number == 5
    driver.find_element(:xpath, '//*[@id="module-59976"]/div/div/div[2]/div/a/span').click
    puts @look
    sleep(100)
  elsif number == 6
    driver.find_element(:xpath, '//*[@id="module-59978"]/div/div/div[2]/div/a/span').click
    puts @look
    sleep(100)
  elsif number == 7
    driver.find_element(:xpath, '///*[@id="module-59984"]/div/div/div[2]/div/a/span').click
    puts  @look
    sleep(100)
  elsif number == 8
    driver.find_element(:xpath, '//*[@id="module-59987"]/div/div/div[2]/div/a/span').click
    puts @look
    sleep(100)
  elsif number == 9
    driver.find_element(:xpath, '//*[@id="module-59994"]/div/div/div[2]/div/a/span').click
    puts @look
    sleep(100)
  else
    "その授業はありません"
  end
end


puts "何回目の授業ですか"

number = gets.to_i
#ここでnumberに見た目は数字だが実は文字列 "3"みたいな数字が代入されていたのが原因でエラーではないのにid文も実行されていなかった

today_docs(number)
