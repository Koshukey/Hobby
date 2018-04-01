require 'slack-ruby-bot'

class PongBot < SlackRubyBot::Bot
  command 'fucking' do |client, data, match|
    client.say(text:'BITCH', channel:data.channel)
    client.say(text:'shit', channel:data.channel)
  end
end

SlackRubyBot::Client.logger.level = Logger::WARN
PongBot.run
