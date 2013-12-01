require_relative 'gntp'

module Safit
  class Cli < Thor
    desc "alert", "send alert to growl"
    def alert(message)
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
