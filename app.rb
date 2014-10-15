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


post "/" do
  @song = RapGenius.search_by_lyrics(params[:song]).first
  erb :"index"
end
