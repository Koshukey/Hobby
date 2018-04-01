require 'net/http'
require 'uri'
require 'rexml/document'

shinjyuku = "Y055"
shibuya = "Y030"
kitijyoji = "Y100"
omotesando = "Y035"
shimokitazawa = "Y070"

def  choose_restaurant(area)
  url = URI.parse(URI.escape("http://webservice.recruit.co.jp/hotpepper/gourmet/v1/?key=b0f1540b8d641f96&middle_area=#{area}&free_drink=1&special=LU0004&count=20"))
  res = Net::HTTP.start(url.host, url.port){|http|
    http.get(url.path + "?" + url.query);
  }
  doc = REXML::Document.new(res.body)
  doc.elements.each('results/shop/') {|i|puts i.elements['name'].text}
end


def exception
   puts "入力された値は無効な値です"
end

line   = "---------------------------"


while true do
  puts line
  puts "エリア別レストランを紹介するアプリケーションです"
  puts "エリアを選んで数字を入力してください"
  puts line
  puts "[0]新宿"
  puts "[1]渋谷"
  puts "[2]吉祥寺・荻窪・三鷹"
  puts "[3]原宿・青山・表参道"
  puts "[4]下北沢・代々木上原"
  puts line
  input = gets.to_i
  if input == 0
    choose_restaurant(shinjyuku)
  elsif input == 1
    choose_restaurant(shibuya)
  elsif input == 2
    choose_restaurant(kitijyoji)
  elsif input == 3
    choose_restaurant(omotesando)
  elsif input == 4
    choose_restaurant(shimokitazawa)
  else
    exception
  end
end
