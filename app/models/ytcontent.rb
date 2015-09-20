class Ytcontent < ActiveRecord::Base
require 'httparty'
require "erb"
include ERB::Util



def self.search query
q = Rack::Utils.escape query

logger.warn(q)

response = HTTParty.get('https://www.googleapis.com/youtube/v3/search?part=snippet&maxResults=15&q='+q+'&key=AIzaSyApcibyTcv-gbqE1Kubk5nzdKmsN3Nf07Y', :verify => false)
response = JSON.parse(response.body)
return response["items"]
end


def self.video_details id
response = HTTParty.get('https://www.googleapis.com/youtube/v3/videos?part=snippet%2CContentDetails&id='+id+'&key=AIzaSyApcibyTcv-gbqE1Kubk5nzdKmsN3Nf07Y', :verify => false)
return response.body
end

end
