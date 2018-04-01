require 'slack-ruby-bot'

class PongBot < SlackRubyBot::Bot
  command 'fucking' do |client, data, match|
    client.say(text:'BITCH', channel:data.channel)
    client.say(text:'shit', channel:data.channel)
  end
end

SlackRubyBot::Client.logger.level = Logger::WARN
PongBot.run

# class Weather < SlackRubyBot::Bot
#   match /^How is the weather in (?<location>\w*)\?$/ do |client, data, match|
#     client.say(channel: data.channel, text: "The weather in #{match[:location]} is nice.")
#   end
# end
#
# # SlackRubyBot::Client.logger.level = Logger::WARN
# Weather.run
