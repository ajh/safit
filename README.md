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

# Prerequisites

* ruby version >= 1.9
* growl version >= 1.3

# Installation

I'd be nice if this could be distributed as a stand alone binary or
something. But since it's not...

    $ gem install safit

Then run like:

    $ safit

This should send growl a message saying "done".

If using rvm, this is a nice way to make the executable available
globally (with rvm version 1.20.7):

    $ rvm wrapper ruby-1.9.3@whatever --no-prefix safit

# Usage

There are three ways to use this.

## With default message

    $ safit

This will send the message "done" to growl.

## With custom message

    $ safit notify MESSAGE

This will send MESSAGE to growl. A good use is for something like this:

    $ long_running_job.sh; safit notify "long running job is done"

This will send the message to growl when long\_running\_job.sh is done.

## Exec

    $ safit exec sleep 5

This will send a notification when the `/bin/sleep` command is
finished.

*A caveat* If using the rvm wrapper, a command that also uses rvm
probably won't work because it'll be run under a modified rvm
environment.

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
