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
