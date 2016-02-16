require 'twilio-ruby'

# alternatively, you can preconfigure the client like so
Twilio.configure do |config|
  config.account_sid = 'ACfdf94685a049ca46499266aaa5bf0d31'
  config.auth_token = 'a7d46f9b1fdae738eee5b8c0b55ee688'
end

# and then you can create a new client without parameters
@client = Twilio::REST::Client.new
