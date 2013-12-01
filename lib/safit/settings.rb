require 'configliere'
require 'erb'
require 'pathname'
require 'yaml'

module Safit
  # This is kinda a bummer that configliere defines a 'Settings' method when this
  # is loaded.

  # defaults
  Settings \
    :gntp => {
      :host => nil,
      :passwd => nil,
    }

  # try to load ~/.safitrc
  rc_path = Pathname.new(ENV["HOME"]).join('.safitrc')
  if rc_path.file?
    erb = ERB.new rc_path.read
    empty_binding = BasicObject.instance_eval { binding }
    yaml = erb.result empty_binding

    settings = YAML.load yaml

    Settings settings
  end
end
