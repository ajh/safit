# LICENSE:{{{
# safit - a command line notification utility
# Copyright (C) 2013  Andrew Hartford
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.
#}}}

require 'ruby_gntp'

module Safit
  module Gntp
    class << self
      def notify(message)
        ::GNTP.notify \
          :app_name => "Stick a fork in it",
          :host     => Settings['gntp.host'],
          :passwd   => Settings['gntp.passwd'],
          :text     => message
      end
    end
  end
end

# vim: fdm=marker
