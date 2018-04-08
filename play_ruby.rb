require 'json'
require 'pry'
require 'securerandom'
require 'rexml/document'
require 'prime'
#素数
require 'abbrev'
#与えられた文字列の短縮形を生成してくれる
require 'pp'
#出力結果を自動で改行してくれる
require 'timeout'
require 'etc'
require 'rubygems'

ruby_data = {
  "num" => 1,
  "string" => "abc",
  "array" => [1, 2, 3],
  "hash" => {"key1" => "value1", "key2" => "value2"}
}

json_data = ruby_data.to_json
#rubyのハッシュをJSON形式に変える

ruby_result = JSON.parse(json_data)
#JSON形式をrubyのハッシュ形式に変える(パースする)

json_result = ruby_result.to_json
#rubyのハッシュをJSON形式に変える

puts  json_result

puts SecureRandom.hex(8)
#securerandomライブラリでランダムな文字列を作成

Prime.each(50) do |prime|
  p prime
end
#Primeクラスは素数全体を表す

p Prime.instance

prime_instance = Prime.instance
p Prime.prime_division(12)

pp Abbrev.abbrev(["ruby"])

# i = 0
# Timeout.timeout(0.00000001){
#   while true do
#     i += 1
#   end
# }
# ↑わざとtimeout関数でtimeoutエラーを出させる実装

p Etc.getlogin
#unixのログイン名を返す

p Etc.confstr(Etc::CS_PATH)

pp Etc.uname
#unameメソッド とは　少なくとも :sysname, :nodename, :release, :version, :machine の 5 つのキーを持つ Hash を返す

p Gem.dir
#gemがインストールされているディレクトリを返す

p Gem.path
