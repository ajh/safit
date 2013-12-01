# Intro
     ____  _   _      _               __            _      _         _ _
    / ___|| |_(_) ___| | __   __ _   / _| ___  _ __| | __ (_)_ __   (_) |_
    \___ \| __| |/ __| |/ /  / _` | | |_ / _ \| '__| |/ / | | '_ \  | | __|
     ___) | |_| | (__|   <  | (_| | |  _| (_) | |  |   <  | | | | | | | |_
    |____/ \__|_|\___|_|\_\  \__,_| |_|  \___/|_|  |_|\_\ |_|_| |_| |_|\__|


safit is short for (S)tick (a) (f)ork (i)n i(t).

safit is a command line utility to send notifications. It can be used to
notify when a long running command is finished for example.

# Usage

There are two ways to use this.

## notify

  $ safit notify MESSAGE

this will send MESSAGE to growl.

  $ long_running_job.sh; safit notify done

this will send "done" to growl when long_running_job.sh is done.

## exec

  $ safit exec sleep 5

this will send a notification when the `/bin/sleep` command is
finished.
