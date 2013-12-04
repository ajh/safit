# Intro
     ____  _   _      _               __            _      _         _ _
    / ___|| |_(_) ___| | __   __ _   / _| ___  _ __| | __ (_)_ __   (_) |_
    \___ \| __| |/ __| |/ /  / _` | | |_ / _ \| '__| |/ / | | '_ \  | | __|
     ___) | |_| | (__|   <  | (_| | |  _| (_) | |  |   <  | | | | | | | |_
    |____/ \__|_|\___|_|\_\  \__,_| |_|  \___/|_|  |_|\_\ |_|_| |_| |_|\__|


safit is a command line utility to send notifications. It can be used to
notify when a long running command is finished for example. Because when
your command is fully baked, its time to stick a fork in it.

safit is roughly short for (S)tick (a) (f)ork (i)n i(t).

# Installation

I'd be nice if this could be distributed as a stand alone binary or
something. But since it's not...

   $ gem install safit

Then run like:

   $ safit notify "does this work?"

If using rvm, this is a nice way to make the executable available
globally (with rvm version 1.20.7):

  $ rvm wrapper
  $ rvm wrapper ruby-1.9.3@whatever --no-prefix safit
   
# Usage

There are two ways to use this.

## notify

  $ safit notify MESSAGE

This will send MESSAGE to growl.

  $ long_running_job.sh; safit notify done

This will send "done" to growl when long_running_job.sh is done.

## exec

  $ safit exec sleep 5

this will send a notification when the `/bin/sleep` command is
finished.

# Config

Growl should work without any configuration if running on the mac with
growl installed.

For sending growl notifications to a mac from a remote host, some
configuration is required. This can be done with a `~/.safitrc` file which is
in yaml format. Here's an example

    # in ~/.safitrc
    gntp:
      host: 'your_host_name'
      passwd: 'your_growl_password'

See [Growl and safit HOWTO](https://github.com/ajh/safit/wiki/Growl-and-safit-HOWTO) for more info and tips.

# TODO

* Look into using os x notification center directly
