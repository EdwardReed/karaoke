# app.rb
require "sinatra"

require "dotenv"
Dotenv.load

require "rapgenius"
require "video_info"

require "./sound_cloud_embed"



get "/" do
  erb :"index"
end


post "/play" do
  puts params
  @song = params["song"]
  puts RapGenius.search_by_lyrics(@song).first
  @song = RapGenius.search_by_lyrics().first
end
