require 'selenium-webdriver'

driver = Selenium::WebDriver.for :chrome #ドライバ選択
driver.navigate.to "https://tinder.com" #移動サイト指定
firstWindowHandle = driver.window_handle
sleep(5)

driver.find_element(:xpath, '//*[@id="modal-manager"]/div/div/div[2]/div[1]/div[2]/button[1]/span/span').click
sleep(1)

driver.switch_to.window(driver.window_handles[1])
sleep(1)

driver.find_element(:name, "email").send_key "yourEmail"
driver.find_element(:name, "pass").send_key "yourPassword"
driver.find_element(:xpath, '//*[@id="u_0_0"]').click

driver.switch_to.window(firstWindowHandle)
#ここで最初のtinder.comにもう一度戻る
sleep(3)

driver.find_element(:xpath, '//*[@id="content"]/div/span/div/div[2]/div/div/div[1]/div/div[3]/button[1]/span/span').click
#１番目のボタンをおす
sleep(0.3)

driver.find_element(:xpath, '//*[@id="content"]/div/span/div/div[2]/div/div/main/div/div[3]/button/span/span').click
#2番目のボタンをおす
sleep(0.3)

driver.find_element(:xpath, '//*[@id="content"]/div/span/div/div[2]/div/div/div[1]/div/div[3]/button[1]/span/span').click
#3番目のボタンをおす
sleep(0.3)

driver.find_element(:xpath, '//*[@id="content"]/div/span/div/div[2]/div/div/div[1]/div/div[3]/button[1]/span/span').click
#４番目のボタンをおす
sleep(15)

i = 0    #ここからswipe画面
while i < 121
  like_button = driver.find_element(:class_name, 'recsGamepad__button--like')
  like_button.click
  i += 1
end
#上限までlikeボタンをおす

sleep(3)
driver.quit
