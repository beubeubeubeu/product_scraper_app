# TO DO understand how to secure a GET request... and secure current request
# Maybe https is sufficient ?

class DiffbotQueryService

  require "net/http"
  require "erb"
  require "json"
  require "uri"
  include ERB::Util

  ENDPOINT = "https://api.diffbot.com/v3/product?"
  TOKEN = ENV["DIFFBOT_TOKEN"]

  def get_response(user_url)
    uri = URI(ENDPOINT + '&url=' + user_url + '&token=' + TOKEN)
    puts uri
    binding pry
    result = Net::HTTP.get(uri)
    return result
  end

  def format_response(content)

  end

end
