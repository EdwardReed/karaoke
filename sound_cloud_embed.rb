require "soundcloud"

class SoundCloudEmbed

  @client = SoundCloud.new(:client_id => "574890a343cf134640276eaca91ddd47")

  def self.embed(url)
    new_uri = @client.get('/resolve', url: url).uri

       %{<iframe width="100%" height="100%" scrolling="no" frameborder="no" src="https://w.soundcloud.com/player/?url=#{new_uri}&amp;auto_play=true&amp;hide_related=true&amp;show_comments=false&amp;show_user=false&amp;show_reposts=false&amp;visual=true"></iframe>}
  end

end
