require 'ruby_gntp'

class Safit < Thor
  desc "alert", "send alert to growl"
  def alert(message)
    GNTP.notify \
      :app_name => "GrowlAlert",
      :title    => "Alert",
      :text     => message
  end
end
