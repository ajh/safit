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

require 'configliere'
require 'pathname'

module Safit
  # This is kinda a bummer that configliere defines a 'Settings' method when this
  # is loaded.

  # defaults
  Settings({
  })

  rc_path = Pathname.new(ENV["HOME"]).join('.safitrc')
  rc_path.file? and Settings.read(rc_path.to_s)
end

# vim: fdm=marker
