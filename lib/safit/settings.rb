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
