

class SlackNotification
  attr_reader :web_hook, :channel, :message

  def initialize(web_hook, channel, message)
    @web_hook = web_hook
    @channel = channel
    @message = message
  end

  def post_to_slack
    HTTParty.post(
      webhook_url,
      body: {
        channel: channel.to_s,
        username: Current.user&.name.presence || "Unkwown User",
        text: message,
        icon_emoji: ":construction_worker:"
      }.to_json,
      headers: {
        "Content-Type" => "application/json"
      }
    )
  end
end
