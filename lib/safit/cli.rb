require_relative 'gntp'

module Safit
  class Cli < Thor
    desc "alert", "send alert to growl"
    def alert(message)
      Safit::Gntp.notify message
    end
  end
end
