require 'json'
require 'pry'
require 'securerandom'

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
