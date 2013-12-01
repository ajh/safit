require 'ruby_gntp'

module Safit
  module Gntp
    class << self
      def notify(message)
        ::GNTP.notify \
          :app_name => "Stick a fork in it",
          :text     => message
      end
    end
  end
end
