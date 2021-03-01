# Write your code here
require 'net/http'
require 'open-uri'
require 'json'

class GetRequester

    attr_reader :string_url

    def initialize(string_url)
        @string_url = string_url
    end

    def get_response_body #seems consistent so far for GET requests and responses
        uri = URI.parse(string_url)
        response = Net::HTTP.get_response(uri)
        response.body
    end

    def parse_json
        data = JSON.parse(self.get_response_body)
    end
    #in this case, @parse is purely for open-uri and for json
end    