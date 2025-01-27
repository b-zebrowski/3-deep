# This is a single line comment, you should not see the link to https://github.com/b-zebrowski/2-deep

=begin
Now lets check a multi-line comment, you should not see a link to https://github.com/b-zebrowski/2-deep
=end

require 'net/http'
require 'uri'

# Function to fetch the content of a URL
def fetch_url(url)
  uri = URI.parse(url)
  response = Net::HTTP.get_response(uri) # Perform the GET request

  if response.is_a?(Net::HTTPSuccess)
    puts "Response Body:\n\n#{response.body}"
  else
    puts "Failed to fetch the URL. HTTP Status: #{response.code} - #{response.message}"
  end
end

# Specify the URL
url = "https://github.com/b-zebrowski/2-deep" # this line you should see pointing towards 2-deep

puts "Fetching URL: #{url}\n\n"
fetch_url(url)

# Specify the URL
url = "https://github.com/b-zebrowski/2-deep@123456" # this line should not show up as it ties back to a specific tag

puts "Fetching URL: #{url}\n\n"
fetch_url(url)
