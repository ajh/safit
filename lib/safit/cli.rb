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

require_relative 'gntp'

module Safit
  class Cli < Thor
    desc "notify", "send notification to growl"
    def notify(message)
      Safit::Gntp.notify message
    end

    desc "exec", "run command send alert"
    def exec(*command)
      cmd = command.join(' ')

      Kernel.fork do
        Process.exec cmd
      end

      Process.wait
      Safit::Gntp.notify $?.success? ? "DONE: #{cmd}" : "FAIL: #{cmd}"
      exit $?.exitstatus
    end
  end
end

# vim: fdm=marker
